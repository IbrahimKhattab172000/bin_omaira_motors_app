import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/kian_routes.dart';
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
        // RouteUtils.navigateTo(const NavBarView());
        // RouteUtils.navigateTo(const MainPage());
        CustomNavigator.push(Routes.MAIN);
      },
      titleFontSize: 14,
    );
  }
}
