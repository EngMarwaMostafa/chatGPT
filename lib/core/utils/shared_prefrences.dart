/*
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferences{
  Future<void> saveChatHistory(
  List<String>chatHistory) async {
    SharedPreferences preferences=await SharedPreferences.getInstance();
    List<String>? chatHistory= preferences.getStringList('chat_history');
    return chatHistory ?? [];
  }

  Future<List<String>> getChatHistory() async {
    SharedPreferences preferences=await SharedPreferences.getInstance();
    List<String>? chatHistory= preferences.getStringList('chat_history');
    return chatHistory ?? [];
  }
}

 */