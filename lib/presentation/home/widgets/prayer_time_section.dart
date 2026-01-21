import 'package:flutter/material.dart';
import 'package:flutter_quran/config/app_config.dart';
import 'package:flutter_quran/theme/theme.dart';

class DailyPrayerSection extends StatelessWidget {
  const DailyPrayerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Daily Prayer",
                style: MyTheme.style.title.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: MyTheme.color.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "See All",
                  style: MyTheme.style.subtitle.copyWith(
                    color: MyTheme.color.white,
                    fontSize: 10,
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: const [
              _DailyPrayerItem(
                icon: Icons.coffee,
                title: "Prayer for eating",
              ),
              SizedBox(width: 16),
              _DailyPrayerItem(
                icon: Icons.menu_book,
                title: "Study prayer",
              ),
              SizedBox(width: 16),
              _DailyPrayerItem(
                icon: Icons.bedtime,
                title: "Bedtime prayers",
              ),
              SizedBox(width: 16),
            ],
          ),
        )
      ],
    );
  }
}

class _DailyPrayerItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const _DailyPrayerItem({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: MyTheme.color.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: AppSetting.softShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: MyTheme.color.black, size: 28),
          const SizedBox(height: 8),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: MyTheme.style.subtitle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
