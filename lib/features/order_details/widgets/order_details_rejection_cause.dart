import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderDetailsRejectionCause extends StatelessWidget {
  const OrderDetailsRejectionCause({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              FontAwesomeIcons.circleExclamation,
              color: AppColors.darkGray,
              size: 22,
            ),
            SizedBox(width: 8.width),
            AppText(
              title: "cause_of_order_rejection".tr(),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ],
        ),
        SizedBox(height: 24.height),
        Container(
          height: 80.height,
          width: 328.width,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.grey.withOpacity(0.2),
          ),
          child: AppText(
            fontSize: 14,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w400,
            title: "lorem".tr(),
            color: AppColors.darkGray,
          ),
        ),
      ],
    );
  }
}
