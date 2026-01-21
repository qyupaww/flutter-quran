import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/config/app_config.dart';
import 'package:flutter_quran/presentation/home/widgets/daily_prayer_card.dart';
import 'package:flutter_quran/presentation/home/widgets/custom_app_bar.dart';
import 'package:flutter_quran/presentation/home/widgets/prayer_time_card.dart';
import 'package:flutter_quran/presentation/home/widgets/prayer_time_section.dart';

import '../../extension/app_color_extension.dart';
import '../../theme/theme.dart';

@RoutePage()
class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        dateText: "21 Januari 2026",
        titleText: "Wilayah Tanjungsari, Sumedang dan sekitarnya",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PrayerTimeCard(
                  prayerName: "Dzuhur",
                  startTime: "11:40 AM",
                  endTime: "03:00 PM",
                  hours: "02",
                  minutes: "30",
                  seconds: "15",
                ),
                Space.h(8),
                const Row(
                  children: [
                    Expanded(
                      child: PrayerTimeSection(
                        text: "Subuh",
                        icon: Icons.cloud_outlined,
                        time: "04.00",
                      ),
                    ),
                    Expanded(
                      child: PrayerTimeSection(
                        text: "Dzuhur",
                        icon: Icons.wb_sunny_outlined,
                        time: "11:40",
                      ),
                    ),
                    Expanded(
                      child: PrayerTimeSection(
                        text: "Ashar",
                        icon: Icons.wb_sunny,
                        time: "15.00",
                      ),
                    ),
                    Expanded(
                      child: PrayerTimeSection(
                        text: "Maghrib",
                        icon: Icons.wb_twilight_outlined,
                        time: "18.00",
                      ),
                    ),
                    Expanded(
                      child: PrayerTimeSection(
                        text: "Isya",
                        icon: Icons.nightlight_round,
                        time: "19.00",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Do'a Harian",
                    style: MyTheme.style.title.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: context.blackWhiteColor,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                GridView.count(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1.4,
                  children: const [
                    DailyPrayerCard(
                      text: "Do'a Makan",
                      icon: Icons.rice_bowl,
                    ),
                    DailyPrayerCard(
                      text: "Do'a Belajar",
                      icon: Icons.menu_book,
                    ),
                    DailyPrayerCard(
                      text: "Do'a Tidur",
                      icon: Icons.bed, // Atau Icons.nightlight_round
                    ),
                    DailyPrayerCard(
                      text: "Masuk Masjid",
                      icon: Icons.mosque,
                    ),
                    DailyPrayerCard(
                      text: "Keluar Masjid",
                      icon: Icons.directions_walk,
                    ),
                    DailyPrayerCard(
                      text: "Naik Kendaraan",
                      icon: Icons.directions_car,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
