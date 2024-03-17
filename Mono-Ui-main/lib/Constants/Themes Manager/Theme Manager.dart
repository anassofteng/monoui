import 'package:flutter/material.dart';

import '../Colors Manager/colors_manager.dart';

class AppTheme
{
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColor.whiteColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColor.blackColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColor.secondaryColor,
      unselectedItemColor: AppColor.greyColor,
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
