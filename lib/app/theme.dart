import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF2F80EA); // TODO: thay bằng mã trong Figma
  static const primaryLight = Color(0xFFEAF3FF); // TODO
  static const accent = Color(0xFFFFC83D); // TODO
  static const income = Color(0xFF22C55E); // TODO
  static const expense = Color(0xFFEF4444); // TODO
  static const warning = Color(0xFFF59E0B); // TODO
  static const textMain = Color(0xFF1F2937); // TODO
  static const textSub = Color(0xFF6b7280); // TODO
  static const border = Color(0xFFE2E8F0);
}

class AppTextStyles {
  static const title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textMain,
  );
  static const heading = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textMain,
  );
  static const body = TextStyle(fontSize: 14, color: AppColors.textMain);
  static const caption = TextStyle(fontSize: 12, color: AppColors.textSub);
  static const amount = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textMain,
  );
}

class AppTheme {
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
    ),
    scaffoldBackgroundColor: AppColors.primaryLight,
    // fontFamily: 'Inter', // đặt nếu Figma dùng font riêng
  );
}
