import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176.height,
      // width: 328.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              Utils.getAssetPNGPath("home_best_card"),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          const Positioned(
            top: 24,
            left: 24,
            child: AppText(
              title: "The best car",
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Positioned(
            top: 60,
            left: 24,
            child: AppText(
              title: "Here are some of the\nbest cars this year",
              color: AppColors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
