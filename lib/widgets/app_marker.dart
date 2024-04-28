import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppMapMarker extends StatelessWidget {
  final String title;
  final String image;
  const AppMapMarker({
    Key? key,
    this.onTap,
    required this.title,
    required this.image,
  }) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            Utils.getAssetPNGPath(image),
            height: 52.height,
            width: 50.width,
          ),
          AppText(
            title: title,
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: AppColors.black,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
