import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:flutter/material.dart';

class CarDetailsInfo extends StatelessWidget {
  const CarDetailsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  Utils.getAssetPNGPath("telephone"),
                  fit: BoxFit.cover,
                  height: 18.height,
                  width: 18.width,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.grey.withOpacity(0.3),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Image.asset(
                Utils.getAssetPNGPath("tesla"),
                fit: BoxFit.cover,
                height: 48.height,
                width: 48.width,
              ),
            ),
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  Utils.getAssetPNGPath("box_arrow_up_left"),
                  fit: BoxFit.cover,
                  height: 18.height,
                  width: 18.width,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.height),
        Column(
          children: [
            const AppText(
              title: "Tesla 2019 Model 3",
              color: AppColors.black,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            SizedBox(height: 8.height),
            const AppText(
              title: "Model 3 Standard Range Plus Rear-Wheel Drive",
              color: AppColors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ],
        ),
      ],
    );
  }
}
