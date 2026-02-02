import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';
import 'package:hijri/hijri_calendar.dart';

class HijriCalendarGrid extends StatelessWidget {
  final int monthLength;
  final int startOffset;
  final int displayedMonth;
  final int displayedYear;

  const HijriCalendarGrid({
    super.key,
    required this.monthLength,
    required this.startOffset,
    required this.displayedMonth,
    required this.displayedYear,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        childAspectRatio: 1.0,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: startOffset + monthLength,
      itemBuilder: (context, index) {
        if (index < startOffset) {
          return const SizedBox();
        }

        final int day = index - startOffset + 1;
        final bool isToday = _isToday(day);

        return Container(
          decoration: BoxDecoration(
            color: isToday ? MyTheme.color.primary : Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: isToday ? null : Border.all(color: Colors.grey.shade200),
            boxShadow: isToday
                ? [
                    BoxShadow(
                      color: MyTheme.color.primary.withValues(alpha: 0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    )
                  ]
                : null,
          ),
          child: Center(
            child: Text(
              "$day",
              style: MyTheme.style.text16.copyWith(
                fontWeight: isToday ? FontWeight.bold : FontWeight.w500,
                color: isToday ? Colors.white : Colors.black87,
              ),
            ),
          ),
        );
      },
    );
  }

  bool _isToday(int day) {
    final now = HijriCalendar.now();
    return now.hYear == displayedYear &&
        now.hMonth == displayedMonth &&
        now.hDay == day;
  }
}
