import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:flutter/material.dart';

class OurBranchesCard extends StatelessWidget {
  const OurBranchesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 174.height,
          width: 328.width,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppText(
                  title: "Bin omira branch 1",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
                SizedBox(height: 14.height),
                const OurBranchesCardRow(
                  iconData: Icons.location_on,
                  text: "5th street, Dammam, saudi arabi",
                ),
                SizedBox(height: 14.height),
                const OurBranchesCardRow(
                  iconData: Icons.phone,
                  text: "+966 00000 00000",
                ),
                SizedBox(height: 14.height),
                const OurBranchesCardRow(
                  iconData: Icons.av_timer,
                  text: "09:00 am to 05:00 pm",
                ),
                SizedBox(height: 14.height),
                const OurBranchesCardRow(
                  iconData: Icons.location_on,
                  text: "BinOminaMotors.sa",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class OurBranchesCardRow extends StatelessWidget {
  final IconData iconData;
  final String text;
  const OurBranchesCardRow({
    super.key,
    required this.iconData,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 18,
          color: AppColors.darkGray,
        ),
        SizedBox(width: 8.width),
        AppText(
          title: text,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.darkGray,
        ),
      ],
    );
  }
}
