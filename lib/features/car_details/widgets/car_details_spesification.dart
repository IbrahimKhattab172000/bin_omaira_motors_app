import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarDetailsSpesification extends StatelessWidget {
  const CarDetailsSpesification({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText(
          title: "specifications".tr(),
          fontSize: 16,
          color: AppColors.black,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(height: 32.height),
        const CarDetailsSpesificationElement(),
        SizedBox(height: 16.height),
        const CarDetailsSpesificationElement(),
        SizedBox(height: 16.height),
        const CarDetailsSpesificationElement(),
        SizedBox(height: 200.height),
      ],
    );
  }
}

class CarDetailsSpesificationElement extends StatelessWidget {
  const CarDetailsSpesificationElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 4.height,
          width: 4.width,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.black),
        ),
        SizedBox(width: 4.width),
        const AppText(
          title: "Measurments",
          fontSize: 12,
          color: AppColors.black,
          fontWeight: FontWeight.w300,
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios,
          size: 14,
        ),
      ],
    );
  }
}
