import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpn/core/common/styles/global_text_style.dart';

class App_BarTheme {
  App_BarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    foregroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    elevation: 3,
    backgroundColor: Colors.blue[800],
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: getTextStyle(
        color: Colors.white,
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
    elevation: 0,
    backgroundColor: Colors.grey[850], // Darker background for dark theme
    iconTheme: const IconThemeData(color: Colors.blueAccent), // Accent color for contrast
    titleTextStyle: getTextStyle(
      color: Colors.blueAccent,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    actionsIconTheme: const IconThemeData(color: Colors.blueAccent),
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle.light, // Control status bar color and icons
  );
}
