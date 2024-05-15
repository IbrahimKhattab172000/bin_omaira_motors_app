import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/kian_routes.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SignupHaveAccount extends StatelessWidget {
  const SignupHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(title: "have_account".tr()),
        SizedBox(width: 8.width),
        InkWell(
          onTap: () {
            // RouteUtils.navigateTo(const SigninView());
            CustomNavigator.push(Routes.SIGNIN);
          },
          child: AppText(
            title: "login".tr(),
          ),
        ),
      ],
    );
  }
}
