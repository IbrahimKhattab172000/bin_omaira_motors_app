import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/routes.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:flutter/material.dart';

class VerificationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const VerificationAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppAppBar(
      leading: IconButton(
        onPressed: () {
          RouteUtils.pop();
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
