import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PurchasePersonalDetails extends StatelessWidget {
  const PurchasePersonalDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "personal_details".tr(),
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
        SizedBox(height: 24.height),
        AppTextField(
          fillColor: AppColors.white,
          hint: "full_name".tr(),
          trailing: const Icon(
            Icons.person,
            color: AppColors.darkGray,
          ),
        ),
        SizedBox(height: 16.height),
        AppTextField(
          fillColor: AppColors.white,
          hint: "phone_number".tr(),
          trailing: const Icon(
            Icons.phone,
            color: AppColors.darkGray,
          ),
        ),
      ],
    );
  }
}
