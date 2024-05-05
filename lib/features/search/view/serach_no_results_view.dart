import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SerachNoResultsWidget extends StatelessWidget {
  const SerachNoResultsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          alignment: Alignment.center,
          Utils.getAssetPNGPath("search_no_result"),
          fit: BoxFit.fill,
          height: 130.height,
          width: 140.width,
        ),
        SizedBox(height: 42.height),
        AppText(
          title: "no_vehicles_found".tr(),
          textAlign: TextAlign.center,
          color: AppColors.black,
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
        SizedBox(height: 24.height),
        AppText(
          title: "please_try_to_search_another_vehicles".tr(),
          textAlign: TextAlign.center,
          color: AppColors.darkGray,
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
      ],
    );
  }
}
