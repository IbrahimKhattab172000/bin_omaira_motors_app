import 'package:bin_omaira_motors/features/done/view/done_view.dart';
import 'package:bin_omaira_motors/helpers/routes.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NewPasswordButton extends StatelessWidget {
  const NewPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: "confirm".tr(),
      onTap: () {
        RouteUtils.navigateTo(
          const DoneView(
            imagePath: "new_password_done",
            subtitle: "new_pass_done_subtitle",
            title: "new_pass_done_title",
            buttonTitle: "back_to_login",
          ),
        );
      },
      titleFontSize: 14,
    );
  }
}
