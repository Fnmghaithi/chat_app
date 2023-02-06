import 'package:chat_app/common/utils/colors.dart';
import 'package:chat_app/extension/custom_theme_extension.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  ThemeData base = ThemeData.light();

  return base.copyWith(
      backgroundColor: CustomColors.backgroundLight,
      scaffoldBackgroundColor: CustomColors.backgroundLight,
      extensions: [CustomThemeExtension.lightMode],
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.greenLight,
        foregroundColor: CustomColors.backgroundLight,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      )));
}
