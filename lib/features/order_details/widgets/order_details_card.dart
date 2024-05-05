import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OrderDetailsCard extends StatelessWidget {
  final String type;
  const OrderDetailsCard({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    //accepted //new //declined
    String title;
    Color textColor;

    switch (type) {
      case "new":
        title = "New purchase";
        textColor = AppColors.black;
        break;
      case "declined":
        title = "Declined purchase";
        textColor = Colors.red;
        break;
      case "accepted":
        title = "Accepted purchase";
        textColor = Colors.green;
        break;
      default:
        title = "Unknown type";
        textColor = AppColors.black;
        break;
    }

    return Container(
      padding: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.grey,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: textColor.withOpacity(0.1),
                  ),
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: AppText(
                    textAlign: TextAlign.center,
                    title: title,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                Container(
                  width: 86.width,
                  height: 32.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.deepLightPrimary,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const AppText(
                        title: "99,900",
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                      AppText(
                        title: "sar".tr(),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.height),
          Image.asset(
            Utils.getAssetPNGPath("dummy_car"),
            height: 96.height,
            width: 194.width,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 12.height),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.height,
                  width: 40.width,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.deepLightPrimary,
                  ),
                  child: Image.asset(
                    Utils.getAssetPNGPath("tesla"),
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppText(
                      title: "Tesla 2019 Model 3",
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 2.height),
                    const AppText(
                      title: "2022",
                      color: AppColors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 14.height),
          Container(
            decoration: BoxDecoration(
              color: AppColors.grey.withOpacity(0.4),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            height: 32.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    AppText(
                      title: "${"order_id".tr()}: ",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                    const AppText(
                      title: "#1093745",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkGray,
                    ),
                  ],
                ),
                Row(
                  children: [
                    AppText(
                      title: "${"car_number".tr()}: ",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                    const AppText(
                      title: "#1093745",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.darkGray,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
