// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PurchaseCarCard extends StatelessWidget {
  const PurchaseCarCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        // width: 242.width,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColors.grey,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  title: "car_number".tr() + ":  " + "97364",
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkGray,
                ),
                Container(
                  width: 86.width,
                  height: 32.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.deepLightPrimary,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const AppText(
                        title: "99,900",
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                      AppText(
                        title: "sar".tr(),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.height),
            Image.asset(
              Utils.getAssetPNGPath("dummy_car"),
              height: 96.height,
              width: 194.width,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12.height),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.height,
                  width: 40.width,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.deepLightPrimary,
                  ),
                  child: Image.asset(
                    Utils.getAssetPNGPath("tesla"),
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppText(
                      title: "Tesla 2019 Model 3",
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 2.height),
                    const AppText(
                      title: "2022",
                      color: AppColors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
