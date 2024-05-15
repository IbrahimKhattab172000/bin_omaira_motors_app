import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/kian_routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:bin_omaira_motors/features/onboarding/models/boarding.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';

class OnboardingItem extends StatelessWidget {
  final BoardingModel model;
  final PageController boardController;
  final int totalScreens;
  final int currentIndex;

  const OnboardingItem({
    Key? key,
    required this.model,
    required this.boardController,
    required this.totalScreens,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            Utils.getAssetPNGPath(model.imagePath),
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 180.height,
          left: 24,
          right: 24,
          child: AppText(
            title: model.title,
            color: AppColors.grey,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        Positioned(
          bottom: 120.height,
          left: 24,
          right: 24,
          child: AppText(
            title: model.body,
            color: AppColors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w300,
            textAlign: TextAlign.center,
            overflow: TextOverflow.clip,
          ),
        ),
        Positioned(
          bottom: 32.height,
          left: 16.height,
          child: SizedBox(
            width: 66.height,
            height: 66.height,
            child: CircularProgressIndicator(
              strokeWidth: 7,
              strokeCap: StrokeCap.round,
              value: (currentIndex + 1) / totalScreens,
              backgroundColor: AppColors.primary.withOpacity(0.4),
              valueColor:
                  const AlwaysStoppedAnimation<Color>(Color(0xff397989)),
            ),
          ),
        ),
        Positioned(
          bottom: 40.height,
          left: 24.height,
          child: InkWell(
            onTap: () {
              if (currentIndex == BoardingModel.boarding.length - 1) {
                // RouteUtils.navigateTo(const WelcomeViewScreen());
                CustomNavigator.push(Routes.WELCOME);
              } else {
                boardController.nextPage(
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.easeIn,
                );
              }
            },
            child: Container(
              height: 50.height,
              width: 50.height,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.white,
                size: 16,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 40.height,
            right: 24.height,
            child: InkWell(
              onTap: () {
                // RouteUtils.navigateTo(const WelcomeViewScreen());
                CustomNavigator.push(Routes.WELCOME);
              },
              child: AppText(
                title: "skip_intro".tr(),
                color: AppColors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            )),
      ],
    );
  }
}
