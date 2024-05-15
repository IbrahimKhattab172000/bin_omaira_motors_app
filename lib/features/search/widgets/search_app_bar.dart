import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/kian_routes.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(120);
  @override
  Widget build(BuildContext context) {
    return AppAppBar(
      appbarHeight: 120,
      customWidget: Transform.translate(
        offset: Offset(0, 10),
        child: Row(
          children: [
            Expanded(
              child: AppTextField(
                textColor: AppColors.darkGray,
                cursorColor: AppColors.darkGray,
                hint: "what_you_looking_for".tr(),
                hintColor: AppColors.darkGray,
                leading: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: AppColors.darkGray,
                  size: 24,
                ),
                fillColor: AppColors.black,
              ),
            ),
            SizedBox(width: 16.width),
            InkWell(
              onTap: () {
                CustomNavigator.push(Routes.SEARCHFILTER);
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                width: 54.width,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.darkGray, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
                  Utils.getAssetPNGPath("settings"),
                  height: 16,
                  color: AppColors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
