import 'dart:developer';

import 'package:bin_omaira_motors/features/forgot_password/view/forgot_password_view.dart';
import 'package:bin_omaira_motors/features/new_password/view/new_password_view.dart';
import 'package:bin_omaira_motors/features/notifications/view/notifications_view.dart';
import 'package:bin_omaira_motors/features/onboarding/view/onboarding_view.dart';
import 'package:bin_omaira_motors/features/order_details/view/order_details_view.dart';
import 'package:bin_omaira_motors/features/orders/view/orders_view.dart';
import 'package:bin_omaira_motors/features/search/view/search_view.dart';
import 'package:bin_omaira_motors/features/search_filter/view/search_filter_view.dart';
import 'package:bin_omaira_motors/features/signin/view/signin_view.dart';
import 'package:bin_omaira_motors/features/signup/view/signup_view.dart';
import 'package:bin_omaira_motors/features/splash/view/pre_splash_view.dart';
import 'package:bin_omaira_motors/features/splash/view/splash_view.dart';
import 'package:bin_omaira_motors/features/success/view/done_view.dart';
import 'package:bin_omaira_motors/features/verification/view/verification_view.dart';
import 'package:bin_omaira_motors/features/welcome/view/welcome_view.dart';
import 'package:bin_omaira_motors/helpers/kian_routes.dart';
import 'package:bin_omaira_motors/main_pages/kian_nav/kian_nav_view.dart';
import 'package:bin_omaira_motors/my_app.dart';
import 'package:flutter/material.dart';

const begin = Offset(0.0, 1.0);
const end = Offset.zero;
const curve = Curves.bounceInOut;
var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

abstract class CustomNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();
  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();
  static final GlobalKey<ScaffoldMessengerState> scaffoldState =
      GlobalKey<ScaffoldMessengerState>();

  static BuildContext context = navigatorState.currentContext!;

  static Route<dynamic> onCreateRoute(RouteSettings settings) {
    log('Routes => ${settings.name}');

    PageRouteBuilder<dynamic> pageRoute(Widget widget) => PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => widget,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
    switch (settings.name) {
      case Routes.APP:
        return pageRoute(const MyApp());
      case Routes.PRESPLASH:
        return pageRoute(const PreSplashView());
      case Routes.SPLASH:
        return pageRoute(const SplashView());

      case Routes.BOARDING:
        return pageRoute(const OnBoardingView());

      case Routes.WELCOME:
        return pageRoute(const WelcomeViewScreen());

      case Routes.SIGNIN:
        return pageRoute(const SigninView());

      case Routes.SIGNUP:
        return pageRoute(const SignupView());

      case Routes.FORGOTPASSWORD:
        return pageRoute(const ForgotPasswordView());

      case Routes.VERIFICATION:
        return pageRoute(const VerificationView());

      case Routes.NEWPASSWORD:
        return pageRoute(const NewPasswordView());

      case Routes.SUCCESSPASSWORD:
        return pageRoute(
          const SuccessView(
            imagePath: "new_password_done",
            subtitle: "new_pass_done_subtitle",
            title: "new_pass_done_title",
            buttonTitle: "back_to_login",
          ),
        );
      case Routes.SUCCESSREGISTER:
        return pageRoute(
          const SuccessView(
            title: "successfully_registered",
            subtitle: "successfully_registered_subtitle",
            imagePath: "successfully_registered",
            buttonTitle: "continue",
          ),
        );

      case Routes.MAIN:
        return pageRoute(const MainPage());

      case Routes.NOTIFICATIONS:
        return pageRoute(const NotificationsView());

      case Routes.SEARCH:
        return pageRoute(const SearchView());

      case Routes.SEARCHFILTER:
        return pageRoute(const SearchFilterView());

      case Routes.OREDERS:
        return pageRoute(const OrdersView());
      //accepted //new //declined

      case Routes.OREDERDETAILS:
        return pageRoute(const OrderDetailsView(
          type: 'new',
        ));

//?Good example
      // case Routes.UPDATE_BRANCH:
      //   return pageRoute(
      //     BlocProvider(
      //       create: (context) => UpdateBranchesBloc(settings.arguments as UpdateBranchDataModel),
      //       child: UpdateBranchesPage(branchInfo: settings.arguments as UpdateBranchDataModel),
      //     ),
      //   );
      // case Routes.CLASS_DETAILS:
      //   return pageRoute(
      //     MultiBlocProvider(
      //       providers: [
      //         BlocProvider(
      //             create: (context) => ClassKidsBloc((settings.arguments as DayCareClass).id ?? 0)..getKids(),
      //             lazy: false),
      //         BlocProvider(
      //             create: (context) =>
      //                 ClassTeachersBloc((settings.arguments as DayCareClass).id ?? 0)..getTeachers(),
      //             lazy: false),
      //         BlocProvider(
      //             create: (context) =>
      //                 ClassScheduleBloc((settings.arguments as DayCareClass).id ?? 0)..getSchedules(),
      //             lazy: false),
      //       ],
      //       child: ClassDetailsPage(model: settings.arguments as DayCareClass),
      //     ),
      //   );

      default:
        return MaterialPageRoute(builder: (_) => const MyApp());
    }
  }

  static pop({dynamic result}) {
    if (navigatorState.currentState!.canPop()) {
      navigatorState.currentState!.pop(result);
    }
  }

  static Future<dynamic> push(
    String routeName, {
    arguments,
    bool replace = false,
    bool clean = false,
  }) {
    if (clean) {
      return navigatorState.currentState!.pushNamedAndRemoveUntil(
          routeName, (_) => false,
          arguments: arguments);
    } else if (replace) {
      return navigatorState.currentState!
          .pushReplacementNamed(routeName, arguments: arguments);
    } else {
      return navigatorState.currentState!
          .pushNamed(routeName, arguments: arguments);
    }
  }
}
