// ignore_for_file: prefer_const_constructors

import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:flutter/material.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({super.key});

  static bool _isVisible = false;
  static bool get isVisible => _isVisible;

  static Future<void> show() async {
    if (_isVisible) {
      // RouteUtils.pop();
      CustomNavigator.pop();
    }
    _isVisible = true;
    await showDialog(
      context: CustomNavigator.context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.7),
      builder: (context) {
        return AppLoadingIndicator();
      },
    );
    _isVisible = false;
  }

  static Future<void> hide() async {
    if (!_isVisible) {
      return;
    }
    CustomNavigator.pop();
    _isVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Image.asset(
        'assets/images/loading.gif',
        width: 128.width,
        height: 128.height,
      ),
    );
  }
}
