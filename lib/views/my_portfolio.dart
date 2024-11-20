import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globles/app_strings.dart';
import 'package:portfolio/globles/app_images.dart';
import 'package:portfolio/helper_class/helper_class.dart';
import 'dart:js' as js;
import 'package:portfolio/globles/app_colors.dart';
import 'package:portfolio/globles/app_text_style.dart';
import 'package:portfolio/widget/utils/context_extension.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  int? isHover;
  Matrix4 onHoverEffect = Matrix4.identity()..scale(1.0);

  @override
  Widget build(BuildContext context) {
    return HelperClass(
        mobile: Column(
          children: [
            buildProjectText(),
            const SizedBox(
              height: 60,
            ),
            buildProjectGridView(crossAxisCount: 1),
          ],
        ),
        tablet: Column(
          children: [
            buildProjectText(),
            const SizedBox(
              height: 60,
            ),
            buildProjectGridView(),
          ],
        ),
        desktop: Column(
          children: [
            buildProjectText(),
            const SizedBox(
              height: 60,
            ),
            buildProjectGridView(crossAxisCount: workList.length == 4 ? 2 : 3),
          ],
        ),
        paddingWidth: context.width * 0.1,
        bgColor: AppColors.bgColor2);
  }

  GridView buildProjectGridView({int crossAxisCount = 2}) {
    return GridView.builder(
      itemCount: workList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount, mainAxisExtent: 270, mainAxisSpacing: 24, crossAxisSpacing: 24),
      itemBuilder: (context, index) {
        var item = workList[index];
        return FadeInUpBig(
          duration: const Duration(microseconds: 1600),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                if (value) {
                  isHover = index;
                } else {
                  isHover = null;
                }
              });
            },
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(item.imagePath), fit: BoxFit.fill),
                  ),
                ),
                Visibility(
                  visible: isHover == index,
                  child: AnimatedContainer(
                    curve: Curves.easeIn,
                    duration: const Duration(microseconds: 200),
                    transform: index == isHover ? onHoverEffect : null,
                    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        AppColors.themeColor.withOpacity(1),
                        AppColors.themeColor.withOpacity(0.9),
                        AppColors.themeColor.withOpacity(0.8),
                        AppColors.themeColor.withOpacity(0.6),
                      ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                    ),
                    child: Column(
                      children: [
                        Text(
                          item.title,
                          style: AppTextStyles.montserratStyle(fontSize: 20, color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          item.desc,
                          style: AppTextStyles.normalStyle(color: Colors.black87),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CircleAvatar(
                            maxRadius: 25,
                            backgroundColor: AppColors.white,
                            child: InkWell(
                              onTap: () {
                                openNewTab(item.link);
                              },
                              child: Image.asset(
                                AppImages.share,
                                width: 25,
                                height: 25,
                                fit: BoxFit.fill,
                              ),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  FadeInDown buildProjectText() {
    return FadeInDown(
      child: RichText(
        text: TextSpan(
          text: 'Latest ',
          style: AppTextStyles.headerTextStyle(fontSize: 30),
          children: [
            TextSpan(
              text: 'Projects',
              style: AppTextStyles.headerTextStyle(fontSize: 30, color: AppColors.robinEdgeBlue),
            ),
          ],
        ),
      ),
    );
  }
}

void openNewTab(String url) {
  js.context.callMethod('open', [url]);
}
