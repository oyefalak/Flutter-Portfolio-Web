import 'package:flutter/material.dart';
import 'package:portfolio/globles/app_colors.dart';
import 'package:portfolio/globles/app_text_style.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({
    Key? key,
  }) : super(key: key);

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
          child: Text("Created with ❤️ by Mohammad Shabbir Rajput using Flutter", style: AppTextStyles.montserratStyle(fontSize: 22)),
        ));
  }
}
