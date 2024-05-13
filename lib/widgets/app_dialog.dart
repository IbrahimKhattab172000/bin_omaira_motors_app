// ignore_for_file: sort_child_properties_last

import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  final Widget child;
  final bool dismissible;
  final String title;
  final bool hasButton;
  final String buttonTitle;
  final VoidCallback buttonOnTap;

  const AppDialog({
    super.key,
    required this.child,
    required this.dismissible,
    required this.title,
    required this.hasButton,
    required this.buttonTitle,
    required this.buttonOnTap,
  });

  static Future<dynamic> show({
    required Widget child,
    String? title,
    bool dismissible = true,
    bool hasButton = true,
    String? buttonTitle,
    VoidCallback? buttonOnTap,
  }) {
    return showDialog(
      context: CustomNavigator.context,
      barrierDismissible: false,
      // barrierColor: AppColors.secondary.withOpacity(0.7),
      builder: (context) {
        return AppDialog(
          child: child,
          dismissible: dismissible,
          title: title ?? "no_data".tr(),
          hasButton: hasButton,
          buttonTitle: buttonTitle ?? "login".tr(),
          buttonOnTap: buttonOnTap ??
              () {
                // RouteUtils.navigateAndPopAll(const LoginView());
              },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Material(
      color: Colors.transparent,
      child: UnconstrainedBox(
        constrainedAxis: Axis.horizontal,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: null,
            // border: Border.all(width: 4, color: AppColors.white),
          ),
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: keyboardHeight,
          ),
          child: Column(
            children: [
              Container(
                height: 60.height,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      textAlign: TextAlign.start,
                      title: title,
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    if (dismissible)
                      UnconstrainedBox(
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            height: 32.width,
                            width: 32.width,
                            margin: const EdgeInsets.symmetric(horizontal: 24),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.transparent,
                            ),
                            child: const Icon(
                              Icons.close,
                              color: AppColors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    child,
                    if (hasButton)
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: AppButton(
                          title: buttonTitle,
                          onTap: buttonOnTap,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
