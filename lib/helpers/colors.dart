import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xff377a8c);
  static const Color secondary = Color(0xFFD0AA47);

  static Color secondColor = const Color(0xff1B899B);

  static Color signInButtonColor = const Color(0xff333E41);

  static Color redColor = const Color(0xffC2000B);
  static Color greenColor = const Color(0xff4CBD6B);
  static Color greyColor = const Color(0xffF0F0F0);
  static Color darkgreyColor = const Color(0xff6B7274);

  static const Color black = Colors.black;
  static const Color lightBlack = Color(0xFF3B3B3B);

  static const Color white = Color(0xffFEFCFF);

  static const Color lightGray = Color(0xFFCCCCCC);
  static const Color border = Color(0xFFEFEFEF);

  static const Color gray = Color(0xFF8B97A3);
  static const Color darkGray = Color(0xFF484848);
  static const Color lightPrimary = Color(0xFFE6DAEF);

  static const Color background = Color(0xff333E41);
  static const Color green = Color(0xff9DEA83);
  static const Color blue = Color(0xff3B5998);
  static const Color red = Color(0xffE84900);
  static const Color yellow = Color(0xffF2C247);

  static const Gradient backgroundGradient = LinearGradient(
    begin: Alignment.topRight,
    colors: [
      AppColors.lightPrimary,
      AppColors.white,
    ],
  );
}

extension AppColorsTheme on Color {
  Color get theme {
    return this;
  }
}
