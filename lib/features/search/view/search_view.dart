import 'package:bin_omaira_motors/features/search/widgets/search_app_bar.dart';
import 'package:bin_omaira_motors/features/search/widgets/search_recommendation_list.dart';
import 'package:bin_omaira_motors/features/search/widgets/search_recommendation_text.dart';
import 'package:bin_omaira_motors/features/search/widgets/search_white_body.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: const SearchAppBar(),
      body: SearchWhiteBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32.height),
            const SearchRecommendationText(),
            SizedBox(height: 24.height),
            const SearchRecommendationList(),
          ],
        ),
      ),
    );
  }
}
