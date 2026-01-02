import 'package:flutter/material.dart';
import 'package:localization/core/theme/app_colors.dart';


class AppTheme {
  static ThemeData get lightmode=>ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
  
    scaffoldBackgroundColor: AppColors.white,

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.white,     
    ),

    iconTheme:const IconThemeData(
        color: AppColors.black
      ),

      

      textTheme:const TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.black
        ),
        bodyMedium: TextStyle(
          color: AppColors.black,
          fontSize: 15
        )
      ),
      cardTheme: CardThemeData(
        color: AppColors.lightgrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10))
      )

  );

  static ThemeData get darkMode =>ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColors.black,

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.black,
      foregroundColor: AppColors.white,
      titleTextStyle: TextStyle(
        color: AppColors.white,
      ),
    ),

     iconTheme:const IconThemeData(
        color: AppColors.white
      ),
      
     textTheme:const TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.white
        ),
        bodyMedium: TextStyle(
          color: AppColors.white,
          fontSize: 15
        )
      ),

      cardTheme: CardThemeData(
        color: AppColors.darkgrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10))
      )
  );
}