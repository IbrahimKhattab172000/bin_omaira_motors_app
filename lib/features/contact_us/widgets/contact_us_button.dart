import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ContactUsButton extends StatelessWidget {
  const ContactUsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: "submit".tr(),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      onTap: () {},
    );
  }
}
