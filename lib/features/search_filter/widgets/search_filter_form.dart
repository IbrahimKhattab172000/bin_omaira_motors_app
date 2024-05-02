import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SearchFilterForms extends StatelessWidget {
  const SearchFilterForms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppTextField(
            fillColor: AppColors.white,
            borderColor: AppColors.grey,
            cursorColor: AppColors.grey,
            textColor: AppColors.lightBlack,
            label: "model".tr(),
          ),
          SizedBox(height: 24.height),
          AppTextField(
            fillColor: AppColors.white,
            borderColor: AppColors.grey,
            cursorColor: AppColors.grey,
            textColor: AppColors.lightBlack,
            label: "year".tr(),
          ),
          SizedBox(height: 24.height),
          AppTextField(
            fillColor: AppColors.white,
            borderColor: AppColors.grey,
            cursorColor: AppColors.grey,
            textColor: AppColors.lightBlack,
            label: "color".tr(),
            leading: Container(
              height: 24.height,
              width: 24.height,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: AppColors.darkGray,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
