import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:flutter/material.dart';

class ContactUsSocialMediaCard extends StatelessWidget {
  final String imagePath;
  const ContactUsSocialMediaCard({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Utils.getAssetPNGPath(imagePath),
      height: 32.height,
      width: 32.width,
    );
  }
}
