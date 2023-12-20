import 'package:chatgpt_task/core/consts/app_colors.dart';
import 'package:chatgpt_task/core/consts/images_assets_consts.dart';
import 'package:chatgpt_task/core/consts/size_helper.dart';
import 'package:chatgpt_task/pages/splash/presentation/views/widgets/custom_button.dart';
import 'package:chatgpt_task/pages/splash/presentation/views/widgets/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Center(
          child: Column(
            children: [
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
                child: Image.asset(ImagesAssetsConstants.exampleImage),
              ),
              SizedBox(
                height: displayHeight(context) * 0.01,
              ),
              Center(
                child: Text('Examples',
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
                  text: '“Explain quantum computing in\n simple terms”'),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              const CustomSplash(
                  text:
                      '“Got any creative ideas for a 10\n year old’s birthday?”'),
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              const CustomSplash(
                  text: '“How do I make an HTTP request\n in Javascript?”'),
              SizedBox(height: displayHeight(context)*0.09,),
              const CustomButton(
                title: 'Next',
              )
            ],
          ),
        ));
  }
}
