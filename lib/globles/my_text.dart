import 'package:flutter/material.dart';
import 'package:portfolio/globles/app_text_style.dart';

class MyText extends StatelessWidget {
  const MyText(this.text, {super.key, this.style});

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      style: style ?? AppTextStyles.headerTextStyle(), // Assign default style here
    );
  }
}
