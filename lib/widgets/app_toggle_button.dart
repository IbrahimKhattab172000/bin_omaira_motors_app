import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:flutter/material.dart';

class AppToggleButton extends StatelessWidget {
  const AppToggleButton({
    super.key,
    required this.value,
    this.onChanged,
    this.rotate = true,
    this.color = AppColors.black,
  });

  final bool value;
  final void Function(bool)? onChanged;
  final bool rotate;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22.height,
      height: 22.height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: value ? AppColors.black : AppColors.darkGray,
          width: 2,
        ),
        color: AppColors.white,
      ),
      padding: const EdgeInsets.all(3),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: value ? AppColors.black : AppColors.white,
        ),
      ),
    );
  }
}
