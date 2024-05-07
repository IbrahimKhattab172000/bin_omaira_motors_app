import 'package:bin_omaira_motors/features/purchase/widgets/purchase_car_details.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/purchase_order_summary.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class PurchaseSummarySubView extends StatelessWidget {
  const PurchaseSummarySubView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PurchaseCarDetails(),
        SizedBox(height: 24.height),
        const PurchaseOrderSummary(),
      ],
    );
  }
}
