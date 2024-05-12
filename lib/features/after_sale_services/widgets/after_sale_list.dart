import 'package:bin_omaira_motors/features/after_sale_services/widgets/after_sale_card.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class AfterSaleList extends StatelessWidget {
  const AfterSaleList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 32.height),
        itemBuilder: (context, index) {
          return const AfterSaleCard();
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.height);
        },
        itemCount: 4,
      ),
    );
  }
}
