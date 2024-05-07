import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:flutter/material.dart';

class NumberStepper extends StatelessWidget {
  final int totalSteps;
  final int curStep;

  final double lineWidth;
  const NumberStepper({
    super.key,
    required this.curStep,
    required this.totalSteps,
    required this.lineWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: _steps(),
      ),
    );
  }

  List<Widget> _steps() {
    var list = <Widget>[];
    for (int i = 0; i < totalSteps; i++) {
      list.add(
        Container(
          width: 15.0,
          height: 15.0,
          decoration: BoxDecoration(
            color: i > curStep ? AppColors.grey : AppColors.primary,
            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      );

      //line between step circles
      if (i != totalSteps - 1) {
        list.add(
          Expanded(
            child: Container(
              height: lineWidth,
              color: curStep > i ? AppColors.primary : AppColors.grey,
            ),
          ),
        );
      }
    }

    return list;
  }
}
