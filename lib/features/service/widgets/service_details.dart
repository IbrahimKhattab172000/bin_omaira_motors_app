import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
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
                AppText(
                  title: "${"service".tr()} 1",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              ],
            ),
            SizedBox(height: 14.height),
            AppText(
              title: "lorem_extra".tr(),
              fontSize: 14,
              height: 24,
              maxLines: 8,
              fontWeight: FontWeight.w400,
              color: AppColors.darkGray.withOpacity(0.8),
            ),
          ],
        ),
      ],
    );
  }
}
