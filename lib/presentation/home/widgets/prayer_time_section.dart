import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';

import 'package:flutter_quran/extension/extensions.dart';

class PrayerTimeSection extends StatelessWidget {
  final String text;
  final IconData icon;
  final String time;
  const PrayerTimeSection({
    super.key,
    required this.text,
    required this.icon,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: context.blackWhiteColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 2),
          Icon(
            icon,
            color: MyTheme.color.secondary,
            size: 20,
          ),
          const SizedBox(height: 2),
          Text(
            time,
            style: TextStyle(
              color: context.blackWhiteColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
