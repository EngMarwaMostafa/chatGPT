import 'dart:convert';

import 'package:chatgpt_task/core/consts/app_colors.dart';
import 'package:chatgpt_task/core/consts/images_assets_consts.dart';
import 'package:chatgpt_task/core/consts/size_helper.dart';
import 'package:chatgpt_task/core/services/api_key.dart';
import 'package:chatgpt_task/test.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class StartConversationView extends StatefulWidget {
  const StartConversationView({Key? key}) : super(key: key);

  @override
  State<StartConversationView> createState() => _StartConversationViewState();
}

class _StartConversationViewState extends State<StartConversationView> {
  final List<Message> _messages = [];

  final TextEditingController _textEditingController = TextEditingController();

  Future<String> sendMessageToChatGpt(String message) async {
    Uri uri = Uri.parse("https://api.openai.com/v1/chat/completions");

    Map<String, dynamic> body = {
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "user", "content": message}
      ],
      "max_tokens": 500,
    };

    final response = await http.post(
      uri,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${APIKey.apiKey}",
      },
      body: json.encode(body),
    );

    print(response.body);

    Map<String, dynamic> parsedReponse = json.decode(response.body);

    String reply = parsedReponse['choices'][0]['message']['content'];

    return reply;
  }

  void onSendMessage() async {
    Message message = Message(text: _textEditingController.text, isMe: true);

    _textEditingController.clear();

    setState(() {
      _messages.insert(0, message);
    });

    String response = await sendMessageToChatGpt(message.text);

    Message chatGpt = Message(text: response, isMe: false);

    setState(() {
      _messages.insert(0, chatGpt);
    });
  }

  Widget _buildResponse(Response response)
  {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          crossAxisAlignment:
          response.isGPT ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              response.isGPT ?  'GPT':'You',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.greenAccent),
            ),
            Text(response.text,style: TextStyle(color: Colors.greenAccent),),
          ],
        ),
      ),
    );
  }
  Widget _buildMessage(Message message)
  {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          crossAxisAlignment:
          message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 100,
              height: 50,
              color: Colors.orange,
              child:    Text(message.text,style: TextStyle(color: Colors.red),)
            )

          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: displayWidth(context) * 0.05,
                top: displayHeight(context) * 0.08,
                // bottom: displayHeight(context) * 0.01
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.fontColor,
                    size: 15,
                  ),
                  SizedBox(
                    width: displayWidth(context) * 0.03,
                  ),
                  Text(
                    'Back',
                    style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: displayWidth(context) * 0.04,
                            color: AppColors.fontColor)),
                  ),
                  SizedBox(
                    width: displayWidth(context) * 0.68,
                  ),
                  Container(
                    width: displayWidth(context) * 0.06,
                    height: displayHeight(context) * 0.03,
                    child: Image.asset(ImagesAssetsConstants.splashImage),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildMessage(_messages[index]);
                },
              ),
            ),
            Container(
              width: displayWidth(context)*0.9,
              height:displayHeight(context)*0.07,
              decoration:  BoxDecoration(
                color: AppColors.dotsColor,
                borderRadius: const BorderRadius.only(
                    topLeft:  Radius.circular(8),
                    topRight:  Radius.circular(8),
                    bottomLeft:  Radius.circular(8),
                  ),
                ),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  hintText: 'Type a message...',
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.red,
              ),
              onPressed: onSendMessage,
            ),
          ],
        ));
  }
}
class Message {
  final String text;
  final bool isMe;

  Message({required this.text, required this.isMe});
}
class Response {
  final String text;
  final bool isGPT;

  Response({required this.text, required this.isGPT});
}