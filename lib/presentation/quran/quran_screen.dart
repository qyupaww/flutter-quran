import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/config/app_config.dart';
import 'package:flutter_quran/theme/theme.dart';

@RoutePage()
class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Al-Quran',
          style: MyTheme.style.title.copyWith(
            color: MyTheme.color.white,
            fontSize: AppSetting.setFontSize(24),
          ),
        ),
        backgroundColor: MyTheme.color.primary,
        iconTheme: IconThemeData(color: MyTheme.color.white),
      ),
      body: Center(
        child: Text(
          "Daftar Surah akan muncul di sini",
          style: MyTheme.style.subtitle,
        ),
      ),
    );
  }
}
