import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DoneButton extends StatelessWidget {
  final String buttonTitle;
  const DoneButton({
    super.key,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: buttonTitle.tr(),
      onTap: () {},
      titleFontSize: 14,
    );
  }
}
