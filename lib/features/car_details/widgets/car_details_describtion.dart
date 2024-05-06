import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarDetailsDescribtion extends StatelessWidget {
  const CarDetailsDescribtion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText(
          title: "describtion".tr(),
          fontSize: 16,
          color: AppColors.black,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(height: 24.height),
        const CarDetailsDescribtionElement(),
        SizedBox(height: 24.height),
        const CarDetailsDescribtionElement(),
      ],
    );
  }
}

class CarDetailsDescribtionElement extends StatelessWidget {
  const CarDetailsDescribtionElement({
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
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.89,
          child: const AppText(
            title:
                "Heat insulation with 10 years free warranty + 30% discount on other services.",
            fontSize: 12,
            color: AppColors.black,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
