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
          padding: EdgeInsets.symmetric(horizontal: AppSetting.setWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Daily Prayer",
                style: MyTheme.style.title.copyWith(
                  fontSize: AppSetting.setFontSize(18),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(10),
                  vertical: AppSetting.setHeight(4),
                ),
                decoration: BoxDecoration(
                  color: MyTheme.color.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "See All",
                  style: MyTheme.style.subtitle.copyWith(
                    color: MyTheme.color.white,
                    fontSize: AppSetting.setFontSize(10),
                  ),
                ),
              )
            ],
          ),
        ),
        Space.h(16),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: AppSetting.setWidth(20)),
            children: [
              const _DailyPrayerItem(
                icon: Icons.coffee,
                title: "Prayer for eating",
              ),
              Space.w(16),
              const _DailyPrayerItem(
                icon: Icons.menu_book,
                title: "Study prayer",
              ),
              Space.w(16),
              const _DailyPrayerItem(
                icon: Icons.bedtime,
                title: "Bedtime prayers",
              ),
              Space.w(16),
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
      padding: EdgeInsets.all(AppSetting.setWidth(12)),
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
          Space.h(8),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: MyTheme.style.subtitle.copyWith(
              fontSize: AppSetting.setFontSize(12),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
