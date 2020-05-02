import 'package:flutter/material.dart';

class AppTheme {
  static main(){
    return ThemeData(
      textTheme: TextTheme(
        title: TextStyle(color: AppColors.text),
        display1: TextStyle(color: AppColors.text),
        body1: TextStyle(color: AppColors.text),
      ),
    iconTheme: IconThemeData(
      color: Colors.white,
      )
    );
  }


  static whiteBackground(){
    return ThemeData(
      textTheme: TextTheme(
        title: TextStyle(color: AppColors.textColor2),
        display2: TextStyle(color: AppColors.textColor2),
        subtitle: TextStyle(color: AppColors.textColor2),
        overline: TextStyle(color: AppColors.textColor2),
        body2: TextStyle(color: AppColors.textColor2),
        button: TextStyle(color: AppColors.textColor2),
        caption: TextStyle(color: AppColors.textColor2),
        headline: TextStyle(color: AppColors.textColor2),
        display3: TextStyle(color: AppColors.textColor2),
        display4: TextStyle(color: AppColors.textColor2),
        subhead: TextStyle(color: AppColors.textColor2),
        display1: TextStyle(color: AppColors.textColor2),
        body1: TextStyle(color: AppColors.textColor2),
      ),
      iconTheme: IconThemeData(
        color: AppColors.textColor2
      )
    );
  }
}

class AppColors{
  static const Color text = Colors.white;
  static const Color background = Colors.blue;
  static const Color textColor2 = Colors.black;
}