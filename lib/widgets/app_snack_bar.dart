import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:flutter/material.dart';

import 'app_text.dart';

void showSnackBar(
  String message, {
  bool errorMessage = false,
  duration = 5,
  Color color = AppColors.primary,
  SnackBarAction? action,
}) {
  if (message.trim().isEmpty) {
    return;
  }
  ScaffoldMessenger.of(CustomNavigator.context).hideCurrentSnackBar();
  ScaffoldMessenger.of(CustomNavigator.context).showSnackBar(
    SnackBar(
      backgroundColor: errorMessage ? AppColors.red : color,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0.0,
      content: AppText(
        title: message,
        color: AppColors.white,
      ),
      action: action ??
          SnackBarAction(
            label: '',
            onPressed: () {},
          ),
      duration: Duration(seconds: duration),
    ),
  );
}
