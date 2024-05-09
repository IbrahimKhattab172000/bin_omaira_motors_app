import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:flutter/material.dart';

class AboutUsLogo extends StatelessWidget {
  const AboutUsLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Utils.getAssetPNGPath("logo"),
      height: 124.height,
      width: 172.width,
      color: AppColors.primary,
    );
  }
}
