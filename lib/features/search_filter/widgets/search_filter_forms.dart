import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/main_models/selection_item.dart';
import 'package:bin_omaira_motors/widgets/app_drop_down_menu.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SearchFilterForms extends StatelessWidget {
  const SearchFilterForms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            title: "model".tr(),
            color: AppColors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 12.height),
          AppDropDownSelection.single(
            initialItem: SelectionItem(label: "X3 Model 3", value: "0"),
            hint: "model".tr(),
            items: [
              SelectionItem(label: "X3 Model 3", value: "0"),
              SelectionItem(label: "X3 Model 2", value: "1"),
              SelectionItem(label: "X3 Model 1", value: "2"),
            ],
            onChangeSingle: (SelectionItem? value) {},
            height: MediaQuery.sizeOf(context).height * 0.3,
          ),
          SizedBox(height: 24.height),
          AppText(
            title: "year".tr(),
            color: AppColors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 12.height),
          AppDropDownSelection.single(
            initialItem: SelectionItem(label: "2000", value: "0"),
            hint: "year".tr(),
            items: [
              SelectionItem(label: "2000", value: "0"),
              SelectionItem(label: "2005", value: "1"),
              SelectionItem(label: "500 bc", value: "2"),
            ],
            onChangeSingle: (SelectionItem? value) {},
            height: MediaQuery.sizeOf(context).height * 0.3,
          ),
          SizedBox(height: 24.height),
          // AppText(
          //   title: "color".tr(),
          //   color: AppColors.black,
          //   fontSize: 16,
          //   fontWeight: FontWeight.w500,
          // ),
          // SizedBox(height: 12.height),
          // AppDropDownSelection.single(
          //   initialItem: SelectionItem(label: "2000", value: "0"),
          //   hint: "color".tr(),
          //   items: [
          //     SelectionItem(label: "2000", value: "0"),
          //     SelectionItem(label: "2005", value: "1"),
          //     SelectionItem(label: "500 bc", value: "2"),
          //   ],
          //   onChangeSingle: (SelectionItem? value) {},
          //   height: MediaQuery.sizeOf(context).height * 0.3,
          // ),
          SizedBox(height: 12.height),
          AppDropDownSelection.single(
            hasCircle: true,
            initialItem:
                SelectionItem(label: "Space gray", value: AppColors.darkGray),
            hint: "year".tr(),
            items: [
              SelectionItem(label: "Space gray", value: AppColors.darkGray),
              SelectionItem(label: "Space black", value: AppColors.black),
              SelectionItem(label: "Space red", value: AppColors.red),
            ],
            onChangeSingle: (SelectionItem? value) {},
            height: MediaQuery.sizeOf(context).height * 0.3,
          ),
          SizedBox(height: 24.height),
        ],
      ),
    );
  }
}
