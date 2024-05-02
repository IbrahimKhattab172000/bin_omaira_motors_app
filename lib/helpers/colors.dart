import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xff377a8c);
  static const Color secondary = Color(0xFFD0AA47);
  static const Color deepLightPrimary = Color(0xFFebf2f4);

  static const Color secondColor = Color(0xff1B899B);

  static const Color signInButtonColor = Color(0xff333E41);

  static const Color redColor = Color(0xffC2000B);
  static const Color greenColor = Color(0xff4CBD6B);

  static const Color black = Colors.black;
  static const Color specialBlack = Color(0xff091417);

  static const Color lightBlack = Color(0xFF3B3B3B);

  static const Color white = Color(0xffFFFFFF);

  static const Color grey = Color(0xFFCCCCCC);

  // static const Color gray = Color(0xffF0F0F0);
  static const Color darkGray = Color(0xff6B7274);

  static const Color background = Color(0xff191919);
  static const Color green = Color(0xff9DEA83);
  static const Color blue = Color(0xff3B5998);
  static const Color red = Color(0xffE84900);
  static const Color yellow = Color(0xffF2C247);

  static const Gradient backgroundGradient = LinearGradient(
    begin: Alignment.topRight,
    colors: [
      AppColors.deepLightPrimary,
      AppColors.white,
    ],
  );
}

extension AppColorsTheme on Color {
  Color get theme {
    return this;
  }
}
