import 'package:bin_omaira_motors/features/purchase/bloc/purchase/cubit.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/stepper/stepper_data.dart';
import 'package:bin_omaira_motors/widgets/stepper/steppers_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PurchaseStepper extends StatelessWidget {
  const PurchaseStepper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = PurchaseCubit.of(context);

    return BlocBuilder<PurchaseCubit, PurchaseState>(
      builder: (context, state) {
        return Container(
          height: 80.height,
          decoration: const BoxDecoration(
            color: AppColors.black,
          ),
          child: Column(
            children: [
              SizedBox(height: 24.height),
              AppSteppers(
                labels: [
                  StepperData(
                    label: "summary".tr(),
                    state: StepperState.normal,
                  ),
                  StepperData(
                    label: "shipping".tr(),
                    state: StepperState.success,
                  ),
                  StepperData(
                    label: "payment".tr(),
                  ),
                ],
                currentStep: cubit.currentViewIndex,
              ),
              SizedBox(height: 8.height),
            ],
          ),
        );
      },
    );
  }
}
