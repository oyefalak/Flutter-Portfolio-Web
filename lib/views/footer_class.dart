import 'package:flutter/material.dart';
import 'package:portfolio/globles/app_colors.dart';
import 'package:portfolio/globles/app_strings.dart';
import 'package:portfolio/globles/app_text_style.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: AppColors.bgColor2,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Center(
        child: Text(
          AppStrings.createdWithLoveByShabbirRajputUsingFlutter,
          style: AppTextStyles.montserratStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
