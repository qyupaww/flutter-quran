import 'package:flutter/material.dart';
import 'package:flutter_quran/core/components/atoms/primary_textfield.dart';
import 'package:flutter_quran/extension/app_color_extension.dart';
import 'package:flutter_quran/theme/theme.dart';

class QuranSearchBar extends StatefulWidget {
  const QuranSearchBar({super.key});

  @override
  State<QuranSearchBar> createState() => _QuranSearchBarState();
}

class _QuranSearchBarState extends State<QuranSearchBar> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryTextfield(
      title: "",
      hintText: "Cari Surah berdasarkan nama atau nomor...",
      prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
      enableOutline: false,
      radius: 16,
      backgroundColor:
          context.isDark ? MyTheme.color.greyDark : Colors.grey[100],
      controller: _controller,
      action: TextInputAction.search,
      type: TextInputType.text,
      validator: (value) => null,
    );
  }
}
