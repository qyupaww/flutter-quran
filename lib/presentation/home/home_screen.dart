import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/routing/route.gr.dart';
import 'package:flutter_quran/theme/theme.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter_quran/config/app_config.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeTabRoute(),
        QuranRoute(),
        PrayerTimeRoute(),
        QiblaRoute(),
        CalendarRoute(),
      ],
      floatingActionButton: Builder(builder: (context) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Transform.translate(
          offset: const Offset(0, 25),
          child: SizedBox(
            width: 60,
            height: 60,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: MyTheme.color.primary,
              onPressed: () => tabsRouter.setActiveIndex(2),
              child: Icon(
                Icons.mosque,
                color: MyTheme.color.white,
                size: 28,
              ),
            ),
          ),
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            height: kBottomNavigationBarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _BottomNavItem(
                  icon: FlutterIslamicIcons.islam,
                  label: "Home",
                  isActive: tabsRouter.activeIndex == 0,
                  onTap: () => tabsRouter.setActiveIndex(0),
                ),
                _BottomNavItem(
                  icon: FlutterIslamicIcons.quran2,
                  label: "Quran",
                  isActive: tabsRouter.activeIndex == 1,
                  onTap: () => tabsRouter.setActiveIndex(1),
                ),
                Space.w(40), // Gap for FAB
                _BottomNavItem(
                  icon: FlutterIslamicIcons.qibla2,
                  label: "Kiblat",
                  isActive: tabsRouter.activeIndex == 3,
                  onTap: () => tabsRouter.setActiveIndex(3),
                ),
                _BottomNavItem(
                  icon: FlutterIslamicIcons.calendar,
                  label: "Kalender",
                  isActive: tabsRouter.activeIndex == 4,
                  onTap: () => tabsRouter.setActiveIndex(4),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _BottomNavItem({
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? MyTheme.color.primary : Colors.grey,
          ),
          Space.h(4),
          Text(
            label,
            style: MyTheme.style.subtitle.copyWith(
              fontSize: 10,
              color: isActive ? MyTheme.color.primary : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
