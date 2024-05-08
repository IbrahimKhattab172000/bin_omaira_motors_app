// ignore_for_file: must_be_immutable

import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MoreCard extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  BorderRadiusGeometry? borderRadiusGeometry;
  final String imagePath;
  Color? customColor;
  MoreCard({
    Key? key,
    required this.title,
    required this.onTap,
    this.borderRadiusGeometry,
    required this.imagePath,
    this.customColor,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MoreCardState();
}

class _MoreCardState extends State<MoreCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 52.height,
        decoration: BoxDecoration(
          color: widget.customColor != null
              ? widget.customColor?.withOpacity(0.05)
              : AppColors.grey.withOpacity(0.2),
          borderRadius: widget.borderRadiusGeometry,
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(
              Utils.getAssetPNGPath(widget.imagePath),
              height: 24.height,
              width: 24.height,
              color: widget.customColor ?? AppColors.primary,
            ),
            SizedBox(width: 12.width),
            AppText(
              title: widget.title.tr(),
              color: widget.customColor ?? AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: widget.customColor ?? AppColors.lightBlack,
            ),
          ],
        ),
      ),
    );
  }
}
