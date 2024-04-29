import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WelcomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WelcomeAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppAppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                AppText(
                  title: "skip_login".tr(),
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
                SizedBox(width: 8.width),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.white,
                  size: 14,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
