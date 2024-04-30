import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ForgotPasswordTextInfo extends StatelessWidget {
  const ForgotPasswordTextInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText(
          title: "forgot_password".tr(),
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        SizedBox(height: 20.height),
        AppText(
          title: "we_will_send_a_code".tr(),
        ),
      ],
    );
  }
}
