import 'package:flutter/material.dart';
import 'horizontal_stepper_item.dart';
import 'horizontal_stepper_divider.dart';
import 'stepper_data.dart';

class HorizontalSteppers extends StatelessWidget {
  const HorizontalSteppers({
    Key? key,
    required this.labels,
    required this.currentStep,
  }) : super(key: key);

  final List<StepperData> labels;
  final int currentStep;
  get _totalSteps => labels.length;

  @override
  Widget build(BuildContext context) {
    assert(1 < _totalSteps && _totalSteps < 6 && currentStep <= _totalSteps + 1,
        'Invalid steppers');
    return Stack(
      children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildListDividers()),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildListStepWidgets(),
        ),
      ],
    );
  }

  _buildListDividers() {
    List<Widget> dividers = [];
    labels.asMap().forEach(
      (index, model) {
        dividers.add(
          ProgressStepHorizontalDivider(
            step: index,
            currentStep: currentStep,
            totalSteps: _totalSteps,
            labels: labels,
          ),
        );
      },
    );
    return dividers;
  }

  _buildListStepWidgets() {
    List<Widget> stepWidgets = [];
    labels.asMap().forEach((index, model) {
      stepWidgets.add(HorizontalStepperItem(
        step: index,
        currentStep: currentStep,
        stepData: model,
        totalSteps: _totalSteps,
      ));
    });
    return stepWidgets;
  }
}
