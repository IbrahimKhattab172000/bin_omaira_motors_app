import 'package:bin_omaira_motors/features/car_details/widgets/car_details_describtion.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/car_details_element.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/car_details_purchase_button.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/car_details_spesification.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/car_details_swiper.dart';
import 'package:bin_omaira_motors/features/car_details/widgets/card_details_info.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_appbar.dart';
import 'package:bin_omaira_motors/widgets/app_white_body.dart';
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
