// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';

class SuccessImageWithInfo extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  Color? backGroundColor;

  SuccessImageWithInfo({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.backGroundColor,
  }) : super(key: key);

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
          color: backGroundColor != null ? AppColors.black : AppColors.white,
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
        SizedBox(height: 24.height),
        AppText(
          title: subtitle.tr(),
          textAlign: TextAlign.center,
          color: backGroundColor != null ? AppColors.darkGray : AppColors.grey,
          fontWeight: FontWeight.w300,
          fontSize: 16,
        ),
      ],
    );
  }
}
