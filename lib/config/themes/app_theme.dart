import 'package:check_internet_connection/config/utils/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
      primaryColor: AppColors.primary,
      hintColor: AppColors.hint,
      brightness: Brightness.light,
      textTheme: const TextTheme(
          button: TextStyle(fontSize: 14, color: Colors.black)));
}
