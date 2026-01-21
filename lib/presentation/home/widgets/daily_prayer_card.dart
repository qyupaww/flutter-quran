import 'package:flutter/material.dart';

import 'package:flutter_quran/theme/theme.dart';
import 'package:flutter_quran/extension/extensions.dart';

class DailyPrayerCard extends StatelessWidget {
  final String text;
  final IconData icon;
  const DailyPrayerCard({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color:
              context.isDark ? MyTheme.color.secondary : MyTheme.color.primary,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon,
              color: context.isDark
                  ? MyTheme.color.secondary
                  : MyTheme.color.primary,
              size: 28),
          Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: MyTheme.style.subtitle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: context.blackWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
