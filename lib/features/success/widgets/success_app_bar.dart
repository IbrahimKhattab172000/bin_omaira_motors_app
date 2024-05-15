// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';

class SuccessAppBar extends StatelessWidget implements PreferredSizeWidget {
  Color? backGroundColor;
  SuccessAppBar({
    Key? key,
    this.backGroundColor,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppAppBar(
      backgroundColor: backGroundColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          // RouteUtils.pop();
          CustomNavigator.pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.white,
          size: 22,
        ),
      ),
    );
  }
}
