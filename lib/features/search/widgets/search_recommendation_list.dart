import 'package:bin_omaira_motors/features/home/widgets/home_recommendation_card.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class SearchRecommendationList extends StatelessWidget {
  const SearchRecommendationList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.height,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const HomeRecommendationCard();
        },
        itemCount: 4,
        separatorBuilder: (context, index) {
          return SizedBox(width: 16.width);
        },
      ),
    );
  }
}
