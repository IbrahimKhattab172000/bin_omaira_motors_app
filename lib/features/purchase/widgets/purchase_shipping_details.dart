import 'package:bin_omaira_motors/features/purchase/bloc/purchase/cubit.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/purchase_shipping_details_toggle.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/main_models/selection_item.dart';
import 'package:bin_omaira_motors/widgets/app_drop_down_menu.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PurchaseShippingDetails extends StatelessWidget {
  const PurchaseShippingDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PurchaseCubit, PurchaseState>(
      builder: (context, state) {
        final cubit = PurchaseCubit.of(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title: "shipping_details".tr(),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
            SizedBox(height: 24.height),
            PurchaseShippingDetailsToggle(
              title: 'branch'.tr(),
              isSelected: cubit.isHome ? false : true,
              onTap: () {
                cubit.setShippingTypeValue(value: "branch");
              },
              borderRadiusGeometry: const BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
              ),
              imagePath: "building",
            ),
            SizedBox(height: 2.height),
            PurchaseShippingDetailsToggle(
              title: 'home_delivery'.tr(),
              isSelected: cubit.isHome ? true : false,
              onTap: () {
                cubit.setShippingTypeValue(value: "home");
              },
              borderRadiusGeometry: const BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
              imagePath: "door_open",
            ),
            SizedBox(height: 16.height),
            AppDropDownSelection.single(
              items: [
                SelectionItem(
                  label: "Mansoura",
                  value: "0",
                )
              ],
              initialItem: null,
              hint: 'city'.tr(),
              onChangeSingle: (SelectionItem? value) {},
              height: MediaQuery.sizeOf(context).height * 0.3,
            ),
            SizedBox(height: 16.height),
            AppTextField(
              fillColor: AppColors.white,
              hint: "detailed_address".tr(),
              trailing: const Icon(
                Icons.location_on,
                color: AppColors.darkGray,
              ),
              borderColor: AppColors.darkGray.withOpacity(0.3),
            ),
          ],
        );
      },
    );
  }
}
