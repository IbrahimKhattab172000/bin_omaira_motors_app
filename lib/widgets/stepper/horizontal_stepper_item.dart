import 'package:bin_omaira_motors/features/purchase/bloc/purchase/cubit.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'stepper_data.dart';

class HorizontalStepperItem extends StatelessWidget {
  const HorizontalStepperItem({
    Key? key,
    required this.step,
    required this.currentStep,
    required this.totalSteps,
    required this.stepData,
    Map<String, Object>? trackingParam,
    String? identity,
    TargetPlatform? platformOverride,
  }) : super(key: key);

  final int step;
  final int currentStep;
  final int totalSteps;
  final StepperData stepData;

  bool _isCurrentStep(int step) => currentStep == step;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PurchaseCubit, PurchaseState>(
      builder: (context, state) {
        // final cubit = PurchaseCubit.of(context);

        return Expanded(
          child: InkWell(
            onTap: () {
              // cubit.changeView(step);
            },
            child: Column(
              children: [
                Container(
                  width: 28.height,
                  height: 28.height,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    // color: currentStep >= step ? AppColors.darkGray : AppColors.grey,
                    color: currentStep == step
                        ? AppColors.grey.withOpacity(0.2)
                        : AppColors.black,
                    border: currentStep == step
                        ? null
                        : Border.all(
                            width: 2,
                            color: AppColors.grey.withOpacity(0.2),
                          ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: AppText(
                      title: (step + 1).toString(),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                _buildStepDescriptionWidget(step, stepData.label),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildStepDescriptionWidget(int step, String label) => AppText(
      title: label,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: _getTextColor);

  get _getTextColor {
    if (_isCurrentStep(step)) return AppColors.white;
    // return currentStep >= step ? AppColors.darkGray : AppColors.grey;
    return AppColors.grey.withOpacity(0.7);
  }
}
