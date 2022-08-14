import 'package:flutter/material.dart';

class AppColors {
  static const accentGrey1 = Color(0xFF0d1b2a);
  static const primaryWhite = Color(0xFFedf2f4);
}

class AppStyles {
  static const headText1 = TextStyle(
    color: AppColors.primaryWhite,
    fontSize: 100,
    fontFamily: 'Sans Serif Pro Semibold',
    letterSpacing: 1.5,
    fontWeight: FontWeight.w500,
  );

  static const subheadText1 = TextStyle(
    color: AppColors.primaryWhite,
    fontSize: 40,
    fontFamily: 'Sans Serif Pro Light',
    letterSpacing: 1,
    fontWeight: FontWeight.w500,
  );
}
