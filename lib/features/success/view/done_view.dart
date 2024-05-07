import 'package:bin_omaira_motors/features/success/widgets/success_app_bar.dart';
import 'package:bin_omaira_motors/features/success/widgets/success_button.dart';
import 'package:bin_omaira_motors/features/success/widgets/success_image_info.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:flutter/material.dart';

class SuccessView extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String buttonTitle;
  final VoidCallback onTap;
  const SuccessView({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.buttonTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: const SuccessAppBar(),
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
