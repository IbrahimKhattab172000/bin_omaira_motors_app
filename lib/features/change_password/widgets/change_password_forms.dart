import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChangePasswordForms extends StatefulWidget {
  const ChangePasswordForms({
    super.key,
  });

  @override
  State<ChangePasswordForms> createState() => _ChangePasswordFormsState();
}

class _ChangePasswordFormsState extends State<ChangePasswordForms> {
  bool isPasswordSecure = true;
  bool isConfirmPasswordSecure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          inputDecorationLable: "new_password".tr(),
          hint: 'new_password'.tr(),
          secure: isPasswordSecure,
          fillColor: AppColors.white,
          textColor: AppColors.darkGray,
          trailing: InkWell(
            onTap: () {
              setState(() {
                isPasswordSecure = !isPasswordSecure;
              });
            },
            child: Icon(
              isPasswordSecure
                  ? Icons.remove_red_eye
                  : Icons.remove_red_eye_outlined,
              color: AppColors.grey,
            ),
          ),
        ),
        SizedBox(height: 16.height),
        AppTextField(
          inputDecorationLable: "confirm_new_password".tr(),
          hint: 'confirm_new_password'.tr(),
          fillColor: AppColors.white,
          textColor: AppColors.darkGray,
          secure: isConfirmPasswordSecure,
          trailing: InkWell(
            onTap: () {
              setState(() {
                isConfirmPasswordSecure = !isConfirmPasswordSecure;
              });
            },
            child: Icon(
              isConfirmPasswordSecure
                  ? Icons.remove_red_eye
                  : Icons.remove_red_eye_outlined,
              color: AppColors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
