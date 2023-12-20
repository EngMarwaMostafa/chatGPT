import 'package:chatgpt_task/core/consts/app_colors.dart';
import 'package:chatgpt_task/core/consts/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final BoxDecoration? decoration;
  final void Function()? onTap;
  final String? title;

  const CustomButton(
      {this.width,
      this.height,
      this.decoration,
      this.onTap,
      Key? key,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          width: displayWidth(context) * 0.9,
          height: displayHeight(context) * 0.06,
          decoration: BoxDecoration(
              color: AppColors.dotsColor,
              borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.zero,
          child: Center(
            child: Text(
              title!,
              style: GoogleFonts.raleway(
                  fontSize: displayWidth(context) * 0.04,
                  fontWeight: FontWeight.w700,
                  color: AppColors.fontColor),
            ),
          ),
        ).animate().fadeIn(curve: Curves.easeOut, duration: 300.milliseconds));
  }
}
