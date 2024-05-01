import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class VerificationTextInfo extends StatelessWidget {
  const VerificationTextInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "verification_code".tr(),
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
        SizedBox(height: 20.height),
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            style: const TextStyle(
              color: AppColors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            children: [
              TextSpan(
                text: "please_enter_verification_code_sent_to_number".tr(),
              ),
              const TextSpan(
                text: " ",
              ),
              const TextSpan(
                text: "+966 000 000 000",
              ),
            ],
          ),
          softWrap: true,
        ),
      ],
    );
  }
}
