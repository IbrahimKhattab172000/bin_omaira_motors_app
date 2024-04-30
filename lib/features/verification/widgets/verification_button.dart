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
      onTap: () {},
      titleFontSize: 14,
    );
  }
}
