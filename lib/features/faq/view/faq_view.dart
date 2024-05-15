import 'package:bin_omaira_motors/features/faq/widgets/faq_logo.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_expand_down_item.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FaqView extends StatelessWidget {
  FaqView({
    super.key,
  });

  final List<Map<String, String>> faqItems = [
    {
      "question": "when_is_the_exchange_and_return_available".tr(),
      "answer": "dummy_text".tr(),
    },
    {
      "question": "when_is_the_exchange_and_return_available".tr(),
      "answer": "dummy_text".tr(),
    },
    {
      "question": "when_is_the_exchange_and_return_available".tr(),
      "answer": "dummy_text".tr(),
    },
    {
      "question": "when_is_the_exchange_and_return_available".tr(),
      "answer": "dummy_text".tr(),
    },
    {
      "question": "when_is_the_exchange_and_return_available".tr(),
      "answer": "dummy_text".tr(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "faq".tr(),
        titleColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            CustomNavigator.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
            size: 22,
          ),
        ),
      ),
      body: AppWhiteBody(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 32.height),
              const FaqLogo(),
              ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 48),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: faqItems.length,
                separatorBuilder: (context, index) => Column(
                  children: [
                    SizedBox(height: 14.height),
                    Container(
                      color: AppColors.grey,
                      width: double.infinity,
                      height: 1,
                    ),
                    SizedBox(height: 14.height),
                  ],
                ),
                itemBuilder: (context, index) {
                  return ExpandDownItem(
                    index: index,
                    question: faqItems[index]['question'] ?? "",
                    answer: faqItems[index]['answer'] ?? "",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
