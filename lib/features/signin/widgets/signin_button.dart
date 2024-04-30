import 'package:bin_omaira_motors/features/signin/view/signin_view.dart';
import 'package:bin_omaira_motors/helpers/routes.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: "signin".tr(),
      onTap: () {
        RouteUtils.navigateTo(const SigninView());
      },
      titleFontSize: 14,
    );
  }
}
