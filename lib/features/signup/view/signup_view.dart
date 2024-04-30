import 'package:bin_omaira_motors/features/signup/widgets/signup_appbar.dart';
import 'package:bin_omaira_motors/features/signup/widgets/signup_button.dart';
import 'package:bin_omaira_motors/features/signup/widgets/signup_forms.dart';
import 'package:bin_omaira_motors/features/signup/widgets/signup_have_account.dart';
import 'package:bin_omaira_motors/features/signup/widgets/signup_image_with_info.dart';
import 'package:bin_omaira_motors/features/signup/widgets/signup_terms_and_conditions.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: const SignupAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SignupImageWithInfo(),
              SizedBox(height: 32.height),
              const SignupForms(),
              SizedBox(height: 28.height),
              const SignupTermsAndConditions(),
              SizedBox(height: 28.height),
              const SignupButton(),
              SizedBox(height: 40.height),
              const SignupHaveAccount(),
              SizedBox(height: Utils.bottomDevicePadding),
            ],
          ),
        ),
      ),
    );
  }
}
