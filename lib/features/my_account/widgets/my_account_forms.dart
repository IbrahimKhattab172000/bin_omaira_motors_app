import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyAccountForms extends StatelessWidget {
  const MyAccountForms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          inputDecorationLable: "name".tr(),
          fillColor: AppColors.white,
          hint: 'name'.tr(),
          trailing: const Icon(
            Icons.person,
            color: AppColors.darkGray,
          ),
        ),
        SizedBox(height: 24.height),
        AppTextField(
          inputDecorationLable: "email".tr(),
          fillColor: AppColors.white,
          hint: 'email'.tr(),
          trailing: const Icon(
            Icons.email,
            color: AppColors.darkGray,
          ),
        ),
        SizedBox(height: 24.height),
        AppTextField(
          inputDecorationLable: "phone_number".tr(),
          fillColor: AppColors.white,
          hint: "phone_number".tr(),
          trailing: Container(
            height: 24.height,
            width: 24.width,
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              Utils.getAssetPNGPath("phone"),
              color: AppColors.darkGray,
            ),
          ),
        ),
      ],
    );
  }
}
