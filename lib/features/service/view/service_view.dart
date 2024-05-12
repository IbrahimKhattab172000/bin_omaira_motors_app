import 'package:bin_omaira_motors/features/service/widgets/service_card.dart';
import 'package:bin_omaira_motors/features/service/widgets/service_details.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "${"service".tr()} 1",
        titleColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            CustomNavigator.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
            size: 22,
          ),
        ),
      ),
      body: AppWhiteBody(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 32.height),
              const ServiceCard(),
              SizedBox(height: 24.height),
              const ServiceDetails(),
              SizedBox(height: Utils.bottomDevicePadding),
            ],
          ),
        ),
      ),
    );
  }
}
