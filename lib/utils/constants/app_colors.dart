import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // To avoid creating instances

  //app basic colors
  static const Color primaryColor = Color(0xFF6200EE);
  static const Color secondaryColor = Color(0xFF03DAC6);
  static const Color accentColor = Color(0xFFF5F5F5);

  //app text colors
  static const Color textPrimaryColor = Color(0xFF000000);
  static const Color textSecondaryColor = Color(0xFF757575);

  //app background colors
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color backgroundDarkColor = Color(0xFF121212);

  //app error colors
  static const Color errorColor = Color(0xFFB00020);
  static const Color errorDarkColor = Color(0xFFCF6679);

  //button colors
  static const Color buttonColor = Color(0xFF6200EE);
  static const Color buttonDarkColor = Color(0xFF3700B3);
  static const Color buttonTextColor = Color(0xFFFFFFFF);

  // validation colors
  static const Color validationSuccessColor = Color(0xFF4CAF50);
  static const Color validationErrorColor = Color(0xFFF44336);
  // border colors
  static const Color borderColor = Color(0xFFBDBDBD);
  static const Color borderDarkColor = Color(0xFF424242);
  // shadow colors
  static const Color shadowColor = Color(0xFF000000);
  static const Color shadowDarkColor = Color(0xFF000000);

  //neutral shades
  static const Color neutralLight = Color(0xFFF5F5F5);
  static const Color neutralDark = Color(0xFF212121);
  // gradient colors
  static const Gradient gradientColors =
      //beginning color,ending color
      LinearGradient(
    colors: [
      Color(0xFF6200EE),
      Color(0xFF03DAC6),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  // text field colors
  static const Color textFieldBackgroundColor = Color(0xFFF5F5F5);
  static const Color textFieldBorderColor = Color(0xFFBDBDBD);
  static const Color textFieldFocusedBorderColor = Color(0xFF6200EE);
  static const Color textFieldErrorBorderColor = Color(0xFFF44336);
  static const Color textFieldLabelColor = Color(0xFF757575);
  static const Color textFieldHintColor = Color(0xFFBDBDBD);
  static const Color textFieldErrorColor = Color(0xFFF44336);
  static const Color textFieldSuccessColor = Color(0xFF4CAF50);

  // card colors
  static const Color cardBackgroundColor = Color(0xFFFFFFFF);
  static const Color cardShadowColor = Color(0xFF000000);
  static const Color cardBorderColor = Color(0xFFBDBDBD);
  static const Color cardTextColor = Color(0xFF000000);
  static const Color cardTextDarkColor = Color(0xFFFFFFFF);
  static const Color cardTextLightColor = Color(0xFF757575);
}
