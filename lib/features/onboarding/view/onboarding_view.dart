import 'package:flutter/material.dart';
import 'package:bin_omaira_motors/features/onboarding/models/boarding.dart';
import 'package:bin_omaira_motors/features/onboarding/widgets/onboarding_item.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  var boardController = PageController();

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: boardController,
        itemBuilder: ((context, index) => OnboardingItem(
              model: BoardingModel.boarding[index],
              boardController: boardController,
              totalScreens: BoardingModel.boarding.length,
              currentIndex: currentIndex,
            )),
        itemCount: BoardingModel.boarding.length,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
