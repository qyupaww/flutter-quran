import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/config/app_config.dart';
import 'package:flutter_quran/presentation/home/widgets/daily_prayer_section.dart';
import 'package:flutter_quran/presentation/home/widgets/home_app_bar.dart';
import 'package:flutter_quran/presentation/home/widgets/prayer_time_card.dart';
import 'package:flutter_quran/presentation/home/widgets/prayer_tracker_card.dart';
import 'package:flutter_quran/theme/theme.dart';

import 'package:flutter_quran/extension/extensions.dart';

@RoutePage()
class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.isDark
          ? context.backgroundColor
          : const Color(0xFFF5F6F8), // Light grey background like design
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Space.h(20),
              const HomeAppBar(),
              Space.h(20),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppSetting.setWidth(20)),
                child: Container(
                  padding: EdgeInsets.all(AppSetting.setWidth(16)),
                  decoration: BoxDecoration(
                    color: MyTheme.color.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.wb_sunny_outlined,
                              color: Colors.orange,
                              size: 20), // Placeholder sun/lamp icon
                          Space.w(8),
                          Text(
                            "Start your day with these prayers",
                            style: MyTheme.style.subtitle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: AppSetting.setFontSize(14),
                            ),
                          ),
                        ],
                      ),
                      const Icon(Icons.chevron_right, color: Colors.grey),
                    ],
                  ),
                ),
              ),
              Space.h(20),
              const PrayerTimeCard(),
              Space.h(20),
              const PrayerTrackerCard(),
              Space.h(30),
              const DailyPrayerSection(),
              Space.h(100), // Bottom padding for FAB
            ],
          ),
        ),
      ),
    );
  }
}
