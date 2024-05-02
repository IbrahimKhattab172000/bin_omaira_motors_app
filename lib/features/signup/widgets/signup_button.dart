import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/kian_routes.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: "signup".tr(),
      onTap: () {
        // RouteUtils.navigateTo(
        //   const SuccessView(
        //     title: "successfully_registered",
        //     subtitle: "successfully_registered_subtitle",
        //     imagePath: "successfully_registered",
        //     buttonTitle: "continue",
        //   ),
        // );
        CustomNavigator.push(Routes.SUCCESSREGISTER);
      },
      titleFontSize: 14,
    );
  }
}
