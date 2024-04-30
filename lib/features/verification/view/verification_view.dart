import 'package:bin_omaira_motors/features/verification/widgets/verification_app_bar.dart';
import 'package:bin_omaira_motors/features/verification/widgets/verification_button.dart';
import 'package:bin_omaira_motors/features/verification/widgets/verification_pin_code_field.dart';
import 'package:bin_omaira_motors/features/verification/widgets/verification_text_info.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:flutter/material.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: const VerificationAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 52.height),
            const VerificationTextInfo(),
            SizedBox(height: 40.height),
            const VerificationPinCodeField(),
            SizedBox(height: 32.height),
            const VerificationButton(),
            SizedBox(height: Utils.bottomDevicePadding),
          ],
        ),
      ),
    );
  }
}
