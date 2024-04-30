import 'package:bin_omaira_motors/features/verification/view/verification_view.dart';
import 'package:bin_omaira_motors/helpers/routes.dart';
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
        RouteUtils.navigateTo(const VerificationView());
      },
      titleFontSize: 14,
    );
  }
}
