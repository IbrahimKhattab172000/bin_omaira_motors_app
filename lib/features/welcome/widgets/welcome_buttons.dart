import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          title: "create_new_account".tr(),
          onTap: () {},
        ),
        SizedBox(height: 16.height),
        AppButton(
          title: "signin".tr(),
          onTap: () {},
          color: AppColors.signInButtonColor,
          titleFontSize: 14,
        ),
      ],
    );
  }
}
