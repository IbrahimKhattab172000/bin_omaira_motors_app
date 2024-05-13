// ignore_for_file: must_be_immutable

import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:bin_omaira_motors/widgets/app_toggle_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChangeLanguageToggle extends StatefulWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  BorderRadiusGeometry? borderRadiusGeometry;
  final String imagePath;
  ChangeLanguageToggle({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    this.borderRadiusGeometry,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChangeLanguageToggleState();
}

class _ChangeLanguageToggleState extends State<ChangeLanguageToggle> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.grey.withOpacity(0.2),
          borderRadius: widget.borderRadiusGeometry,
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Opacity(
              opacity: widget.isSelected ? 1 : 0.3,
              child: Image.asset(
                Utils.getAssetPNGPath(widget.imagePath),
                height: 24.height,
                width: 24.height,
              ),
            ),
            SizedBox(width: 12.width),
            AppText(
              title: widget.title.tr(),
              color: widget.isSelected ? AppColors.black : AppColors.darkGray,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            const Spacer(),
            AppToggleButton(
              onChanged: (value) {},
              value: widget.isSelected,
              color: widget.isSelected ? Colors.white : AppColors.black,
            ),
          ],
        ),
      ),
    );
  }
}
