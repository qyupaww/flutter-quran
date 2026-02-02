import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';
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
    // We create a temp Hijri object to convert to Gregorian
    final tempHijri = HijriCalendar();
    tempHijri.hYear = year;
    tempHijri.hMonth = month;
    tempHijri.hDay = 1;
    final DateTime firstDayGregorian =
        tempHijri.hijriToGregorian(year, month, 1);

    // DateTime.weekday: 1=Mon, ..., 7=Sun
    // We want Monday as start? Or typically Sunday/Monday.
    // Let's assume standard Monday start for Indonesia app usually, or Sunday.
    // Let's use Sunday as start of week (Ahad).
    // If weekday is 7 (Sun), offset should be 0.
    // If 1 (Mon), offset 1.
    final int startOffset =
        firstDayGregorian.weekday == 7 ? 0 : firstDayGregorian.weekday;

    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Header Control
            _buildHeaderControl(),
            const SizedBox(height: 24),

            // Days Name
            _buildWeekDays(),
            const SizedBox(height: 12),

            // Calendar Grid
            _buildCalendarGrid(monthLength, startOffset),

            const SizedBox(height: 24),
            // Info Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: MyTheme.color.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.info_outline, color: MyTheme.color.primary),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "Menampilkan kalender Hijriyah berdasarkan perhitungan Umm al-Qura. Penetapan hari raya mungkin berbeda sesuai rukyatul hilal.",
                      style: MyTheme.style.text12.copyWith(
                        color: MyTheme.color.primary,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    )));
  }

  Widget _buildHeaderControl() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: _prevMonth,
          icon: Icon(Icons.arrow_back_ios,
              color: MyTheme.color.primary, size: 20),
        ),
        Column(
          children: [
            Text(
              "${_monthNames[_currentHijri.hMonth]} ${_currentHijri.hYear} H",
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
          onPressed: _nextMonth,
          icon: Icon(Icons.arrow_forward_ios,
              color: MyTheme.color.primary, size: 20),
        ),
      ],
    );
  }

  Widget _buildWeekDays() {
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

  Widget _buildCalendarGrid(int monthLength, int startOffset) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
        childAspectRatio: 1.0,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      // Items = blank spaces before start + days in month
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
                      color: MyTheme.color.primary.withOpacity(0.3),
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
    return now.hYear == _currentHijri.hYear &&
        now.hMonth == _currentHijri.hMonth &&
        now.hDay == day;
  }
}
