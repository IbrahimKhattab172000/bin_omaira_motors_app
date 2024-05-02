import 'package:bin_omaira_motors/features/splash/view/pre_splash_view.dart';
import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/pop_scaffold.dart';
import 'package:bin_omaira_motors/network/network_layer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //?
    Network.lang = context.locale.languageCode;
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      child: const PreSplashView(),
      builder: (_, child) => AnnotatedRegion(
        value: const services.SystemUiOverlayStyle(
          systemNavigationBarColor: AppColors.black,
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
        ),
        child: KeyboardPopScaffold(
          child: MaterialApp(
            title: 'Bin Omaira Motors',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              hoverColor: Colors.transparent,
              useMaterial3: false,
              fontFamily: 'Gotham',
              scaffoldBackgroundColor: AppColors.background,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              focusColor: Colors.transparent,
              primaryColor: AppColors.primary,
            ),
            onGenerateRoute: CustomNavigator.onCreateRoute,
            navigatorKey: CustomNavigator.navigatorState,
            home: child,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: const [
              Locale('ar'),
              Locale('en'),
            ],
            locale: context.locale,
          ),
        ),
      ),
    );
  }
}
