import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter_quran/routing/route.gr.dart';
import 'package:flutter_quran/theme/theme.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      resizeToAvoidBottomInset: false,
      routes: const [
        HomeTabRoute(),
        QuranRoute(),
        MapRoute(),
        QiblaRoute(),
        CalendarRoute(),
      ],

      // ================= FAB =================
      floatingActionButton: Builder(
        builder: (context) {
          final tabsRouter = AutoTabsRouter.of(context);

          return Transform.translate(
            offset: const Offset(0, 12),
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: MyTheme.color.primary,
              shape: const CircleBorder(),
              onPressed: () => tabsRouter.setActiveIndex(2),
              child: const Icon(
                Icons.mosque,
                size: 24,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // ================= BOTTOM BAR =================
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 2,
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            height: 56,
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
                const SizedBox(width: 16),
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

// ================= NAV ITEM =================
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
    final color = isActive ? MyTheme.color.primary : Colors.grey;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 22,
              color: color,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: MyTheme.style.subtitle.copyWith(
                fontSize: 10,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
