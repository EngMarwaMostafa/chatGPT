import 'package:chatgpt_task/core/consts/images_assets_consts.dart';
import 'package:chatgpt_task/pages/splash/presentation/views/widgets/custom_splash.dart';
import 'package:chatgpt_task/pages/splash/presentation/views/widgets/page_one.dart';
import 'package:chatgpt_task/pages/splash/presentation/views/widgets/page_three.dart';
import 'package:chatgpt_task/pages/splash/presentation/views/widgets/page_two.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/consts/app_colors.dart';
import '../../../../core/consts/size_helper.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<SplashView> {
  // declare and initizlize the page controller
  final PageController _pageController = PageController(initialPage: 0);

  // the index of the current page
  int _activePage = 0;

  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: displayHeight(context) * 0.3,
              child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                          _pages.length,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: InkWell(
                                  onTap: () {
                                    _pageController.animateToPage(index,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn);
                                  },
                                 child: Container(
                                    width:  28,
                                    height:  2,
                                    decoration:  BoxDecoration (
                                      borderRadius:  BorderRadius.circular(12),
                                        color: _activePage == index
                                        ? AppColors.dotsColor
                                        : AppColors.inActiveColor
                                    ),
                                ),
                              )))))
          )],
      ),
    );
  }
}




