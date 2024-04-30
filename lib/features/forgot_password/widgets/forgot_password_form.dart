import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_country_picker.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextField(
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
          color: AppColors.lightGray,
        ),
      ),
    );
  }
}
