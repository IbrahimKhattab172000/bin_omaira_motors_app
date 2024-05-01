import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NewPasswordForms extends StatefulWidget {
  const NewPasswordForms({
    super.key,
  });

  @override
  State<NewPasswordForms> createState() => _NewPasswordFormsState();
}

class _NewPasswordFormsState extends State<NewPasswordForms> {
  bool isPasswordSecure = true;
  bool isConfirmPasswordSecure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          inputDecorationLable: "password".tr(),
          hint: 'password'.tr(),
          secure: isPasswordSecure,
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
          inputDecorationLable: "confirm_password".tr(),
          hint: 'confirm_password'.tr(),
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
