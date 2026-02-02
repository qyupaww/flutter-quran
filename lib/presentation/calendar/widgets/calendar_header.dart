import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';

class CalendarHeader extends StatelessWidget {
  final String monthName;
  final String year;
  final VoidCallback onPrev;
  final VoidCallback onNext;

  const CalendarHeader({
    super.key,
    required this.monthName,
    required this.year,
    required this.onPrev,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onPrev,
          icon: Icon(Icons.arrow_back_ios,
              color: MyTheme.color.primary, size: 20),
        ),
        Column(
          children: [
            Text(
              "$monthName $year H",
              style: MyTheme.style.title.copyWith(
                fontSize: 20,
                color: MyTheme.color.primary,
              ),
            ),
            Text(
              "Kalender Hijriyah",
              style: MyTheme.style.text12.copyWith(color: Colors.grey),
            ),
          ],
        ),
        IconButton(
          onPressed: onNext,
          icon: Icon(Icons.arrow_forward_ios,
              color: MyTheme.color.primary, size: 20),
        ),
      ],
    );
  }
}
