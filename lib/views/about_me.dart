import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globles/app_colors.dart';
import 'package:portfolio/globles/app_strings.dart';
import 'package:portfolio/globles/app_button.dart';
import 'package:portfolio/globles/app_images.dart';
import 'package:portfolio/globles/app_text_style.dart';
import 'package:portfolio/helper_class/helper_class.dart';
import 'package:portfolio/widget/utils/context_extension.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperClass(
      mobile: Column(
        children: [
          buildProfilePicture(),
          const SizedBox(
            height: 35,
          ),
          buildAboutMeContent(),
        ],
      ),
      tablet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          const SizedBox(
            width: 25,
          ),
          Expanded(child: buildAboutMeContent())
        ],
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          const SizedBox(
            width: 25,
          ),
          Expanded(child: buildAboutMeContent())
        ],
      ),
      paddingWidth: context.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Container(
        width: 450,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(AppImages.profile2)),
          borderRadius: const BorderRadius.all(Radius.circular(450)),
          // color: Colors.redAccent,
        ),
      ),
    );
  }

  Column buildAboutMeContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1200),
          child: RichText(
            text: TextSpan(
              text: about,
              style: AppTextStyles.headerTextStyle(fontSize: 30),
              children: [
                TextSpan(
                  text: me,
                  style: AppTextStyles.headerTextStyle(fontSize: 30, color: AppColors.themeColor),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          skillTitle,
          style: AppTextStyles.montserratStyle(color: Colors.white),
        ),
        const SizedBox(height: 8.0),
        Text(
          descAbout,
          maxLines: 10,
          style: AppTextStyles.normalStyle(fontSize: 12),
        ),
        const SizedBox(height: 15.0),
        AppButton.buildMaterialButton(
          buttonName: AppStrings.readMore,
          onTap: () {},
        )
      ],
    );
  }
}
