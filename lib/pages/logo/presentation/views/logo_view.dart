import 'dart:async';

import 'package:chatgpt_task/core/consts/app_colors.dart';
import 'package:chatgpt_task/core/consts/images_assets_consts.dart';
import 'package:chatgpt_task/core/consts/size_helper.dart';
import 'package:chatgpt_task/pages/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LogoView extends StatefulWidget {
  const LogoView({Key? key}) : super(key: key);

  @override
  State<LogoView> createState() => _LogoViewState();
}

class _LogoViewState extends State<LogoView>  with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    controller =
    AnimationController(vsync: this, duration: const Duration(seconds: 2))
      ..forward();
    animation =
        CurvedAnimation(parent: controller, curve: Curves.linearToEaseOut);
    Timer(const Duration(seconds: 3), () {
      Get.to(const SplashView());
    });
    super.initState();
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          backgroundColor: AppColors.mainColor,
          body: Center(
            child: Column(
              children: [
                SizedBox(height: displayHeight(context) * 0.4,),
                Container(
                    width: displayWidth(context) * 0.5,
                    height: displayHeight(context) * 0.2,
                    child: Image.asset(ImagesAssetsConstants.appImage)),
              ],
            ),
          )
      );
    }
  }
