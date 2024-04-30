import 'package:bin_omaira_motors/features/new_password/widgets/new_password_app_bar.dart';
import 'package:bin_omaira_motors/features/new_password/widgets/new_password_button.dart';
import 'package:bin_omaira_motors/features/new_password/widgets/new_password_form.dart';
import 'package:bin_omaira_motors/features/new_password/widgets/new_password_text_info.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:flutter/material.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: const NewPasswordAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 52.height),
            const NewPasswordTextInfo(),
            SizedBox(height: 40.height),
            const NewPasswordForms(),
            SizedBox(height: 24.height),
            const NewPasswordButton(),
            SizedBox(height: Utils.bottomDevicePadding),
          ],
        ),
      ),
    );
  }
}
