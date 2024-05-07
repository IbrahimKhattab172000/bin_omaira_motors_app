import 'package:flutter/material.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:card_swiper/card_swiper.dart';

class CarDetailsSwiper extends StatefulWidget {
  const CarDetailsSwiper({Key? key}) : super(key: key);

  @override
  State<CarDetailsSwiper> createState() => _CarDetailsSwiperState();
}

class _CarDetailsSwiperState extends State<CarDetailsSwiper> {
  late SwiperController _swiperController;

  @override
  void initState() {
    _swiperController = SwiperController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200.height,
          child: Swiper(
            controller: _swiperController,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    Utils.getAssetPNGPath("home_best_card"),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            itemCount: 3,
            pagination: const SwiperPagination(),
          ),
        ),
        Positioned(
          left: 4,
          top: 0,
          bottom: 0,
          child: InkWell(
            onTap: () {
              _swiperController.previous();
            },
            child: Container(
              height: 30.height,
              width: 30.height,
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(10),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 14,
              ),
            ),
          ),
        ),
        Positioned(
          right: 4,
          top: 0,
          bottom: 0,
          child: InkWell(
            onTap: () {
              _swiperController.next();
            },
            child: Container(
              height: 30.height,
              width: 30.height,
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(10),
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
