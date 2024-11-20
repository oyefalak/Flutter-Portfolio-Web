import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/globles/AppColor.dart';
import 'package:portfolio/globles/AppString.dart';
import 'package:portfolio/globles/MyText.dart';
import 'package:portfolio/globles/app_text_style.dart';
import 'package:portfolio/views/ContactMe.dart';
import 'package:portfolio/views/FooterClass.dart';
import 'package:portfolio/views/about_me.dart';
import 'package:portfolio/views/home_page.dart';
import 'package:portfolio/views/my_portfolio.dart';
import 'package:portfolio/views/my_service.dart';

import 'MobileMenu.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  final onMenuHover = Matrix4.identity()..scale(1.0);

  final screenList = const [
    HomePage(),
    AboutMe(),
    MyService(),
    MyPortfolio(),
    ContactUs(),
    FooterClass()
  ];

  var menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColor.themeColor),
          child: const Icon(
            Icons.arrow_upward,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        backgroundColor: AppColor.bgColor,
        toolbarHeight: 90,
        elevation: 0,
        title: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 768) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  portfolio,
                  style: AppTextStyles.headerTextStyle(),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const Mobilemenu()));
                  },
                  icon: const Icon(
                    Icons.menu_sharp,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
              ],
            );
          } else {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: (size.width * 0.08)),
              child: Row(
                children: [
                  MyText(
                    portfolio,
                    style: AppTextStyles.headerTextStyle(),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 30,
                    child: ListView.separated(
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(100),
                        onHover: (value) {
                          setState(() {
                            if (value) {
                              menuIndex = index;
                            } else {
                              menuIndex = 0;
                            }
                          });
                        },
                        child: buildNavBarAnimatedContainer(
                            index, menuIndex == index ? true : false),
                      ),
                      separatorBuilder: (context, child) => const SizedBox(
                        width: 8,
                      ),
                      itemCount: menuItems.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  const SizedBox(width: 10,)
                ],
              ),
            );
          }
        }),
      ),
      body: ListView.builder(
          itemCount: screenList.length,
          itemBuilder: (context,index){
        return screenList[index];
      }),
    );
  }

  buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 200),
      alignment: Alignment.center,
      width: hover ? 100 : 95,
      transform: hover ? onMenuHover : null,
      child: Text(
        menuItems[index],
        style: AppTextStyles.headerTextStyle(
            color: hover ? AppColor.themeColor : AppColor.white, fontSize: 20),
      ),
    );
  }
}
