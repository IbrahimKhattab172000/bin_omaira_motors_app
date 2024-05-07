import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarDetailsReservationElement extends StatelessWidget {
  const CarDetailsReservationElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 4.width),
        AppText(
          title: "reserve_with_only".tr(),
          fontSize: 12,
          color: AppColors.primary,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(width: 4.width),
        SizedBox(
          width: 62.width,
          child: const AppText(
            title: "119.000",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            overflow: TextOverflow.clip,
          ),
        ),
        SizedBox(width: 4.width),
        AppText(
          title: "sar".tr(),
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: AppColors.primary,
        ),
        SizedBox(width: 4.width),
        AppText(
          title: "without_vat".tr(),
          fontSize: 12,
          color: AppColors.primary,
          fontWeight: FontWeight.w300,
        ),
        SizedBox(width: 8.width),
        const Icon(
          Icons.arrow_forward_ios,
          size: 12,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
