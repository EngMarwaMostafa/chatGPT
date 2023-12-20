import 'package:chatgpt_task/core/consts/app_colors.dart';
import 'package:chatgpt_task/core/consts/images_assets_consts.dart';
import 'package:chatgpt_task/core/consts/size_helper.dart';
import 'package:chatgpt_task/pages/empty_conversation/presentation/views/emptyConversation_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dashboardColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: displayWidth(context) * 0.05,
                top: displayHeight(context) * 0.08),
            child: Row(
              children: [
                Container(
                    width: displayWidth(context) * 0.05,
                    height: displayHeight(context) * 0.02,
                    child: const Icon(
                      Icons.chat_bubble_outline,
                      color: AppColors.fontColor,
                    )),
                SizedBox(
                  width: displayWidth(context) * 0.05,
                ),
                InkWell(
                  onTap: () {
                    Get.to(const EmptyConversationView());
                  },
                  child: Text(
                    'New Chat',
                    style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: displayWidth(context) * 0.04,
                            color: AppColors.fontColor)),
                  ),
                ),
                SizedBox(
                  width: displayWidth(context) * 0.6,
                ),
                Container(
                  width: displayWidth(context) * 0.02,
                  height: displayHeight(context) * 0.01,
                  child: Image.asset(ImagesAssetsConstants.arrowImage),
                ),
              ],
            ),
          ),
          SizedBox(height: displayHeight(context) * 0.4),
          const Divider(
            thickness: 0.5,
            color: AppColors.fontColor,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: displayWidth(context) * 0.04,
                top: displayHeight(context) * 0.02),
            child: Row(
              children: [
                Container(
                    width: displayWidth(context) * 0.05,
                    height: displayHeight(context) * 0.02,
                    child: Image.asset(ImagesAssetsConstants.deleteImage)),
                SizedBox(
                  width: displayWidth(context) * 0.04,
                ),
                Text(
                  'Clear Conversations',
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          fontSize: displayWidth(context) * 0.04,
                          fontWeight: FontWeight.w500,
                          color: AppColors.fontColor)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: displayWidth(context) * 0.04,
                top: displayHeight(context) * 0.05),
            child: Row(
              children: [
                Container(
                    width: displayWidth(context) * 0.05,
                    height: displayHeight(context) * 0.02,
                    child: Image.asset(ImagesAssetsConstants.personImage)),
                SizedBox(
                  width: displayWidth(context) * 0.04,
                ),
                InkWell(
                  onTap: () async {
                    const url = 'www.openapi.com';
                    final Uri uri = Uri(scheme: 'https', host: url);
                    if (!await launchUrl(uri,
                        mode: LaunchMode.externalApplication)) {
                      throw 'Can not lanuch url';
                    }
                  },
                  child: Text(
                    'Upgrade to Plus',
                    style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            fontSize: displayWidth(context) * 0.04,
                            fontWeight: FontWeight.w500,
                            color: AppColors.fontColor)),
                  ),
                ),
                SizedBox(
                  width: displayWidth(context) * 0.4,
                ),
                Container(
                  width: displayWidth(context) * 0.1,
                  height: displayHeight(context) * 0.02,
                  decoration: BoxDecoration(
                      color: AppColors.newContColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      'New',
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.newColor,
                              fontSize: displayWidth(context) * 0.03)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: displayWidth(context) * 0.04,
                top: displayHeight(context) * 0.05),
            child: Row(
              children: [
                Container(
                    width: displayWidth(context) * 0.05,
                    height: displayHeight(context) * 0.02,
                    child: Image.asset(ImagesAssetsConstants.lightImage)),
                SizedBox(
                  width: displayWidth(context) * 0.04,
                ),
                Text(
                  'Light mode',
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          fontSize: displayWidth(context) * 0.04,
                          fontWeight: FontWeight.w500,
                          color: AppColors.fontColor)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: displayWidth(context) * 0.04,
                top: displayHeight(context) * 0.05),
            child: Row(
              children: [
                Container(
                    width: displayWidth(context) * 0.05,
                    height: displayHeight(context) * 0.02,
                    child: Image.asset(ImagesAssetsConstants.logoutImage)),
                SizedBox(
                  width: displayWidth(context) * 0.04,
                ),
                Text(
                  'Updates&FAQ',
                  style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          fontSize: displayWidth(context) * 0.04,
                          fontWeight: FontWeight.w500,
                          color: AppColors.fontColor)),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: displayWidth(context) * 0.04,
                  top: displayHeight(context) * 0.05),
              child: Row(
                children: [
                  Container(
                      width: displayWidth(context) * 0.05,
                      height: displayHeight(context) * 0.02,
                      child: Image.asset(
                        ImagesAssetsConstants.outImage,
                        color: AppColors.outColor,
                      )),
                  SizedBox(
                    width: displayWidth(context) * 0.04,
                  ),
                  Text(
                    'Logout',
                    style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                            fontSize: displayWidth(context) * 0.04,
                            fontWeight: FontWeight.w500,
                            color: AppColors.outColor)),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
