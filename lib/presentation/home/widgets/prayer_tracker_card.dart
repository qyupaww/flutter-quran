import 'package:flutter/material.dart';
import 'package:flutter_quran/config/app_config.dart';
import 'package:flutter_quran/theme/theme.dart';

import 'package:flutter_quran/extension/extensions.dart';

class PrayerTrackerCard extends StatelessWidget {
  const PrayerTrackerCard({super.key});

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
            children: [
              Row(
                children: [
                  Icon(Icons.access_time, color: context.blackWhiteColor),
                  Space.w(8),
                  Text(
                    "Prayer Tracker",
                    style: MyTheme.style.subtitle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: AppSetting.setFontSize(16),
                      color: context.blackWhiteColor,
                    ),
                  ),
                ],
              ),
              Icon(Icons.ios_share, color: context.greyDarkColor, size: 20),
            ],
          ),
          Space.h(20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _TrackerItem(label: "Subuh", isChecked: true),
              _TrackerItem(label: "Dzuhur", isChecked: true),
              _TrackerItem(label: "Ashar", isChecked: true),
              _TrackerItem(label: "Maghrib", isChecked: false),
              _TrackerItem(label: "Isya'", isChecked: false),
            ],
          ),
          Space.h(20),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: MyTheme.color.primary.withOpacity(0.3)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    EdgeInsets.symmetric(vertical: AppSetting.setHeight(12)),
              ),
              child: Text(
                "Prayer Together",
                style: MyTheme.style.subtitle.copyWith(
                  color: MyTheme.color.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _TrackerItem extends StatelessWidget {
  final String label;
  final bool isChecked;

  const _TrackerItem({
    required this.label,
    required this.isChecked,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isChecked ? MyTheme.color.primary : MyTheme.color.white,
            border: Border.all(
              color: isChecked ? MyTheme.color.primary : MyTheme.color.primary,
              width: 2,
            ),
          ),
          child: isChecked
              ? Icon(Icons.check, color: MyTheme.color.white, size: 20)
              : null,
        ),
        Space.h(8),
        Text(
          label,
          style: MyTheme.style.subtitle.copyWith(
            fontSize: AppSetting.setFontSize(12),
          ),
        ),
      ],
    );
  }
}
