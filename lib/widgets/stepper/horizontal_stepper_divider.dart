import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:bin_omaira_motors/widgets/stepper/stepper_data.dart';
import 'package:flutter/material.dart';

class ProgressStepHorizontalDivider extends StatelessWidget {
  const ProgressStepHorizontalDivider({
    Key? key,
    required this.step,
    required this.currentStep,
    required this.totalSteps,
    required this.labels,
  }) : super(key: key);

  final int step;
  final int currentStep;
  final int totalSteps;
  final List<StepperData> labels;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          _buildDottedDivider(step, color: _dottedDividerColor),
          // const SizedBox(width: 15),
          // _buildDottedDivider(step, color: _rightDividerColor),
        ],
      ),
    );
  }

  Widget _buildDottedDivider(int step, {required Color color}) => Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: AppText(
            title: "...",
            fontWeight: FontWeight.w900,
            color: color,
          ),
        ),
      );

  Color get _dottedDividerColor {
    if (step == 0) return Colors.transparent;
    if (step == totalSteps) return Colors.transparent;

    // if (currentStep >= step) return AppColors.primary;
    return AppColors.darkGray.withOpacity(0.5);
  }

  // Color get _leftDividerColor {
  //   if (step == 0) return Colors.transparent;
  //   if (currentStep >= step) return AppColors.primary;
  //   return AppColors.grey;
  // }

  // Color get _rightDividerColor {
  //   if (step == totalSteps - 1) return Colors.transparent;
  //   if (currentStep > step) return AppColors.primary;
  //   return AppColors.grey;
  // }
}



// import 'package:bin_omaira_motors/helpers/colors.dart';
// import 'package:bin_omaira_motors/widgets/stepper_2/stepper_data.dart';
// import 'package:flutter/material.dart';

// class ProgressStepHorizontalDivider extends StatelessWidget {
//   const ProgressStepHorizontalDivider({
//     Key? key,
//     required this.step,
//     required this.currentStep,
//     required this.totalSteps,
//     required this.labels,
//   }) : super(key: key);

//   final int step;
//   final int currentStep;
//   final int totalSteps;
//   final List<StepperData> labels;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Row(
//         children: [
//           _buildSeparatorLine(step, color: _leftDividerColor),
//           const SizedBox(
//             width: 15,
//           ),
//           _buildSeparatorLine(step, color: _rightDividerColor),
//         ],
//       ),
//     );
//   }

//   Widget _buildSeparatorLine(int step, {required Color color}) => Expanded(
//         child: Container(
//           color: color,
//           height: 1,
//         ),
//       );

//   get _leftDividerColor {
//     if (step == 0) return Colors.transparent;
//     if (currentStep >= step) return AppColors.primary;
//     return AppColors.grey;
//   }

//   get _rightDividerColor {
//     if (step == totalSteps - 1) return Colors.transparent;
//     if (currentStep > step) return AppColors.primary;
//     return AppColors.grey;
//   }
// }
