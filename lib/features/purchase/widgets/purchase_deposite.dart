// ignore_for_file: must_be_immutable

import 'package:bin_omaira_motors/features/purchase/bloc/purchase/cubit.dart';
import 'package:bin_omaira_motors/features/purchase/widgets/purchase_bank_item.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PurchaseDeposite extends StatelessWidget {
  PurchaseDeposite({
    super.key,
  });

  List<Map<String, dynamic>> banksData = [
    {
      "image": "al_ahly_bank",
      "title": "national_commercial_bank",
    },
    {
      "image": "riyad_bank",
      "title": "riyad_bank",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PurchaseCubit, PurchaseState>(
      builder: (context, state) {
        final cubit = PurchaseCubit.of(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.height),
              child: Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.circleExclamation,
                    color: AppColors.black,
                    size: 22,
                  ),
                  SizedBox(width: 8.width),
                  AppText(
                    title: "${"deposit".tr()}: ",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                  SizedBox(width: 4.width),
                  SizedBox(
                    width: 62.width,
                    child: const AppText(
                      title: "119.000",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  SizedBox(width: 4.width),
                  AppText(
                    title: "sar".tr(),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.height),
            AppText(
              title:
                  "1- ${"send_the_amount_shown_to_one_of_banking_details".tr()}",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.darkGray.withOpacity(0.6),
              padding: EdgeInsets.symmetric(horizontal: 16.height),
            ),
            SizedBox(height: 10.height),
            AppText(
              title: "2- ${"upload_bank_transfer_receipt".tr()}",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.darkGray.withOpacity(0.6),
              padding: EdgeInsets.symmetric(horizontal: 16.height),
            ),
            SizedBox(height: 16.height),
            SizedBox(
              height: 120.height,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: banksData.length,
                itemBuilder: (context, index) {
                  return PurchaseBankItem(
                    image: banksData[index]['image'],
                    title: banksData[index]['title'],
                    isSelected: cubit.currentBankIndex == index,
                    onTap: () {
                      cubit.changeBankIndex(index);
                    },
                  );
                },
                // children: [
                //   PurchaseBankItem(
                //     image: "al_ahly_bank",
                //     title: "national_commercial_bank",
                //     isSelected: true,
                //     onTap: () {},
                //   ),
                //   PurchaseBankItem(
                //     image: "riyad_bank",
                //     title: "riyad_bank",
                //     isSelected: false,
                //     onTap: () {},
                //   ),
                // ],
              ),
            ),
          ],
        );
      },
    );
  }
}
