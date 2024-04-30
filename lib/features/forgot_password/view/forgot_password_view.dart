import 'package:bin_omaira_motors/features/forgot_password/widgets/forgot_password_app_bar.dart';
import 'package:bin_omaira_motors/features/forgot_password/widgets/forgot_password_button.dart';
import 'package:bin_omaira_motors/features/forgot_password/widgets/forgot_password_form.dart';
import 'package:bin_omaira_motors/features/forgot_password/widgets/forgot_password_text_info.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: const ForgotPasswordAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 52.height),
            const ForgotPasswordTextInfo(),
            SizedBox(height: 40.height),
            const ForgotPasswordForm(),
            SizedBox(height: 24.height),
            const ForgotPasswordButton(),
            SizedBox(height: Utils.bottomDevicePadding),
          ],
        ),
      ),
    );
  }
}
