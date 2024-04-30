import 'package:bin_omaira_motors/features/signup/view/signup_view.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/routes.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

//Don’t have an account? Sign up
class VerificationResendCode extends StatelessWidget {
  const VerificationResendCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(title: "no_code_yet".tr()),
        SizedBox(width: 8.width),
        InkWell(
          onTap: () {
            RouteUtils.navigateTo(const SignupView());
          },
          child: AppText(
            title: "resend_code".tr(),
          ),
        ),
      ],
    );
  }
}
