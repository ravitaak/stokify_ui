import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    cardColor: kContentColorLightTheme,
    secondaryHeaderColor: kContentColorLightTheme1,
    dividerColor: kPrimaryColor,
    textTheme: TextTheme(
      bodySmall: light,
      bodyLarge: light,
      bodyMedium: light,
      titleSmall: light,
      titleLarge: light,
      titleMedium: light,
    ),
    canvasColor: kBottomColor,
    iconTheme: const IconThemeData(color: kContentColorLightTheme),
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ).copyWith(background: kContentColorLightTheme),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    canvasColor: kBottomColor,
    cardColor: kContentColorDarkTheme,
    dividerColor: kPrimaryColor,
    secondaryHeaderColor: kContentColorDarkTheme1,
    textTheme: TextTheme(
      bodySmall: dark,
      bodyLarge: dark,
      bodyMedium: dark,
      titleSmall: dark,
      titleLarge: dark,
      titleMedium: dark,
    ),
    iconTheme: const IconThemeData(color: kContentColorLightTheme),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
  );
}

TextStyle dark =
    const TextStyle(color: kContentColorLightTheme, fontFamily: "poppins");
TextStyle light =
    const TextStyle(color: kContentColorDarkTheme, fontFamily: "poppins");
