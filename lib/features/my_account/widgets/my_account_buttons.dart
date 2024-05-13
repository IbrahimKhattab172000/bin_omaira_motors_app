import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:bin_omaira_motors/widgets/app_dialog.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyAccountButtons extends StatelessWidget {
  const MyAccountButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          title: "save_changes".tr(),
          onTap: () {},
          titleFontSize: 14,
          color: AppColors.primary.withOpacity(0.1),
          titleColor: AppColors.primary,
        ),
        SizedBox(height: 16.height),
        AppButton.outline(
          title: "delete_account".tr(),
          onTap: () {
            AppDialog.show(
              hasButton: true,
              hasTopColouredContainer: false,
              dismissible: true,
              warning: true,
              buttonTitle: "confirm_delete_account".tr(),
              buttonOnTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 62.height),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                              "are_you_sure_you_want_to_delete_your_account_permanently"
                                  .tr(),
                          textAlign: TextAlign.center,
                          color: AppColors.darkGray,
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          borderColor: AppColors.red,
          titleColor: AppColors.red,
        ),
      ],
    );
  }
}
