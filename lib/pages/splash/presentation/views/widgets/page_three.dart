import 'package:chatgpt_task/core/consts/app_colors.dart';
import 'package:chatgpt_task/core/consts/images_assets_consts.dart';
import 'package:chatgpt_task/core/consts/size_helper.dart';
import 'package:chatgpt_task/pages/dashboard/presentation/views/dashboard_view.dart';
import 'package:chatgpt_task/pages/splash/presentation/views/widgets/custom_button.dart';
import 'package:chatgpt_task/pages/splash/presentation/views/widgets/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Center(
          child: Column(children: [
            SizedBox(
              height: displayHeight(context) * 0.10,
            ),
            Container(
              width: displayWidth(context) * 0.06,
              height: displayHeight(context) * 0.03,
              child: Image.asset(ImagesAssetsConstants.splashImage),
            ),
            SizedBox(
              height: displayHeight(context) * 0.02,
            ),
            Center(
              child: Text('Welcome to',
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        fontSize: displayWidth(context) * .09,
                        fontWeight: FontWeight.w700,
                        color: AppColors.fontColor,
                      ))),
            ),
            SizedBox(
              height: displayHeight(context) * 0.001,
            ),
            Center(
              child: Text('ChatGPT',
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        fontSize: displayWidth(context) * .09,
                        fontWeight: FontWeight.w700,
                        color: AppColors.fontColor,
                      ))),
            ),
            SizedBox(
              height: displayHeight(context) * 0.02,
            ),
            Center(
              child: Text('Ask anything, get yout answer',
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        fontSize: displayWidth(context) * .04,
                        fontWeight: FontWeight.w600,
                        color: AppColors.fontColor,
                      ))),
            ),
            SizedBox(
              height: displayHeight(context) * 0.08,
            ),
            Container(
              width: displayWidth(context) * 0.05,
              height: displayHeight(context) * 0.02,
              child: Image.asset(ImagesAssetsConstants.limitationsImage),
            ),
            SizedBox(
              height: displayHeight(context) * 0.01,
            ),
            Center(
              child: Text('Limitations',
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        fontSize: displayWidth(context) * .05,
                        fontWeight: FontWeight.w500,
                        color: AppColors.fontColor,
                      ))),
            ),
            SizedBox(
              height: displayHeight(context) * 0.04,
            ),
            const CustomSplash(
                text: 'May occasionally generate\n incorrect information'),
            SizedBox(
              height: displayHeight(context) * 0.02,
            ),
            const CustomSplash(
                text:
                'May occasionally produce harmful\n instructions or biased content'),
            SizedBox(
              height: displayHeight(context) * 0.02,
            ),
            const CustomSplash(
                text: 'Limited knowledge of world and\n events after 2021'),
            SizedBox(height: displayHeight(context)*0.09,),
            CustomButton(
              title: 'Lets Chat',
              onTap: (){
                Get.to(const DashboardView());
              },
            )
          ]),
        ));
  }
}