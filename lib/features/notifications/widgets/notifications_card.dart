import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:flutter/material.dart';

class NotificationsCard extends StatelessWidget {
  const NotificationsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 52.height,
          width: 52.width,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.deepLightPrimary,
          ),
          child: Image.asset(
            Utils.getAssetPNGPath("box_arrow_in_left"),
            height: 22.height,
            width: 22.width,
          ),
        ),
        SizedBox(width: 16.width),
        const AppText(
          title: "Sara Omar",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.darkGray,
          size: 16,
        ),
      ],
    );
  }
}
