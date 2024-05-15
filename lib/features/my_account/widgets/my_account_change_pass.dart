// ignore_for_file: must_be_immutable

import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/kian_routes.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyAccountChangePassWidget extends StatefulWidget {
  const MyAccountChangePassWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAccountChangePassWidgetState();
}

class _MyAccountChangePassWidgetState extends State<MyAccountChangePassWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomNavigator.push(Routes.CHNAGEPASSWORD);
      },
      child: Container(
        height: 52.height,
        decoration: BoxDecoration(
          color: AppColors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(14),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            AppText(
              title: "change_password".tr(),
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.lightBlack,
            ),
          ],
        ),
      ),
    );
  }
}
