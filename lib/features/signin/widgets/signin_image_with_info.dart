import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SigninImageWithInfo extends StatelessWidget {
  const SigninImageWithInfo({super.key});

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
        AppText(
          title: "welcome_back".tr(),
          color: AppColors.white,
          fontWeight: FontWeight.w500,
          fontSize: 28,
        ),
        SizedBox(height: 12.height),
        AppText(
          title: "you_have_been_missed".tr(),
          fontSize: 14,
        ),
      ],
    );
  }
}
