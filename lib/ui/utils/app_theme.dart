import 'package:flutter/material.dart';
import 'app_colors.dart';
abstract class AppTheme {
  static const TextStyle appBarTextStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
  static const TextStyle taskTitleTextStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.primiary,
    overflow: TextOverflow.ellipsis,
  );
  static const TextStyle taskDescriptionTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14, color: AppColors.lightBlack
  );
  static const TextStyle bottomTitleTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.lightBlack,
  );
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.accent,
    primaryColor: AppColors.primiary,
    dividerColor: AppColors.primiary,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.primiary,
      titleTextStyle: appBarTextStyle,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primiary,
      // elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.primiary,
      unselectedItemColor: AppColors.grey,
      selectedIconTheme: IconThemeData(size: 32),
      unselectedIconTheme: IconThemeData(size: 32),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      // backgroundColor: AppColors.transparent,
      elevation: 0,
    ),
    textTheme: TextTheme(
      bodySmall: bottomTitleTextStyle.copyWith(color: AppColors.lightBlack),
      bodyMedium: taskDescriptionTextStyle.copyWith(color: AppColors.lightBlack),
      bodyLarge: appBarTextStyle.copyWith(color: AppColors.lightBlack),
    ),
    cardColor: AppColors.lightBlack,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(AppColors.primiary))),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.transparent,
    primaryColor: AppColors.primiaryDark,
    dividerColor: AppColors.accentDark,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.transparent,
      elevation: 0,
      titleTextStyle: appBarTextStyle.copyWith(color: AppColors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.accentDark,
        selectedIconTheme: IconThemeData(size: 32),
        unselectedIconTheme: IconThemeData(size: 26)
    ),
    textTheme: TextTheme(
      bodySmall: bottomTitleTextStyle.copyWith(color: AppColors.white,),
      bodyMedium: taskDescriptionTextStyle.copyWith(color: AppColors.white),
      bodyLarge: appBarTextStyle.copyWith(color: AppColors.white),
    ),
    cardColor: AppColors.lightBlack,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xff141A2E)))),
  );

}