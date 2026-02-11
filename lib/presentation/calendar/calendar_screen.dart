import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/extension/app_color_extension.dart';
import 'package:flutter_quran/presentation/calendar/widgets/calendar_header.dart';
import 'package:flutter_quran/presentation/calendar/widgets/calendar_week_days.dart';
import 'package:flutter_quran/presentation/calendar/widgets/hijri_calendar_grid.dart';
import 'package:flutter_quran/presentation/calendar/widgets/islamic_events_card.dart';
import 'package:hijri/hijri_calendar.dart';

@RoutePage()
class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late HijriCalendar _currentHijri;

  @override
  void initState() {
    super.initState();
    // Default to 'en' internally but we will map names manually
    _currentHijri = HijriCalendar.now();
  }

  // Manual Translation Map
  final Map<int, String> _monthNames = {
    1: 'Muharram',
    2: 'Safar',
    3: 'Rabiul Awal',
    4: 'Rabiul Akhir',
    5: 'Jumadil Awal',
    6: 'Jumadil Akhir',
    7: 'Rajab',
    8: 'Sya\'ban',
    9: 'Ramadhan',
    10: 'Syawal',
    11: 'Dzulqaidah',
    12: 'Dzulhijjah',
  };

  void _prevMonth() {
    setState(() {
      if (_currentHijri.hMonth == 1) {
        _currentHijri.hYear--;
        _currentHijri.hMonth = 12;
      } else {
        _currentHijri.hMonth--;
      }
      _currentHijri.hDay = 1; // Reset to 1st to avoid overflow issues
    });
  }

  void _nextMonth() {
    setState(() {
      if (_currentHijri.hMonth == 12) {
        _currentHijri.hYear++;
        _currentHijri.hMonth = 1;
      } else {
        _currentHijri.hMonth++;
      }
      _currentHijri.hDay = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Calculate Month Data
    final int monthLength = _currentHijri.lengthOfMonth;
    final int year = _currentHijri.hYear;
    final int month = _currentHijri.hMonth;

    // Find weekday of 1st day of this Hijri month
    final tempHijri = HijriCalendar();
    tempHijri.hYear = year;
    tempHijri.hMonth = month;
    tempHijri.hDay = 1;
    final DateTime firstDayGregorian =
        tempHijri.hijriToGregorian(year, month, 1);

    // DateTime.weekday: 1=Mon, ..., 7=Sun, we map to Sunday=0
    final int startOffset =
        firstDayGregorian.weekday == 7 ? 0 : firstDayGregorian.weekday;

    return Scaffold(
      backgroundColor: context.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Header Control
                CalendarHeader(
                  monthName: _monthNames[_currentHijri.hMonth] ?? "",
                  year: "${_currentHijri.hYear}",
                  onPrev: _prevMonth,
                  onNext: _nextMonth,
                ),
                const SizedBox(height: 24),

                // Days Name
                const CalendarWeekDays(),
                const SizedBox(height: 12),

                // Calendar Grid
                HijriCalendarGrid(
                  monthLength: monthLength,
                  startOffset: startOffset,
                  displayedMonth: month,
                  displayedYear: year,
                ),

                const SizedBox(height: 24),

                // Islamic Events
                IslamicEventsCard(
                  hijriMonth: _currentHijri.hMonth,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
