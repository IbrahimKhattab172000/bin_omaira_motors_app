import 'package:bin_omaira_motors/features/purchase/widgets/puchase_summary_item.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PurchaseOrderSummary extends StatelessWidget {
  const PurchaseOrderSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            title: "order_summary".tr(),
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
          SizedBox(height: 24.height),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.grey,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                PuchaseSummaryItem(
                  title: "car_price".tr(),
                  value: "99,900",
                ),
                const Divider(
                  thickness: 1,
                  color: AppColors.grey,
                ),
                PuchaseSummaryItem(
                  title: "value_added_tax".tr(),
                  value: "100",
                ),
                const Divider(
                  thickness: 1,
                  color: AppColors.grey,
                ),
                PuchaseSummaryItem(
                  title: "registration_fee".tr(),
                  value: "100",
                ),
                const Divider(
                  thickness: 1,
                  color: AppColors.grey,
                ),
                PuchaseSummaryItem(
                  title: "delivery_fee".tr(),
                  value: "60",
                ),
                const Divider(
                  thickness: 1,
                  color: AppColors.grey,
                ),
                PuchaseSummaryItem(
                  title: "total_price".tr(),
                  value: "115,800",
                ),
                const Divider(
                  thickness: 1,
                  color: AppColors.grey,
                ),
                PuchaseSummaryItem(
                  title: "deposit".tr(),
                  value: "80,000",
                ),
                const Divider(
                  thickness: 1,
                  color: AppColors.grey,
                ),
                PuchaseSummaryItem(
                  title: "amount_remaining".tr(),
                  value: "35,800",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
