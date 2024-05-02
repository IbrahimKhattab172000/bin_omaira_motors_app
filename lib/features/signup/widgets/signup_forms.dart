import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_country_picker.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SignupForms extends StatefulWidget {
  const SignupForms({super.key});

  @override
  State<SignupForms> createState() => _SignupFormsState();
}

class _SignupFormsState extends State<SignupForms> {
  bool isPasswordSecure = true;
  bool isConfirmPasswordSecure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          inputDecorationLable: "name".tr(),
          hint: 'name'.tr(),
          trailing: const Icon(
            Icons.person,
            color: AppColors.grey,
          ),
        ),
        SizedBox(height: 24.height),
        AppTextField(
          inputDecorationLable: "email".tr(),
          hint: 'email'.tr(),
          trailing: const Icon(
            Icons.email,
            color: AppColors.grey,
          ),
        ),
        SizedBox(height: 24.height),
        AppTextField(
          inputDecorationLable: "phone_number".tr(),
          hint: "phone_number".tr(),
          leading: AppCountryPicker(
            onSelect: (String country, String code) {},
          ),
          trailing: Container(
            height: 24.height,
            width: 24.width,
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              Utils.getAssetPNGPath("phone"),
              color: AppColors.grey,
            ),
          ),
        ),
        SizedBox(height: 16.height),
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