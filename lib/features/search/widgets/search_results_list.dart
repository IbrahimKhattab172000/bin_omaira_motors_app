import 'package:bin_omaira_motors/features/home/widgets/home_recommendation_card.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        // shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const HomeRecommendationCard();
        },
        itemCount: 4,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.height);
        },
      ),
    );
  }
}
