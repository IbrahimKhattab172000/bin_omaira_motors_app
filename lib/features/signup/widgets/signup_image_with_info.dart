import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SignupImageWithInfo extends StatelessWidget {
  const SignupImageWithInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          alignment: Alignment.center,
          Utils.getAssetPNGPath("background_car"),
          height: 174.height,
          width: 328.width,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 30.height),
        AppText(
          title: "signup".tr(),
          color: AppColors.white,
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
        // SizedBox(height: 12.height),
        // AppText(
        //   title: "you_have_been_missed".tr(),
        //   fontSize: 14,
        // ),
      ],
    );
  }
}
