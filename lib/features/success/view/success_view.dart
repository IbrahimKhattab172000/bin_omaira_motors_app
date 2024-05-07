// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import 'package:bin_omaira_motors/features/success/widgets/success_app_bar.dart';
import 'package:bin_omaira_motors/features/success/widgets/success_button.dart';
import 'package:bin_omaira_motors/features/success/widgets/success_image_info.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';

class SuccessView extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String buttonTitle;
  final VoidCallback onTap;
  Color? backGroundColor;
  SuccessView({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.buttonTitle,
    required this.onTap,
    this.backGroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor ?? AppColors.black,
      appBar: SuccessAppBar(backGroundColor: backGroundColor),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 62.height),
              SuccessImageWithInfo(
                title: title,
                subtitle: subtitle,
                imagePath: imagePath,
                backGroundColor: backGroundColor,
              ),
              SizedBox(height: 32.height),
              SuccessButton(
                buttonTitle: buttonTitle,
                onTap: onTap,
                // RouteUtils.navigateTo(const SigninView());
              ),
              SizedBox(height: Utils.bottomDevicePadding),
            ],
          ),
        ),
      ),
    );
  }
}
