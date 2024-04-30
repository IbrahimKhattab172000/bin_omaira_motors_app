import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SigninForgotPassword extends StatelessWidget {
  const SigninForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppText(title: "forgot_password".tr());
  }
}
