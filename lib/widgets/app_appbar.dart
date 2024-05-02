// ignore_for_file: must_be_immutable

import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  AppAppBar({
    Key? key,
    this.hMargin = 0,
    this.title,
    this.actions,
    this.leading,
    this.elevation,
    this.backgroundColor,
    this.appbarHeight,
    this.titleColor,
    this.customWidget,
    this.hasLeading,
  }) : super(key: key);
  final double hMargin;
  final String? title;
  final List<Widget>? actions;
  final Widget? leading;
  double? elevation;
  Color? backgroundColor;
  double? appbarHeight;
  final Color? titleColor;
  final Widget? customWidget;
  final bool? hasLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? AppColors.black,
      elevation: elevation ?? 1,
      iconTheme: const IconThemeData(
        color: AppColors.black,
      ),
      leading: leading,
      automaticallyImplyLeading: hasLeading ?? false,
      centerTitle: true,

      // titleSpacing: title == null || title!.isEmpty || !Navigator.canPop(context) ? null : -16,
      title: customWidget ??
          AppText(
            title: title ?? '',
            fontSize: 18,
            color: titleColor ?? AppColors.black,
            fontWeight: FontWeight.w400,
          ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(appbarHeight ?? AppBar().preferredSize.height);
}
