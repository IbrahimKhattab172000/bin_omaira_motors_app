import 'package:bin_omaira_motors/features/welcome/widgets/welcome_app_bar.dart';
import 'package:bin_omaira_motors/features/welcome/widgets/welcome_buttons.dart';
import 'package:bin_omaira_motors/features/welcome/widgets/welcome_image_with_info.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';

import 'package:flutter/material.dart';

class WelcomeViewScreen extends StatelessWidget {
  const WelcomeViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: const WelcomeAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const WelcomeImageWithInfo(),
              SizedBox(height: 102.height),
              const WelcomeButtons(),
              SizedBox(height: Utils.bottomDevicePadding),
            ],
          ),
        ),
      ),
    );
  }
}
