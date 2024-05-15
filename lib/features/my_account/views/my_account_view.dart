import 'package:bin_omaira_motors/features/my_account/widgets/my_account_avatar.dart';
import 'package:bin_omaira_motors/features/my_account/widgets/my_account_buttons.dart';
import 'package:bin_omaira_motors/features/my_account/widgets/my_account_change_pass.dart';
import 'package:bin_omaira_motors/features/my_account/widgets/my_account_forms.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "my_account".tr(),
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
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(height: 32.height),
              const Center(child: MyAccountImage()),
              SizedBox(height: 32.height),
              const MyAccountForms(),
              SizedBox(height: 16.height),
              const MyAccountChangePassWidget(),
              SizedBox(height: 64.height),
              const MyAccountButtons(),
              SizedBox(height: Utils.bottomDevicePadding),
            ],
          ),
        ),
      ),
    );
  }
}
