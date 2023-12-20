import 'package:chatgpt_task/core/consts/app_colors.dart';
import 'package:chatgpt_task/core/consts/images_assets_consts.dart';
import 'package:chatgpt_task/core/consts/size_helper.dart';
import 'package:chatgpt_task/pages/get_answer/presentation/views/get_answer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyConversationView extends StatelessWidget {
  const EmptyConversationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: displayWidth(context) * 0.01,
                  top: displayHeight(context) * 0.08,
                  bottom: displayHeight(context)*0.01
              ),
              child: Row(
                children: [
                   IconButton(
                    color: AppColors.fontColor,
                   onPressed: () {
                      Get.back();
                   }, icon: const Icon(Icons.arrow_back_ios_new_rounded,size: 15,),
                  ),
                  SizedBox(
                    width: displayWidth(context) * 0.01,
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

            SizedBox(
              height: displayHeight(context) * 0.4,
            ),
            InkWell(
              onTap: (){
                Get.to(const GetAnswerView());
              },
              child: Center(
                  child: Text(
                'Ask anything, get yout answer',
                style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: displayWidth(context) * 0.04,
                        color: AppColors.dividerColor)),
              )),
            ),
            SizedBox(
              height: displayHeight(context) * 0.3,
            ),
            Container
              (
              // frame14GEG (3:610)
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 48),
              padding: const EdgeInsets.fromLTRB(
                8,
                8,
                8,
                8,
              ),
              width: displayWidth(context) * 0.9,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0x51ffffff)),
                color: const Color(0x19ffffff),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rectangle8ZjA (3:611)
                    margin: const EdgeInsets.fromLTRB(0, 0, 282, 0),
                    width: 1,
                    height: 28,
                    decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                  ),
                  Container(
                    width: displayWidth(context)*0.08,
                  height: displayHeight(context)*.04,
                    decoration: BoxDecoration(
                        color: AppColors.dotsColor,
                        borderRadius: BorderRadius.circular(4)),
                   child: Center(
                     child: Container(
                       width: displayWidth(context)*0.05,
                         height: displayHeight(context)*0.02,
                         child: Image.asset(ImagesAssetsConstants.sendImage)),
                   ),
                   ),

                ],
              ),
            ),
          ],
        ));
  }
}
