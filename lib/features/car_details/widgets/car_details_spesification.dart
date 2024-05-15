import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_dialog.dart';
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
        CarDetailsSpesificationElement(
          onTap: () {
            AppDialog.show(
              hasTopColouredContainer: true,
              title: "Engine specifications",
              child: ListView.separated(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const CarDetailsSpecificationsElement(
                    text: "Displacement (cc)",
                    value: "3.5",
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColors.grey,
                  );
                },
              ),
              hasButton: false,
            );
          },
          title: "Engine specifications",
        ),
        SizedBox(height: 16.height),
        CarDetailsSpesificationElement(
          onTap: () {},
          title: "measurements",
        ),
        SizedBox(height: 16.height),
        CarDetailsSpesificationElement(
          onTap: () {},
          title: "measurements",
        ),
        SizedBox(height: 200.height),
      ],
    );
  }
}

class CarDetailsSpecificationsElement extends StatelessWidget {
  final String text;
  final String value;
  const CarDetailsSpecificationsElement({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            title: text,
            color: AppColors.black,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          AppText(
            title: value,
            color: AppColors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}

class CarDetailsSpesificationElement extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const CarDetailsSpesificationElement({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            height: 4.height,
            width: 4.width,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.black),
          ),
          SizedBox(width: 4.width),
          AppText(
            title: title,
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
      ),
    );
  }
}
