import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/kian_routes.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarDetailsPurchaseButton extends StatelessWidget {
  const CarDetailsPurchaseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      color: AppColors.primary,
      onTap: () {
        CustomNavigator.push(Routes.PURCHASE);
      },
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      customButtonBody: Row(
        children: [
          SizedBox(
            width: 62.width,
            child: const AppText(
              title: "119.000",
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              overflow: TextOverflow.clip,
            ),
          ),
          SizedBox(width: 8.width),
          AppText(
            title: "sar".tr(),
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
          SizedBox(width: 8.width),
          AppText(
            title: "without_vat".tr(),
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.white,
          ),
          SizedBox(width: 24.width),
          VerticalDivider(
            color: AppColors.white.withOpacity(0.2),
            thickness: 1,
          ),
          SizedBox(width: 24.width),
          AppText(
            title: "purchase".tr(),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.white,
          ),
          SizedBox(width: 8.width),
          const Icon(
            Icons.arrow_forward_ios,
            size: 12,
            color: AppColors.white,
          ),
        ],
      ),
    );
  }
}
