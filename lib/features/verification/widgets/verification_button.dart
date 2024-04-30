import 'package:bin_omaira_motors/features/new_password/view/new_password_view.dart';
import 'package:bin_omaira_motors/helpers/routes.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class VerificationButton extends StatelessWidget {
  const VerificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: "confirm".tr(),
      onTap: () {
        RouteUtils.navigateTo(const NewPasswordView());
      },
      titleFontSize: 14,
    );
  }
}
