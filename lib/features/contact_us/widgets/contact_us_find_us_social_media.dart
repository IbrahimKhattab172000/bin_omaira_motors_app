import 'package:bin_omaira_motors/features/contact_us/widgets/contact_us_social_media_list.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ContactUsFindUsSocialMedia extends StatelessWidget {
  const ContactUsFindUsSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppText(
            title: "find_us_on_social_media".tr(),
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
          SizedBox(height: 24.height),
          const ContactUsSocialMedia(),
        ],
      ),
    );
  }
}
