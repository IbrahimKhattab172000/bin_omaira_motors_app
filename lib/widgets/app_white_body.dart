import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:flutter/material.dart';

class AppWhiteBody extends StatelessWidget {
  final Widget child;
  const AppWhiteBody({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: AppColors.white,
      width: double.infinity,
      child: child,
    );
  }
}
