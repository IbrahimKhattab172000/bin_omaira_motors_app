import 'package:bin_omaira_motors/features/splash/view/splash_view.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/images.dart';
import 'package:bin_omaira_motors/helpers/routes.dart';
import 'package:flutter/material.dart';

class PreSplashView extends StatefulWidget {
  const PreSplashView({super.key});

  @override
  State<PreSplashView> createState() => _PreSplashViewState();
}

class _PreSplashViewState extends State<PreSplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      RouteUtils.navigateAndPopAll(const SplashView());

      // RouteUtils.navigateAndPopAll(SecondSplashView());

      // if (AppStorage.isLogged) {
      //   HomeBloc.of(context).add(Get());

      //   RouteUtils.navigateAndPopAll(const HomeView());
      // } else if (AppStorage.isOnBoardingComplete) {
      //   HomeBloc.of(context).add(Get());

      //   RouteUtils.navigateAndPopAll(const LoginView());
      // } else {
      //   HomeBloc.of(context).add(Get());

      //   RouteUtils.navigateAndPopAll(const OnBoardingView());
      // }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Image.asset(
        MyImages.splash,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
