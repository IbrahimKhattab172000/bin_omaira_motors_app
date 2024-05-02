import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NotificationsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const NotificationsAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppAppBar(
      title: "notifications".tr(),
      titleColor: AppColors.white,
      leading: IconButton(
        onPressed: () {
          CustomNavigator.pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.white,
          size: 18,
        ),
      ),
    );
  }
}
