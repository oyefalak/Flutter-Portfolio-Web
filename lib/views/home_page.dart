import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/globles/AppColor.dart';
import 'package:portfolio/globles/AppString.dart';
import 'package:portfolio/globles/MyText.dart';
import 'package:portfolio/globles/app_button.dart';
import 'package:portfolio/globles/app_images.dart';
import 'package:portfolio/globles/app_text_style.dart';
import 'package:portfolio/helper_class/helper_class.dart';
import 'package:portfolio/widget/animated_profile.dart';

import 'my_portfolio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  var socialBI;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return HelperClass(
        mobile: Column(
          children: [
            AnimatedProfileWidget(size: 350),
            const SizedBox(
              height: 25,
            ),
            buildProfileInfo(),
          ],
        ),
        tablet: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: buildProfileInfo()),
            AnimatedProfileWidget(),
          ],
        ),
        desktop: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: buildProfileInfo()),
            AnimatedProfileWidget(),
          ],
        ),
        paddingWidth: size.width * 0.1,
        bgColor: AppColor.bgColor);
  }

  Column buildProfileInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            MyText(
              helloHome,
              style: AppTextStyles.montserratStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 15,
            ),
            MyText(
              nameHome,
              style: AppTextStyles.headingStyles(),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                MyText(
                  iamHome,
                  style: AppTextStyles.montserratStyle(color: Colors.lightBlue),
                ),
                AnimatedTextKit(
                  animatedTexts: skillList
                      .map(
                        (skill) =>
                        TyperAnimatedText(
                          skill,
                          textStyle:
                          AppTextStyles.montserratStyle(
                              color: Colors.lightBlue),
                        ),
                  )
                      .toList(),
                  isRepeatingAnimation: true,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            FadeInDown(
              duration: const Duration(milliseconds: 1600),
              child: Text(
                descHome,
                style: AppTextStyles.normalStyle(fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 200),
              child: SizedBox(
                height: 48,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        openNewTab(socialButtons[index].link);
                      },
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            socialBI = index;
                          } else {
                            socialBI = null;
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(550.0),
                      hoverColor: AppColor.themeColor,
                      splashColor: AppColor.lawGreen,
                      child: buildSocialButton(
                          asset: socialButtons[index].imagePath,
                          hover: socialBI == index ? true : false),
                    );
                  },
                  separatorBuilder: (context, child) {
                    return const SizedBox(
                      width: 8,
                    );
                  },
                  itemCount: socialButtons.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            AppButton.buildMaterialButton(
                buttonName: "Downlode CV", onTap: () {
                  openNewTab(resume);
            })
          ],
        ),
      ],
    );
  }
}

Container buildSocialButton({required String asset, required bool hover}) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(color: AppColor.themeColor, width: 1.0),
      color: AppColor.bgColor2,
      shape: BoxShape.circle,
    ),
    padding: const EdgeInsets.all(6),
    child: Image.asset(
      asset,
      width: 10,
      height: 12,
      color: hover ? Colors.white : AppColor.themeColor,
      // fit: BoxFit.fill,
    ),
  );
}
