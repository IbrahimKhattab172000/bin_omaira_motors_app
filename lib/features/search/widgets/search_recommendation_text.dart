import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SearchRecommendationText extends StatelessWidget {
  const SearchRecommendationText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppText(
        title: "recommendations".tr(),
        color: AppColors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
