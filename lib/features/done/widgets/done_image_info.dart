import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DoneImageWithInfo extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const DoneImageWithInfo({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          alignment: Alignment.center,
          Utils.getAssetPNGPath(imagePath),
          fit: BoxFit.fill,
          height: 136.height,
          width: 136.width,
        ),
        SizedBox(height: 92.height),
        AppText(
          title: title.tr(),
          textAlign: TextAlign.center,
          color: AppColors.white,
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
        SizedBox(height: 24.height),
        AppText(
          title: subtitle.tr(),
          textAlign: TextAlign.center,
          color: AppColors.grey,
          fontWeight: FontWeight.w300,
          fontSize: 16,
        ),
      ],
    );
  }
}
