import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PurchaseRequiredUpload extends StatelessWidget {
  const PurchaseRequiredUpload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.height),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            title: "required_uploads".tr(),
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
          SizedBox(height: 24.height),
          AppTextField(
            onTap: () {},
            fillColor: AppColors.white,
            borderColor: AppColors.grey.withOpacity(0.9),
            hint: "${"bank_transfer_receipt".tr()}*",
            trailing: const Icon(Icons.upload_file_outlined),
          ),
          SizedBox(height: 16.height),
          AppTextField(
            onTap: () {},
            fillColor: AppColors.white,
            borderColor: AppColors.grey.withOpacity(0.9),
            hint: "${"id_photo".tr()}*",
            trailing: const Icon(Icons.upload_file_outlined),
          ),
          SizedBox(height: 16.height),
          AppTextField(
            onTap: () {},
            fillColor: AppColors.white,
            borderColor: AppColors.grey.withOpacity(0.9),
            hint: "${"driving_license".tr()}*",
            trailing: const Icon(Icons.upload_file_outlined),
          ),
          SizedBox(height: 16.height),
          AppTextField(
            onTap: () {},
            fillColor: AppColors.white,
            borderColor: AppColors.grey.withOpacity(0.9),
            hint: "${"agency_file".tr()}*",
            trailing: const Icon(Icons.upload_file_outlined),
          ),
        ],
      ),
    );
  }
}
