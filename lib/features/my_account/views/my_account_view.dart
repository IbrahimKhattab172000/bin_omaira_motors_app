import 'package:bin_omaira_motors/features/my_account/widgets/my_account_buttons.dart';
import 'package:bin_omaira_motors/features/my_account/widgets/my_account_change_pass.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
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
          child: Column(
            children: [
              SizedBox(height: 32.height),
              const MyAccountAvatar(),
              SizedBox(height: 32.height),
              const MyAccountForms(),
              SizedBox(height: 16.height),
              const MyAccountChangePassWidget(),
              const Spacer(),
              const MyAccountButtons(),
              SizedBox(height: Utils.bottomDevicePadding),
            ],
          ),
        ),
      ),
    );
  }
}

class MyAccountForms extends StatelessWidget {
  const MyAccountForms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          inputDecorationLable: "name".tr(),
          fillColor: AppColors.white,
          hint: 'name'.tr(),
          trailing: const Icon(
            Icons.person,
            color: AppColors.darkGray,
          ),
        ),
        SizedBox(height: 24.height),
        AppTextField(
          inputDecorationLable: "email".tr(),
          fillColor: AppColors.white,
          hint: 'email'.tr(),
          trailing: const Icon(
            Icons.email,
            color: AppColors.darkGray,
          ),
        ),
        SizedBox(height: 24.height),
        AppTextField(
          inputDecorationLable: "phone_number".tr(),
          fillColor: AppColors.white,
          hint: "phone_number".tr(),
          trailing: Container(
            height: 24.height,
            width: 24.width,
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              Utils.getAssetPNGPath("phone"),
              color: AppColors.darkGray,
            ),
          ),
        ),
      ],
    );
  }
}

class MyAccountAvatar extends StatelessWidget {
  const MyAccountAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Utils.getAssetPNGPath("camera_avatar"),
      height: 120.height,
      width: 120.width,
    );
  }
}
