import 'package:bin_omaira_motors/features/search_filter/widgets/search_filter_car_type_card.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class SearchFilterCarTypeList extends StatelessWidget {
  const SearchFilterCarTypeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 106.height,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const SearchFilterCarTypeCard();
        },
        itemCount: 4,
        separatorBuilder: (context, index) {
          return SizedBox(width: 16.width);
        },
      ),
    );
  }
}
