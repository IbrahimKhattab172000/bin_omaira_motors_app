// ignore_for_file: sort_child_properties_last

import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  final Widget child;
  final bool dismissible;
  final String title;
  final bool hasButton;
  final bool hasTopColouredContainer;
  final bool? warning;
  final String buttonTitle;
  final VoidCallback buttonOnTap;
  // final double dialogHeight;

  const AppDialog({
    super.key,
    required this.child,
    required this.dismissible,
    required this.title,
    required this.hasButton,
    required this.buttonTitle,
    required this.buttonOnTap,
    required this.hasTopColouredContainer,
    required this.warning,
    // required this.dialogHeight,
  });

  static Future<dynamic> show({
    required Widget child,
    String? title,
    bool dismissible = true,
    bool hasButton = true,
    String? buttonTitle,
    VoidCallback? buttonOnTap,
    bool? hasTopColouredContainer,
    bool? warning,
    // double dialogHeight = 300,
  }) {
    return showDialog(
      context: CustomNavigator.context,
      barrierDismissible: dismissible,
      builder: (context) {
        return AppDialog(
          child: child,
          dismissible: dismissible,
          // dialogHeight: dialogHeight,
          title: title ?? "no_data".tr(),
          hasButton: hasButton,
          buttonTitle: buttonTitle ?? "login".tr(),
          buttonOnTap: buttonOnTap ??
              () {
                // RouteUtils.navigateAndPopAll(const LoginView());
              },
          hasTopColouredContainer: hasTopColouredContainer ?? true,
          warning: warning,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        // height: dialogHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            hasTopColouredContainer
                ? Container(
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
                        hasTopColouredContainer
                            ? AppText(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 24),
                                textAlign: TextAlign.start,
                                title: title,
                                color: AppColors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              )
                            : const SizedBox(),
                        UnconstrainedBox(
                          child: InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              height: 32.width,
                              width: 32.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 24),
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
                  )
                : const SizedBox(),
            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(16),
                  bottomRight: const Radius.circular(16),
                  topLeft: hasTopColouredContainer
                      ? const Radius.circular(0)
                      : const Radius.circular(16),
                  topRight: hasTopColouredContainer
                      ? const Radius.circular(0)
                      : const Radius.circular(16),
                ),
              ),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  child,
                  SizedBox(height: 12.height),
                  if (hasButton)
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: AppButton(
                        title: buttonTitle,
                        titleColor: warning! ? AppColors.red : AppColors.white,
                        onTap: buttonOnTap,
                        color: warning!
                            ? AppColors.red.withOpacity(0.1)
                            : AppColors.primary,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
