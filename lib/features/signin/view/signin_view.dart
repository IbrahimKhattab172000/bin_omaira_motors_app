import 'package:bin_omaira_motors/features/signin/widgets/signin_button.dart';
import 'package:bin_omaira_motors/features/signin/widgets/signin_forgot_password.dart';
import 'package:bin_omaira_motors/features/signin/widgets/signin_forms.dart';
import 'package:bin_omaira_motors/features/signin/widgets/signin_image_with_info.dart';
import 'package:bin_omaira_motors/features/signin/widgets/signin_no_account.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/routes.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:flutter/material.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppAppBar(
        leading: IconButton(
          onPressed: () {
            RouteUtils.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
            size: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SigninImageWithInfo(),
              SizedBox(height: 38.height),
              const SigninForms(),
              SizedBox(height: 24.height),
              const SigninButton(),
              SizedBox(height: 24.height),
              const SigninForgotPassword(),
              SizedBox(height: 40.height),
              const SigninNoAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
