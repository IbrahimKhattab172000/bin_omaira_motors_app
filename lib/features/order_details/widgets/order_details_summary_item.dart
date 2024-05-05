import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrderDetailsSummaryItem extends StatelessWidget {
  final String title;
  final String value;
  const OrderDetailsSummaryItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          AppText(
            title: title,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
          const Spacer(),
          AppText(
            title: "$value ${"sar".tr()}",
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
