import 'package:bin_omaira_motors/features/purchase/widgets/purchase_personal_details.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/purchase_shipping_details.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class PurchaseShippingSubView extends StatelessWidget {
  const PurchaseShippingSubView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PurchasePersonalDetails(),
              SizedBox(height: 32.height),
              const PurchaseShippingDetails(),
            ],
          ),
        ),
      ],
    );
  }
}
