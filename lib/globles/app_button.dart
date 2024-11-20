import 'package:flutter/material.dart';
import 'package:portfolio/globles/app_colors.dart';
import 'package:portfolio/globles/app_text_style.dart';

class AppButton {
  static MaterialButton buildMaterialButton({
    required String buttonName,
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.all(16),
      onPressed: () {
        onTap();
      },
      color: AppColors.themeColor,
      height: 60,
      minWidth: 120,
      child: Text(
        buttonName,
        style: AppTextStyles.montserratStyle(color: AppColors.bgColor, fontSize: 15),
      ),
    );
  }
}
