import 'package:bin_omaira_motors/features/car_details/widgets/car_details_describtion.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/car_details_purchase_button.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/car_details_spesification.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/car_details_swiper.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/card_details_info.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "Tesla",
        titleColor: AppColors.white,
        leading: IconButton(
          onPressed: () => CustomNavigator.pop(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: AppWhiteBody(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: 32.height),
                    const CarDetailsInfo(),
                    SizedBox(height: 32.height),
                    const CarDetailsSwiper(),
                    SizedBox(height: 32.height),
                    const CarDetailsDescribtion(),
                    SizedBox(height: 32.height),
                    const CarDetailsSpesification(),
                    SizedBox(height: 32.height),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                  ),
                  child: Column(
                    children: [
                      const CarDetailsPurchaseButton(),
                      SizedBox(height: 24.height),
                      const CarDetailsReservationElement(),
                      SizedBox(height: Utils.bottomDevicePadding),
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

class CarDetailsReservationElement extends StatelessWidget {
  const CarDetailsReservationElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 4.width),
        AppText(
          title: "reserve_with_only".tr(),
          fontSize: 12,
          color: AppColors.primary,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(width: 4.width),
        SizedBox(
          width: 62.width,
          child: const AppText(
            title: "119.000",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            overflow: TextOverflow.clip,
          ),
        ),
        SizedBox(width: 4.width),
        AppText(
          title: "sar".tr(),
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: AppColors.primary,
        ),
        SizedBox(width: 4.width),
        AppText(
          title: "without_vat".tr(),
          fontSize: 12,
          color: AppColors.primary,
          fontWeight: FontWeight.w300,
        ),
        SizedBox(width: 8.width),
        const Icon(
          Icons.arrow_forward_ios,
          size: 12,
          color: AppColors.primary,
        ),
      ],
    );
  }
}
