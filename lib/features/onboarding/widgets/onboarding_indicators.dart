import 'package:bin_omaira_motors/features/onboarding/models/boarding.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingIndicators extends StatelessWidget {
  const OnboardingIndicators({
    super.key,
    required this.boardController,
  });

  final PageController boardController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      axisDirection: Axis.horizontal,
      controller: boardController,
      count: boarding.length,
      textDirection: Utils.isAR ? TextDirection.rtl : TextDirection.ltr,
      effect: const JumpingDotEffect(
        dotHeight: 12,
        dotWidth: 12,
        dotColor: AppColors.lightGray,
        activeDotColor: AppColors.primary,
      ),
    );
  }
}
