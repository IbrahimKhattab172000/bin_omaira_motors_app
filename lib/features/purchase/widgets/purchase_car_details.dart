import 'package:bin_omaira_motors/features/purchase/widgets/purchase_car_card.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PurchaseCarDetails extends StatelessWidget {
  const PurchaseCarDetails({
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
            title: "car_details".tr(),
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
          SizedBox(height: 24.height),
          const PurchaseCarCard(),
        ],
      ),
    );
  }
}
