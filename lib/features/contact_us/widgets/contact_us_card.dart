import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ContactUsCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String value;
  const ContactUsCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Utils.getAssetPNGPath(imagePath),
          height: 20.height,
          width: 20.width,
          color: AppColors.primary,
        ),
        SizedBox(height: 14.height),
        AppText(
          title: title.tr(),
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.black,
        ),
        SizedBox(height: 14.height),
        AppText(
          title: value,
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: AppColors.darkGray.withOpacity(0.7),
        ),
      ],
    );
  }
}
