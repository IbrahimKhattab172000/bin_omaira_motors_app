import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PurchaseBankItem extends StatelessWidget {
  final String image;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  const PurchaseBankItem({
    super.key,
    required this.image,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 96.height,
        width: 190.width,
        padding: EdgeInsets.all(16.height),
        margin: EdgeInsets.all(8.height),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: isSelected
                ? AppColors.darkGray
                : AppColors.grey.withOpacity(0.6),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Image.asset(Utils.getAssetPNGPath(image)),
            SizedBox(height: 12.height),
            AppText(
              title: title.tr(),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.darkGray,
            ),
          ],
        ),
      ),
    );
  }
}
