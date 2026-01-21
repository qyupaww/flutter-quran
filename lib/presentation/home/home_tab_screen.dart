import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/config/app_config.dart';
import 'package:flutter_quran/presentation/home/widgets/daily_prayer_section.dart';
import 'package:flutter_quran/presentation/home/widgets/custom_app_bar.dart';
import 'package:flutter_quran/presentation/home/widgets/prayer_time_card.dart';
import 'package:flutter_quran/presentation/home/widgets/prayer_tracker_card.dart';

@RoutePage()
class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        dateText: "21 Januari 2026",
        titleText: "Wilayah Tanjungsari, Sumedang, Jawa Barat",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PrayerTimeCard(
                  prayerName: "Fajr",
                  startTime: "04:20 AM",
                  endTime: "05:40 AM",
                  hours: "02",
                  minutes: "30",
                  seconds: "15",
                ),
                Space.h(20),
                const PrayerTrackerCard(),
                Space.h(30),
                const DailyPrayerSection(),
                Space.h(100), // Bottom padding for FAB
              ],
            ),
          ),
        ),
      ),
    );
  }
}
