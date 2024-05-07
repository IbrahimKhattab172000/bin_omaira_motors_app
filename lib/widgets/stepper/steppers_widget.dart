import 'package:bin_omaira_motors/widgets/stepper/stepper_without_text.dart';
import 'package:flutter/material.dart';
import 'horizontal_steppers.dart';
import 'stepper_data.dart';

enum StepperDirection { horizontal, vertical }

class AppSteppers extends StatelessWidget {
  const AppSteppers({
    Key? key,
    required this.labels,
    required this.currentStep,
    this.noLabel = false,
    this.direction = StepperDirection.horizontal,
  }) : super(key: key);

  final List<StepperData> labels;
  final int currentStep;
  final StepperDirection direction;
  final bool noLabel;
  get _totalSteps => labels.length;

  @override
  Widget build(BuildContext context) {
    assert(
        1 < _totalSteps && _totalSteps < 12 && currentStep <= _totalSteps + 1,
        'Invalid progress steps');
    return noLabel
        ? NumberStepper(
            curStep: currentStep,
            totalSteps: labels.length,
            lineWidth: 1,
          )
        : HorizontalSteppers(
            labels: labels,
            currentStep: currentStep,
          );
  }
}
