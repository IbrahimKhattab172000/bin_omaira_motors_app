import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ContactUsForms extends StatelessWidget {
  const ContactUsForms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppText(
            title: "contact_us_form".tr(),
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
          SizedBox(height: 24.height),
          AppTextField(
            // inputDecorationLable: "name".tr(),
            fillColor: AppColors.white,
            hint: 'name'.tr(),
            trailing: const Icon(
              Icons.person,
              color: AppColors.darkGray,
            ),
          ),
          SizedBox(height: 24.height),
          AppTextField(
            // inputDecorationLable: "phone_number".tr(),
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
          SizedBox(height: 24.height),
          AppTextField(
            // inputDecorationLable: "your_message".tr(),
            fillColor: AppColors.white,
            hint: 'your_message'.tr(),
            maxLines: 5,
            // trailing: const Icon(
            //   Icons.mail,
            //   color: AppColors.darkGray,
            // ),
          ),
        ],
      ),
    );
  }
}
