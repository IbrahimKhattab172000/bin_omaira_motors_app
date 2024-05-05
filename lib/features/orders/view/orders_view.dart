import 'package:bin_omaira_motors/features/orders/widgets/orders_list.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "orders".tr(),
        titleColor: AppColors.white,
      ),
      body: AppWhiteBody(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 24.height),
                const OrdersList(),
                SizedBox(height: Utils.bottomDevicePadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
