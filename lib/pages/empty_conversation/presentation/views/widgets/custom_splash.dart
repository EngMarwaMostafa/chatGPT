
import 'package:flutter/material.dart';
import '../../../../../core/consts/app_colors.dart';
import '../../../../../core/consts/size_helper.dart';

class CustomSplash extends StatelessWidget {
  const CustomSplash({Key? key,required this.text}) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: displayWidth(context) * 0.9,
        height: displayHeight(context) * 0.08,
        decoration: BoxDecoration(
        color:AppColors.editColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child:Container(
          width: displayWidth(context)*0.7,
           height:displayHeight(context)*0.05 ,
            child:
        Align(
          alignment: Alignment.center,
          child: Text(
            text,
          maxLines: 2,
                 textAlign: TextAlign.center,
            style:TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: displayWidth(context)*0.04,
              color: AppColors.fontColor
            ),
          ),
        )
        ),
      ),
    );
  }
}
