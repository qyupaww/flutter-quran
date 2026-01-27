import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_quran/config/app_config.dart';

// Text Theme
class Style {
  // Singleton instance
  static final Style _instance = Style._internal();

  // Factory constructor returns the same instance
  factory Style() => _instance;

  // Private constructor
  Style._internal();

  TextStyle title = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(36),
    fontWeight: FontWeight.w600,
  );

  TextStyle semiTitle = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(36),
    fontWeight: FontWeight.w300,
  );

  TextStyle subtitle = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(32),
  );

  TextStyle subtitleLight = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(32),
    fontWeight: FontWeight.w100,
  );

  TextStyle text18 = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(54),
  );

  TextStyle text16 = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(48),
  );

  TextStyle text14 = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(42),
  );

  TextStyle text12 = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(36),
  );

  TextStyle arabicText = GoogleFonts.amiri(
    fontSize: AppSetting.setFontSize(84),
  );
}
