import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/kian_routes.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SigninNoAccount extends StatelessWidget {
  const SigninNoAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(title: "no_account".tr()),
        SizedBox(width: 8.width),
        InkWell(
          onTap: () {
            // RouteUtils.navigateTo(const SignupView());
            CustomNavigator.push(Routes.SIGNUP);
          },
          child: AppText(
            title: "signup".tr(),
          ),
        ),
      ],
    );
  }
}
