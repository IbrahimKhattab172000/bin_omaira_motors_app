import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:flutter/material.dart';

class ForgotPasswordAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ForgotPasswordAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppAppBar(
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
