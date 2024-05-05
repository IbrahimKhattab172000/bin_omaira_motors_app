import 'package:bin_omaira_motors/features/order_details/widgets/order_details_attachment_widget.dart';
import 'package:bin_omaira_motors/features/order_details/widgets/order_details_card.dart';
import 'package:bin_omaira_motors/features/order_details/widgets/order_details_rejection_cause.dart';
import 'package:bin_omaira_motors/features/order_details/widgets/order_details_summary.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrderDetailsView extends StatelessWidget {
  final String type;

  const OrderDetailsView({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "order_details".tr(),
        titleColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            CustomNavigator.pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: AppWhiteBody(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32.height),
                AppText(
                  title: "order_details".tr(),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
                SizedBox(height: 24.height),
                OrderDetailsCard(type: type),
                SizedBox(height: 24.height),
                const OrderDetailsSummary(),
                SizedBox(height: 24.height),
                type == "accepted"
                    ? const OrderDetailsAttachmentWidget()
                    : const SizedBox(),
                type == "declined"
                    ? const OrderDetailsRejectionCause()
                    : const SizedBox(),
                SizedBox(height: Utils.bottomDevicePadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
