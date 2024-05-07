import 'package:bin_omaira_motors/features/purchase/bloc/purchase/cubit.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/purchase_button.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/purchase_stepper.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/sub_views/purchase_payment_sub_view.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/sub_views/purchase_shipping_sub_view.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/sub_views/purchase_summary_sub_view.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PurchaseView extends StatelessWidget {
  const PurchaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PurchaseCubit(),
      child: BlocBuilder<PurchaseCubit, PurchaseState>(
        builder: (context, state) {
          final cubit = PurchaseCubit.of(context);

          return Scaffold(
            appBar: AppAppBar(
              title: "purchase".tr(),
              titleColor: AppColors.white,
              leading: IconButton(
                onPressed: () {
                  cubit.previous();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            body: AppWhiteBody(
                child: Column(
              children: [
                const PurchaseStepper(),
                Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(top: 32),
                    children: [
                      BlocBuilder<PurchaseCubit, PurchaseState>(
                        builder: (context, state) {
                          if (cubit.currentViewIndex == 0) {
                            return const PurchaseSummarySubView();
                          } else if (cubit.currentViewIndex == 1) {
                            return const PurchaseShippingSubView();
                          } else {
                            return const PurchasePaymentSubView();
                          }
                        },
                      ),
                      SizedBox(height: 32.height),
                      const PurchaseButton(),
                      SizedBox(height: Utils.bottomDevicePadding),
                    ],
                  ),
                ),
              ],
            )),
          );
        },
      ),
    );
  }
}
