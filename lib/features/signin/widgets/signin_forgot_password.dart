import 'package:bin_omaira_motors/features/forgot_password/view/forgot_password_view.dart';
import 'package:bin_omaira_motors/helpers/routes.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SigninForgotPassword extends StatelessWidget {
  const SigninForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        RouteUtils.navigateTo(const ForgotPasswordView());
      },
      child: AppText(
        title: "forgot_password".tr(),
      ),
    );
  }
}