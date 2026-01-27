import 'package:flutter/material.dart';
import 'package:flutter_quran/extension/app_color_extension.dart';
import 'package:flutter_quran/theme/theme.dart';

class QuranSearchBar extends StatelessWidget {
  const QuranSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.isDark ? MyTheme.color.greyDark : Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: Colors.grey[400]),
          hintText: "Cari Surah berdasarkan nama atau nomor...",
          hintStyle: MyTheme.style.text14.copyWith(color: Colors.grey[400]),
          border: InputBorder.none,
        ),
        style: MyTheme.style.text14.copyWith(color: context.blackWhiteColor),
      ),
    );
  }
}
