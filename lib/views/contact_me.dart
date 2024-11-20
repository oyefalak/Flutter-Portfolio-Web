import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globles/app_colors.dart';
import 'package:portfolio/globles/app_button.dart';
import 'package:portfolio/globles/app_strings.dart';
import 'package:portfolio/helper_class/helper_class.dart';

import 'package:portfolio/globles/app_text_style.dart';
import 'package:portfolio/widget/utils/context_extension.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperClass(
        mobile: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildContactText(),
            const SizedBox(
              height: 40,
            ),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                cursorColor: AppColors.white,
                style: AppTextStyles.normalStyle(),
                decoration: buildInputDecoration(
                  hintText: AppStrings.fullName,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                cursorColor: AppColors.white,
                style: AppTextStyles.normalStyle(),
                decoration: buildInputDecoration(
                  hintText: AppStrings.emailAddress,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                cursorColor: AppColors.white,
                style: AppTextStyles.normalStyle(),
                decoration: buildInputDecoration(
                  hintText: AppStrings.mobileNumber,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                cursorColor: AppColors.white,
                style: AppTextStyles.normalStyle(),
                decoration: buildInputDecoration(
                  hintText: AppStrings.emailSubject,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                cursorColor: AppColors.white,
                style: AppTextStyles.normalStyle(),
                maxLines: 15,
                decoration: buildInputDecoration(
                  hintText: AppStrings.mobileNumber,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            AppButton.buildMaterialButton(buttonName: AppStrings.sendButton, onTap: () {}),
            const SizedBox(height: 30),
          ],
        ),
        tablet: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildContactText(),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: AppStrings.fullName,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: AppStrings.emailAddress,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: AppStrings.mobileNumber,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: AppStrings.emailSubject,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                cursorColor: AppColors.white,
                style: AppTextStyles.normalStyle(),
                maxLines: 15,
                decoration: buildInputDecoration(
                  hintText: AppStrings.mobileNumber,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            AppButton.buildMaterialButton(buttonName: AppStrings.sendButton, onTap: () {}),
            const SizedBox(height: 30),
          ],
        ),
        desktop: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildContactText(),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: AppStrings.fullName,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: AppStrings.emailAddress,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: AppStrings.mobileNumber,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: AppStrings.emailSubject,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                cursorColor: AppColors.white,
                style: AppTextStyles.normalStyle(),
                maxLines: 15,
                decoration: buildInputDecoration(
                  hintText: AppStrings.yourMessage,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            AppButton.buildMaterialButton(buttonName: AppStrings.sendButton, onTap: () {}),
            const SizedBox(height: 30),
          ],
        ),
        paddingWidth: context.width * 0.2,
        bgColor: AppColors.bgColor);
  }

  FadeInDown buildContactText() {
    return FadeInDown(
      child: RichText(
        text: TextSpan(
          text: AppStrings.contact,
          style: AppTextStyles.headerTextStyle(fontSize: 30),
          children: [
            TextSpan(
              text: AppStrings.me,
              style: AppTextStyles.headerTextStyle(fontSize: 30, color: AppColors.robinEdgeBlue),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(hintText: hintText, hintStyle: AppTextStyles.comfortaaStyle(), enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none), focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none), filled: true, fillColor: AppColors.bgColor2, contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12));
  }
}
