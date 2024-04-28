import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppEmptyScreen extends StatelessWidget {
  final String title;
  const AppEmptyScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Utils.getAssetPNGPath("empty_notifications"),
          height: 210.height,
          width: double.infinity,
        ),
        SizedBox(height: 8.height),
        AppText(
          title: title.tr(),
          color: AppColors.darkGray,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        )
      ],
    );
  }
}
