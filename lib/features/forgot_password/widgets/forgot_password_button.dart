import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/kian_routes.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: "send_verifaction_code".tr(),
      onTap: () {
        // RouteUtils.navigateTo(const VerificationView());
        CustomNavigator.push(Routes.VERIFICATION);
      },
      titleFontSize: 14,
    );
  }
}
