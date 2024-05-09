import 'package:bin_omaira_motors/features/our_branches/widgets/our_branches_card.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class OurBranchesList extends StatelessWidget {
  const OurBranchesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 32.height),
        itemBuilder: (context, index) {
          return const OurBranchesCard();
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.height);
        },
        itemCount: 4,
      ),
    );
  }
}
