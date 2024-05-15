import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/images.dart';
import 'package:bin_omaira_motors/navigation/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/navigation/kian_routes.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      // RouteUtils.navigateAndPopAll(const OnBoardingView());
      CustomNavigator.push(Routes.BOARDING);
    });
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.decelerate);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            MyImages.splash,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          AnimatedBackground(animation: _animation),
          const AnimatedLogoImage(),
          const AnimatedGhostSplash(),
          const AnimatedText(),
        ],
      ),
    );
  }
}

class AnimatedBackground extends StatelessWidget {
  const AnimatedBackground({
    super.key,
    required Animation<double> animation,
  }) : _animation = animation;

  final Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          color: AppColors.black.withOpacity(_animation.value * 0.65),
          width: double.infinity,
          height: double.infinity,
        );
      },
    );
  }
}

class AnimatedLogoImage extends StatelessWidget {
  const AnimatedLogoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder<double>(
      // animation opacity range
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      builder: (context, value, _) {
        return Positioned(
          top: MediaQuery.sizeOf(context).height * 0.3,
          child: Opacity(
            opacity: value,
            child: SizedBox(
              width: 172.width,
              height: 124.height,
              child: Image.asset(
                Utils.getAssetPNGPath("logo"),
              ),
            ),
          ),
        );
      },
    );
  }
}

class AnimatedGhostSplash extends StatelessWidget {
  const AnimatedGhostSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder<double>(
      // animation range
      tween: Tween(begin: -140, end: 80),
      duration: const Duration(seconds: 1),

      curve: Curves.decelerate,
      builder: (context, value, _) {
        return Positioned(
          left: value,
          top: MediaQuery.sizeOf(context).height * 0.5,
          child: SizedBox(
            width: 190.width,
            height: 172.height,
            child: Image.asset(
              Utils.getAssetPNGPath("ghost_splash"),
            ),
          ),
        );
      },
    );
  }
}

class AnimatedText extends StatefulWidget {
  const AnimatedText({Key? key}) : super(key: key);

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder<double>(
      // animation range
      tween: Tween(
        begin: -140,
        end: MediaQuery.sizeOf(context).height * 0.12,
      ),
      duration: const Duration(seconds: 1),

      curve: Curves.decelerate,
      builder: (context, value, _) {
        return Positioned(
          bottom: value,
          left: 44,
          right: 44,
          // animated horizontal position
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: "Say hello ",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: "to your next awesome vehicle",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                softWrap: true,
              ),
              SizedBox(height: 48.height),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppText(
                    title: "Powered by",
                    color: AppColors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                  SizedBox(width: 12.width),
                  const AppText(
                    title: "Kian Al-Rqmiah",
                    color: AppColors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
