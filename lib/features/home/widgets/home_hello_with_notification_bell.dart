import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/kian_routes.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeHelloWithNotificationBell extends StatelessWidget {
  const HomeHelloWithNotificationBell({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: "${"hello".tr()} Omar",
                color: AppColors.black,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 8.height,
              ),
              AppText(
                title: "lets_find_you_an_awesome_vehicle".tr(),
                color: AppColors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              CustomNavigator.push(Routes.NOTIFICATIONS);
            },
            child: Container(
              height: 54.height,
              width: 54.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.deepLightPrimary,
              ),
              child: const Icon(
                FontAwesomeIcons.solidBell,
                color: AppColors.primary,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
