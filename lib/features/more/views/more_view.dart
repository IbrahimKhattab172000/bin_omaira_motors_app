import 'package:bin_omaira_motors/features/more/widgets/more_card.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/kian_routes.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_dialog.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "more".tr(),
        titleColor: AppColors.white,
      ),
      body: AppWhiteBody(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(height: 42.height),
            MoreCard(
              title: "my_account",
              onTap: () {
                CustomNavigator.push(Routes.MYACCOUNT);
              },
              imagePath: "user",
              borderRadiusGeometry: BorderRadius.circular(14),
            ),
            SizedBox(height: 16.height),
            MoreCard(
              title: "change_language",
              onTap: () {
                CustomNavigator.push(Routes.CHNAGELANGUAGE);
              },
              imagePath: "globe-fill",
              borderRadiusGeometry: BorderRadius.circular(14),
            ),
            SizedBox(height: 16.height),
            MoreCard(
              title: "about_us",
              onTap: () {
                CustomNavigator.push(Routes.ABOUTUS);
              },
              imagePath: "more_app_logo",
              borderRadiusGeometry: const BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
              ),
            ),
            SizedBox(height: 2.height),
            MoreCard(
              title: "after_sale_services",
              onTap: () {
                CustomNavigator.push(Routes.AFTERSALESERVICE);
              },
              imagePath: "speedometer_fill",
            ),
            SizedBox(height: 2.height),
            MoreCard(
              title: "our_branches",
              onTap: () {
                CustomNavigator.push(Routes.OURBRANCHES);
              },
              imagePath: "building2_fill",
            ),
            SizedBox(height: 2.height),
            MoreCard(
              title: "terms_and_conditions_2",
              onTap: () {
                CustomNavigator.push(Routes.TERMSANDCONDITIONS);
              },
              imagePath: "document",
            ),
            SizedBox(height: 2.height),
            MoreCard(
              title: "usage_policy",
              onTap: () {
                CustomNavigator.push(Routes.USAGEPOLICY);
              },
              imagePath: "document2",
            ),
            SizedBox(height: 2.height),
            MoreCard(
              title: "faq",
              onTap: () {
                CustomNavigator.push(Routes.FAQ);
              },
              imagePath: "communication",
            ),
            SizedBox(height: 2.height),
            MoreCard(
              title: "contact_us",
              onTap: () {
                CustomNavigator.push(Routes.CONTACTUS);
              },
              imagePath: "phone",
              borderRadiusGeometry: const BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
            SizedBox(height: 24.height),
            MoreCard(
              title: "logout",
              onTap: () {
                AppDialog.show(
                  // dialogHeight: 380.height,
                  hasButton: true,
                  hasTopColouredContainer: false,
                  dismissible: true,
                  warning: true,
                  buttonTitle: "logout".tr(),
                  buttonOnTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 62.height),
                      Image.asset(
                        alignment: Alignment.center,
                        Utils.getAssetPNGPath("success_purchase"),
                        fit: BoxFit.fill,
                        height: 136.height,
                        width: 136.width,
                      ),
                      SizedBox(height: 12.height),
                      AppText(
                        title: "are_you_sure".tr(),
                        textAlign: TextAlign.center,
                        color: AppColors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      SizedBox(height: 24.height),
                      AppText(
                        title:
                            "are_you_sure_you_want_to_sign_out_from_your_account"
                                .tr(),
                        textAlign: TextAlign.center,
                        color: AppColors.darkGray,
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      ),
                    ],
                  ),
                );
              },
              imagePath: "logout",
              customColor: AppColors.red,
              borderRadiusGeometry: BorderRadius.circular(14),
            ),
            SizedBox(height: Utils.bottomDevicePadding),
          ],
        ),
      ),
    );
  }
}
