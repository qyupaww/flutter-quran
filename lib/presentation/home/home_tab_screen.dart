import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/config/app_config.dart';
import 'package:flutter_quran/presentation/home/widgets/daily_prayer_card.dart';
import 'package:flutter_quran/presentation/home/widgets/custom_app_bar.dart';
import 'package:flutter_quran/presentation/home/widgets/prayer_time_card.dart';
import 'package:flutter_quran/presentation/home/widgets/prayer_time_section.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/prayer_time/prayer_time_bloc.dart';
import '../../extension/app_color_extension.dart';
import '../../theme/theme.dart';

@RoutePage()
class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PrayerTimeCard(),
                Space.h(8),
                BlocBuilder<PrayerTimeBloc, PrayerTimeState>(
                  builder: (context, state) {
                    if (state.dailyPrayers.isEmpty) {
                      return const SizedBox.shrink();
                    }
                    return Row(
                      children: state.dailyPrayers.map((prayer) {
                        return Expanded(
                          child: PrayerTimeSection(
                            text: prayer['name']!,
                            icon: _getIcon(prayer['icon']!),
                            time: prayer['time']!,
                          ),
                        );
                      }).toList(),
                    );
                  },
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

  IconData _getIcon(String iconName) {
    switch (iconName) {
      case 'cloud_outlined':
        return Icons.cloud_outlined;
      case 'wb_sunny_outlined':
        return Icons.wb_sunny_outlined;
      case 'wb_sunny':
        return Icons.wb_sunny;
      case 'wb_twilight_outlined':
        return Icons.wb_twilight_outlined;
      case 'nightlight_round':
        return Icons.nightlight_round;
      default:
        return Icons.access_time;
    }
  }
}
