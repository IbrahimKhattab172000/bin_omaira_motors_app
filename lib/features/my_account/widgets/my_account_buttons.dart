import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyAccountButtons extends StatelessWidget {
  const MyAccountButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          title: "save_changes".tr(),
          onTap: () {},
          titleFontSize: 14,
          color: AppColors.primary.withOpacity(0.1),
          titleColor: AppColors.primary,
        ),
        SizedBox(height: 16.height),
        AppButton.outline(
          title: "delete_account".tr(),
          onTap: () {},
          borderColor: AppColors.red,
          titleColor: AppColors.red,
        ),
      ],
    );
  }
}
