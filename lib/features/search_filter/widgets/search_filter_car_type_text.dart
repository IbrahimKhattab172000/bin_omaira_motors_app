import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SerachFilterCarTypeText extends StatelessWidget {
  const SerachFilterCarTypeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppText(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      title: "car_type".tr(),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
      fontSize: 16,
    );
  }
}
