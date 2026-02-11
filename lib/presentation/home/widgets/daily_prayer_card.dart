import 'package:flutter/material.dart';
import 'package:flutter_quran/core/components/molecules/card/vertical_icon_text_card.dart';

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
    return VerticalIconTextCard(
      text: text,
      icon: icon,
    );
  }
}
