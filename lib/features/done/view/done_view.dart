import 'package:bin_omaira_motors/features/done/widgets/done_image_info.dart';
import 'package:bin_omaira_motors/features/done/widgets/done_app_bar.dart';
import 'package:bin_omaira_motors/features/done/widgets/done_button.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:flutter/material.dart';

class DoneView extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String buttonTitle;
  const DoneView({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: const DoneAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 62.height),
              DoneImageWithInfo(
                title: title,
                subtitle: subtitle,
                imagePath: imagePath,
              ),
              SizedBox(height: 32.height),
              DoneButton(
                buttonTitle: buttonTitle,
              ),
              SizedBox(height: Utils.bottomDevicePadding),
            ],
          ),
        ),
      ),
    );
  }
}
