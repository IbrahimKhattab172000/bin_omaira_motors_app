import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AboutUsMainText extends StatelessWidget {
  const AboutUsMainText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppText(
      title: "lorem".tr(),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      textAlign: TextAlign.center,
      color: AppColors.darkGray.withOpacity(0.7),
    );
  }
}
