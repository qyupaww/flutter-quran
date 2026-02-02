import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';

class CalendarWeekDays extends StatelessWidget {
  const CalendarWeekDays({super.key});

  @override
  Widget build(BuildContext context) {
    final days = ["Ahad", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: days
          .map((e) => Expanded(
                child: Center(
                  child: Text(
                    e.substring(0, 3), // Ahd, Sen, Sel...
                    style: MyTheme.style.text14.copyWith(
                      fontWeight: FontWeight.bold,
                      color: MyTheme.color.grey,
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
