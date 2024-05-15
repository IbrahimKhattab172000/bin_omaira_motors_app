import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/kian_routes.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AfterSaleCard extends StatelessWidget {
  const AfterSaleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomNavigator.push(Routes.SERVICE);
      },
      child: Column(
        children: [
          Container(
            // height: 174.height,
            width: 328.width,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppColors.grey,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Utils.getAssetPNGPath("wrench"),
                        height: 20.height,
                        width: 20.width,
                        color: AppColors.primary,
                      ),
                      SizedBox(width: 14.width),
                      const AppText(
                        title: "Service 1",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                  SizedBox(height: 14.height),
                  AppText(
                    title: "lorem".tr(),
                    fontSize: 12,
                    maxLines: 2,
                    height: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkGray.withOpacity(0.8),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
