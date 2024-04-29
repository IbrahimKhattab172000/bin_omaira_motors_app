import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WelcomeImageWithInfo extends StatelessWidget {
  const WelcomeImageWithInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          alignment: Alignment.center,
          Utils.getAssetPNGPath("background_car"),
          fit: BoxFit.fill,
          height: 320.height,
          width: 328.width,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            style: TextStyle(
              color: AppColors.white,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: "Say hello ",
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: "to your next awesome vehicle",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          softWrap: true,
        ),
        SizedBox(height: 12.height),
        AppText(title: "welcome_subtitle".tr()),
      ],
    );
  }
}
