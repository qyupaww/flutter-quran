import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';
import 'package:flutter_quran/extension/extensions.dart';

class DateLocationHeader extends StatelessWidget {
  final String date;
  final String location;

  const DateLocationHeader({
    super.key,
    required this.date,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          date,
          style: MyTheme.style.subtitle.copyWith(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: context.blackWhiteColor,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          location,
          style: MyTheme.style.subtitle.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: context.isDark
                ? MyTheme.color.secondary
                : MyTheme.color.primary,
          ),
        ),
      ],
    );
  }
}
