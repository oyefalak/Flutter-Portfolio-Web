import 'package:flutter/material.dart';
import 'package:portfolio/globles/app_colors.dart';
import 'package:portfolio/globles/app_strings.dart';

import 'package:portfolio/globles/my_text.dart';
import 'package:portfolio/globles/app_text_style.dart';

class MobileMenu extends StatefulWidget {
  const MobileMenu({super.key});

  @override
  State<MobileMenu> createState() => _MobileMenuState();
}

class _MobileMenuState extends State<MobileMenu> {
  final onMenuHover = Matrix4.identity()..scale(1.0);
  var menuIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(color: AppColors.bgColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    'Menu',
                    style: AppTextStyles.montserratStyle(fontSize: 50),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        size: 40,
                        color: AppColors.bgColor2,
                      ))
                ],
              ),
              ListView.separated(
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
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
                  child: buildNavBarAnimatedContainer(index, menuIndex == index ? true : false),
                ),
                separatorBuilder: (context, child) => const SizedBox(
                  width: 8,
                ),
                itemCount: menuItems.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
              )
            ],
          ),
        ),
      ),
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
        style: AppTextStyles.headerTextStyle(color: hover ? AppColors.themeColor : AppColors.white, fontSize: 40),
      ),
    );
  }
}
