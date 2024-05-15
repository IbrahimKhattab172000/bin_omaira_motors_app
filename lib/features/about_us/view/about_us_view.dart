import 'package:bin_omaira_motors/features/about_us/widgets/about_us_item.dart';
import 'package:bin_omaira_motors/features/about_us/widgets/about_us_logo.dart';
import 'package:bin_omaira_motors/features/about_us/widgets/about_us_main_text.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "about_us".tr(),
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
              const AboutUsLogo(),
              SizedBox(height: 32.height),
              const AboutUsMainText(),
              SizedBox(height: 62.height),
              const AboutUsItem(
                imagePath: "mission",
                text: "our_mission",
              ),
              SizedBox(height: 32.height),
              const AboutUsItem(
                imagePath: "vision",
                text: "our_vision",
              ),
              SizedBox(height: 32.height),
              const AboutUsItem(
                imagePath: "values",
                text: "our_values",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
