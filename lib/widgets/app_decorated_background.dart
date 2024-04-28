import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:flutter/material.dart';

class AppDecoratedBackGround extends StatelessWidget {
  final Widget child;
  const AppDecoratedBackGround({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Utils.getAssetPNGPath('background'),
          ),
          fit: BoxFit.cover,
        ),
        color: AppColors.background,
      ),
      child: child,
    );
  }
}
