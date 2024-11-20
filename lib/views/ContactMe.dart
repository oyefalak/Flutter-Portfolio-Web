import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globles/AppColor.dart';
import 'package:portfolio/globles/app_button.dart';
import 'package:portfolio/helper_class/helper_class.dart';

import '../globles/app_text_style.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
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
                cursorColor: AppColor.white,
                style: AppTextStyles.normalStyle(),
                decoration: buildInputDecoration(
                  hintText: 'Full Name',
                ),
              ),
            ),
            SizedBox(height: 20),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                cursorColor: AppColor.white,
                style: AppTextStyles.normalStyle(),
                decoration: buildInputDecoration(
                  hintText: 'Email Address',
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
                cursorColor: AppColor.white,
                style: AppTextStyles.normalStyle(),
                decoration: buildInputDecoration(
                  hintText: 'Mobile Number',
                ),
              ),
            ),
            SizedBox(height: 20),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                cursorColor: AppColor.white,
                style: AppTextStyles.normalStyle(),
                decoration: buildInputDecoration(
                  hintText: 'Email Subject',
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
                cursorColor: AppColor.white,
                style: AppTextStyles.normalStyle(),
                maxLines: 15,
                decoration: buildInputDecoration(
                  hintText: 'Mobile Number',
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            AppButton.buildMaterialButton(
                buttonName: "Send Button", onTap: () {}),
            SizedBox(height: 30),
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
                      cursorColor: AppColor.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: 'Full Name',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColor.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: 'Email Address',
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
                      cursorColor: AppColor.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: 'Mobile Number',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColor.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: 'Email Subject',
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
                cursorColor: AppColor.white,
                style: AppTextStyles.normalStyle(),
                maxLines: 15,
                decoration: buildInputDecoration(
                  hintText: 'Mobile Number',
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            AppButton.buildMaterialButton(
                buttonName: "Send Button", onTap: () {}),
            SizedBox(height: 30),
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
                      cursorColor: AppColor.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: 'Full Name',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColor.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: 'Email Address',
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
                      cursorColor: AppColor.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: 'Mobile Number',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      cursorColor: AppColor.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                        hintText: 'Email Subject',
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
                cursorColor: AppColor.white,
                style: AppTextStyles.normalStyle(),
                maxLines: 15,
                decoration: buildInputDecoration(
                  hintText: 'Mobile Number',
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            AppButton.buildMaterialButton(
                buttonName: "Send Button", onTap: () {}),
            SizedBox(height: 30),
          ],
        ),
        paddingWidth: size.width * 0.2,
        bgColor: AppColor.bgColor);

  }

  FadeInDown buildContactText() {
    return FadeInDown(
      child: RichText(
        text: TextSpan(
          text: 'Contact',
          style: AppTextStyles.headerTextStyle(fontSize: 30),
          children: [
            TextSpan(
              text: 'Me',
              style: AppTextStyles.headerTextStyle(
                  fontSize: 30, color: AppColor.robinEdgeBlue),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.comfortaaStyle(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: AppColor.bgColor2,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12));
  }
}
