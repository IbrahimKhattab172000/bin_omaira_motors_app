import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/kian_routes.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OndoardingNextButton extends StatelessWidget {
  const OndoardingNextButton({
    super.key,
    required this.isLast,
    required this.boardController,
  });

  final bool isLast;
  final PageController boardController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppButton(
        title: "next".tr(),
        color: AppColors.primary,
        onTap: () {
          if (isLast) {
            // RouteUtils.navigateTo(const LoginView());
            CustomNavigator.push(Routes.SIGNIN);
          } else {
            boardController.nextPage(
              duration: const Duration(
                milliseconds: 750,
              ),
              curve: Curves.fastOutSlowIn,
            );
          }
        },
      ),
    );
  }
}
