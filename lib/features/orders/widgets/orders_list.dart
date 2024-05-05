import 'package:bin_omaira_motors/features/orders/widgets/orders_card.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const OrdersCard(type: "declined");
      },
      itemCount: 4,
      separatorBuilder: (context, index) {
        return SizedBox(height: 16.height);
      },
    );
  }
}
