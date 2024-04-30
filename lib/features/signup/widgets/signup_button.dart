import 'package:bin_omaira_motors/core/app_state.dart';
import 'package:bin_omaira_motors/features/done/view/done_view.dart';
import 'package:bin_omaira_motors/helpers/routes.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: "signup".tr(),
      onTap: () {
        RouteUtils.navigateTo(
          const DoneView(
            title: "successfully_registered",
            subtitle: "successfully_registered_subtitle",
            imagePath: "successfully_registered",
            buttonTitle: "continue",
          ),
        );
      },
      titleFontSize: 14,
    );
  }
}
