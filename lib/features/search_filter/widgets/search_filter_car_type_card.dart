import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:flutter/material.dart';

class SearchFilterCarTypeCard extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const SearchFilterCarTypeCard({
    Key? key,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: isSelected ? AppColors.primary : AppColors.grey,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Image.asset(
              Utils.getAssetPNGPath("alfa"),
              height: 42.height,
              width: 42.height,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 14.height),
            const AppText(
              padding: EdgeInsets.symmetric(horizontal: 24),
              title: "Subaru",
              fontWeight: FontWeight.w400,
              color: AppColors.black,
              fontSize: 14,
            ),
          ],
        ),
      ),
    );
  }
}
