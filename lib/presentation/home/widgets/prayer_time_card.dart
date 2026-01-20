import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter_quran/config/app_config.dart';
import 'package:flutter_quran/theme/theme.dart';

import 'package:flutter_quran/extension/extensions.dart';

class PrayerTimeCard extends StatelessWidget {
  const PrayerTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSetting.setWidth(20)),
      padding: EdgeInsets.all(AppSetting.setWidth(20)),
      decoration: BoxDecoration(
        color: context.containerColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: AppSetting.softShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "28 Rabi'ul awal, 1445 H",
                    style: MyTheme.style.subtitle.copyWith(
                      fontSize: AppSetting.setFontSize(12),
                      color: context.greyDarkColor,
                    ),
                  ),
                  Space.h(4),
                  Text(
                    "17:21",
                    style: MyTheme.style.title.copyWith(
                        fontSize: AppSetting.setFontSize(40),
                        fontWeight: FontWeight.bold,
                        color: context.blackWhiteColor),
                  ),
                  Space.h(4),
                  Row(
                    children: [
                      Text(
                        "Maghrib less than ",
                        style: MyTheme.style.subtitle.copyWith(
                          fontSize: AppSetting.setFontSize(14),
                          color: context.greyDarkColor,
                        ),
                      ),
                      Text(
                        "05:23",
                        style: MyTheme.style.subtitle.copyWith(
                          fontSize: AppSetting.setFontSize(14),
                          fontWeight: FontWeight.bold,
                          color: context.blackWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Placeholder for Bedug Image
              Icon(
                FlutterIslamicIcons.prayingPerson, // Placeholder icon
                size: 80,
                color: MyTheme.color.primary.withOpacity(0.5),
              ),
            ],
          ),
          Space.h(20),
          Divider(color: context.greyDarkColor.withOpacity(0.2)),
          Space.h(20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _PrayerItem(
                  name: "Subuh",
                  time: "03:53",
                  icon: FlutterIslamicIcons.solidMosque),
              _PrayerItem(
                  name: "Dzuhur", time: "11:20", icon: Icons.wb_sunny_outlined),
              _PrayerItem(
                  name: "Ashar", time: "14:21", icon: Icons.cloud_outlined),
              _PrayerItem(
                  name: "Maghrib",
                  time: "17:26",
                  icon: Icons.wb_twilight,
                  isHighLight: true),
              _PrayerItem(
                  name: "Isya'",
                  time: "18:34",
                  icon: Icons.nights_stay_outlined),
            ],
          )
        ],
      ),
    );
  }
}

class _PrayerItem extends StatelessWidget {
  final String name;
  final String time;
  final IconData icon;
  final bool isHighLight;

  const _PrayerItem({
    required this.name,
    required this.time,
    required this.icon,
    this.isHighLight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: MyTheme.style.subtitle.copyWith(
            fontSize: AppSetting.setFontSize(12),
            fontWeight: isHighLight ? FontWeight.bold : FontWeight.normal,
            color:
                isHighLight ? MyTheme.color.primary : context.blackWhiteColor,
          ),
        ),
        Space.h(8),
        Icon(
          icon,
          color: isHighLight ? MyTheme.color.primary : context.blackWhiteColor,
          size: 24,
        ),
        Space.h(8),
        Text(
          time,
          style: MyTheme.style.subtitle.copyWith(
            fontSize: AppSetting.setFontSize(12),
            fontWeight: isHighLight ? FontWeight.bold : FontWeight.normal,
            color: isHighLight ? MyTheme.color.primary : context.greyDarkColor,
          ),
        ),
      ],
    );
  }
}
