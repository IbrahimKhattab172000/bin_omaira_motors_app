import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderDetailsAttachmentWidget extends StatelessWidget {
  const OrderDetailsAttachmentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "attatchments".tr(),
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
        SizedBox(height: 24.height),
        OrdersAttachmentCard(title: "receipt".tr()),
        SizedBox(height: 16.height),
        OrdersAttachmentCard(title: "sale_contract".tr()),
      ],
    );
  }
}

class OrdersAttachmentCard extends StatelessWidget {
  final String title;
  const OrdersAttachmentCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.height,
      width: 328.width,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1,
          color: AppColors.grey,
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            Utils.getAssetPNGPath("receipt"),
            height: 20.height,
            width: 20.width,
            color: AppColors.darkGray,
          ),
          SizedBox(width: 8.width),
          AppText(
            title: title,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.darkGray,
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.download,
            color: AppColors.darkGray,
            size: 22,
          ),
        ],
      ),
    );
  }
}
