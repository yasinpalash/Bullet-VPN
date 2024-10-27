import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpn/core/common/styles/global_text_style.dart';
import 'package:vpn/core/utils/constants/colors.dart';

class App_BarTheme {
  App_BarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    foregroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    elevation: 4,
    backgroundColor:AppColors.appBar,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: getTextStyle(
        color: AppColors.text,
        fontSize: 20,
        fontWeight: FontWeight.bold,
    ),

    actionsIconTheme: const IconThemeData(color: Colors.white), // To maintain consistency
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle.light, // Light icons for status bar
  );

  static final AppBarTheme darkAppBarTheme = AppBarTheme(
    foregroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    elevation: 2, // Slight elevation for some depth
    backgroundColor: const Color(0xFF121212), // Darker black for better contrast in dark mode
    iconTheme: const IconThemeData(color: Colors.white), // White icons for better contrast and consistency
    titleTextStyle: getTextStyle(
      color: Colors.white, // White text for better readability in dark mode
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    actionsIconTheme: const IconThemeData(color: AppColors.accent), // Use accent color for a pop on action icons
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle.light, // Light icons for the system status bar
  );

}
