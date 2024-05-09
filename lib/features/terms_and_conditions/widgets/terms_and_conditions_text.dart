import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppText(
      title: "lorem".tr(),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      textAlign: TextAlign.center,
      maxLines: 10,
      color: AppColors.black,
    );
  }
}
