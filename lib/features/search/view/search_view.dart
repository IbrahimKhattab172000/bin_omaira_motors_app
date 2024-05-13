import 'package:bin_omaira_motors/features/search/widgets/search_results_list.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/kian_routes.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:bin_omaira_motors/widgets/app_text_field.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 148.height,
                color: AppColors.black,
                width: double.infinity,
                child: Column(
                  children: [
                    AppText(
                      padding: const EdgeInsets.only(top: 22),
                      title: "search_results".tr(),
                      color: AppColors.white,
                      textAlign: TextAlign.center,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        children: [
                          Expanded(
                            child: AppTextField(
                              textColor: AppColors.darkGray,
                              cursorColor: AppColors.darkGray,
                              hint: "what_you_looking_for".tr(),
                              hintColor: AppColors.darkGray,
                              leading: const Icon(
                                FontAwesomeIcons.magnifyingGlass,
                                color: AppColors.darkGray,
                                size: 24,
                              ),
                              fillColor: AppColors.black,
                            ),
                          ),
                          SizedBox(width: 16.width),
                          InkWell(
                            onTap: () {
                              CustomNavigator.push(Routes.SEARCHFILTER);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              width: 54.width,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.darkGray, width: 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.asset(
                                Utils.getAssetPNGPath("settings"),
                                height: 16,
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height - 290.height,
                child: const AppWhiteBody(
                  child:
                      //  SerachNoResultsWidget(),
                      Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(height: 24.height),
                      SearchResultsList(),
                      // SizedBox(height: 24.height),
                      // const SearchRecommendationText(),
                      // SizedBox(height: 24.height),
                      // const SearchRecommendationList(),
                      // SizedBox(height: 24.height),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
