import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/kian_routes.dart';
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
        // RouteUtils.navigateTo(
        //   const SuccessView(
        //     imagePath: "new_password_done",
        //     subtitle: "new_pass_done_subtitle",
        //     title: "new_pass_done_title",
        //     buttonTitle: "back_to_login",
        //   ),
        // );

        CustomNavigator.push(Routes.SUCCESSPASSWORD);
      },
      titleFontSize: 14,
    );
  }
}
