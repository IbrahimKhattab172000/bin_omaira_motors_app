import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AboutUsItem extends StatelessWidget {
  final String imagePath;
  final String text;
  const AboutUsItem({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              Utils.getAssetPNGPath(imagePath),
              height: 20.height,
              width: 20.width,
              color: AppColors.primary,
            ),
            SizedBox(width: 14.width),
            AppText(
              title: text.tr(),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.primary,
            ),
          ],
        ),
        SizedBox(height: 14.height),
        AppText(
          title: "lorem".tr(),
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.darkGray.withOpacity(0.7),
        ),
      ],
    );
  }
}
