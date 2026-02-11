import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';

class TimeBox extends StatelessWidget {
  final String value;
  final String label;

  const TimeBox({
    super.key,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: MyTheme.color.secondary.withAlpha(10),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              value,
              style: MyTheme.style.subtitle.copyWith(
                color: MyTheme.color.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: MyTheme.style.text12.copyWith(
            color: MyTheme.color.secondary,
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ],
    );
  }
}
