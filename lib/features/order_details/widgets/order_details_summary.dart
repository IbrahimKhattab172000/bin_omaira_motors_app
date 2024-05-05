import 'package:bin_omaira_motors/features/order_details/widgets/order_details_summary_item.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrderDetailsSummary extends StatelessWidget {
  const OrderDetailsSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          OrderDetailsSummaryItem(
            title: "car_price".tr(),
            value: "99,900",
          ),
          const Divider(
            thickness: 1,
            color: AppColors.grey,
          ),
          OrderDetailsSummaryItem(
            title: "value_added_tax".tr(),
            value: "100",
          ),
          const Divider(
            thickness: 1,
            color: AppColors.grey,
          ),
          OrderDetailsSummaryItem(
            title: "registration_fee".tr(),
            value: "100",
          ),
          const Divider(
            thickness: 1,
            color: AppColors.grey,
          ),
          OrderDetailsSummaryItem(
            title: "delivery_fee".tr(),
            value: "60",
          ),
          const Divider(
            thickness: 1,
            color: AppColors.grey,
          ),
          OrderDetailsSummaryItem(
            title: "total_price".tr(),
            value: "115,800",
          ),
          const Divider(
            thickness: 1,
            color: AppColors.grey,
          ),
          OrderDetailsSummaryItem(
            title: "deposit".tr(),
            value: "80,000",
          ),
          const Divider(
            thickness: 1,
            color: AppColors.grey,
          ),
          OrderDetailsSummaryItem(
            title: "amount_remaining".tr(),
            value: "35,800",
          ),
        ],
      ),
    );
  }
}
