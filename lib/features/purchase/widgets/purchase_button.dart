import 'package:bin_omaira_motors/features/purchase/bloc/purchase/cubit.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PurchaseButton extends StatelessWidget {
  const PurchaseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = PurchaseCubit.of(context);
    return AppButton(
      title: "next".tr(),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      onTap: () {
        cubit.next();
      },
    );
  }
}
