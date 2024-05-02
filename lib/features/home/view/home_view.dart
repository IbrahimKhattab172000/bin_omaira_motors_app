import 'package:bin_omaira_motors/features/home/widgets/home_best_card.dart';
import 'package:bin_omaira_motors/features/home/widgets/home_hello_with_notification_bell.dart';
import 'package:bin_omaira_motors/features/home/widgets/home_recommendation_bar.dart';
import 'package:bin_omaira_motors/features/home/widgets/home_recommendation_list.dart';
import 'package:bin_omaira_motors/features/home/widgets/home_search_with_filter_bar.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        appbarHeight: 24,
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHelloWithNotificationBell(),
            SizedBox(height: 24.height),
            const HomeSearchWithFilterBar(),
            SizedBox(height: 24.height),
            const HomeBestCarCard(),
            SizedBox(height: 32.height),
            const HomeRecommendationsBar(),
            SizedBox(height: 24.height),
            const HomeRecommendationList(),
            SizedBox(height: Utils.bottomDevicePadding),
          ],
        ),
      ),
    );
  }
}
