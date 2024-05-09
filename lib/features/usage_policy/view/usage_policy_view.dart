import 'package:bin_omaira_motors/features/usage_policy/widgets/usage_policy_text.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class UsagePolicyView extends StatelessWidget {
  const UsagePolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "usage_policy".tr(),
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
              const UsagePolicyText(),
              SizedBox(height: 62.height),
            ],
          ),
        ),
      ),
    );
  }
}
