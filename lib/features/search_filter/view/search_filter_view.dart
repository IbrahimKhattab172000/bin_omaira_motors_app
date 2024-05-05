import 'package:bin_omaira_motors/features/search_filter/widgets/search_filter_app_bar.dart';
import 'package:bin_omaira_motors/features/search_filter/widgets/search_filter_car_type_text.dart';
import 'package:bin_omaira_motors/features/search_filter/widgets/search_filter_forms.dart';
import 'package:bin_omaira_motors/features/search_filter/widgets/serach_filter_car_type_list.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_button.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SearchFilterView extends StatelessWidget {
  const SearchFilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchFilterAppBar(),
      body: AppWhiteBody(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.height),
              const SerachFilterCarTypeText(),
              SizedBox(height: 16.height),
              const SearchFilterCarTypeList(),
              SizedBox(height: 32.height),
              const SearchFilterForms(),
              SizedBox(height: 40.height),
              const SearchFilterButtons(),
              SizedBox(height: Utils.bottomDevicePadding),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchFilterButtons extends StatelessWidget {
  const SearchFilterButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppButton(
            title: "confirm_filters".tr(),
            onTap: () {},
          ),
          SizedBox(height: 16.height),
          AppButton(
            title: "clear_filters".tr(),
            color: AppColors.grey,
            titleColor: AppColors.black,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
