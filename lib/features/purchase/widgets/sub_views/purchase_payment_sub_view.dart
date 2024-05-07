import 'package:bin_omaira_motors/features/purchase/widgets/purchase_deposite.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/purchase_required_uploads.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class PurchasePaymentSubView extends StatelessWidget {
  const PurchasePaymentSubView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PurchaseDeposite(),
        SizedBox(height: 32.height),
        const PurchaseRequiredUpload(),
      ],
    );
  }
}
