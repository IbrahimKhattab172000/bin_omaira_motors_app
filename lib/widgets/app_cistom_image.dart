import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:flutter/material.dart';

class AppCustomImage extends StatelessWidget {
  const AppCustomImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Utils.getAssetPNGPath('logo'),
      width: 132.width,
      height: 132.height,
    );
  }
}
