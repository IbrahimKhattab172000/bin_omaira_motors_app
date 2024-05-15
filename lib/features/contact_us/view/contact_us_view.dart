import 'package:bin_omaira_motors/features/contact_us/widgets/contact_us_button.dart';
import 'package:bin_omaira_motors/features/contact_us/widgets/contact_us_divider.dart';
import 'package:bin_omaira_motors/features/contact_us/widgets/contact_us_find_us_social_media.dart';
import 'package:bin_omaira_motors/features/contact_us/widgets/contact_us_forms.dart';
import 'package:bin_omaira_motors/features/contact_us/widgets/contact_us_logo.dart';
import 'package:bin_omaira_motors/features/contact_us/widgets/contact_us_main_contacts.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "contact_us".tr(),
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 32.height),
              const ContactUsLogo(),
              SizedBox(height: 32.height),
              const ContactUsMainContacts(),
              SizedBox(height: 32.height),
              const ContactUsDivider(),
              SizedBox(height: 32.height),
              const ContactUsFindUsSocialMedia(),
              SizedBox(height: 32.height),
              const ContactUsDivider(),
              SizedBox(height: 32.height),
              const ContactUsForms(),
              SizedBox(height: 32.height),
              const ContactUsButton(),
              SizedBox(height: Utils.bottomDevicePadding),
            ],
          ),
        ),
      ),
    );
  }
}
