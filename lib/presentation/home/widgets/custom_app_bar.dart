import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/theme/theme_bloc.dart';
import 'package:flutter_quran/extension/extensions.dart';
import 'package:flutter_quran/bloc/prayer_time/prayer_time_bloc.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: BlocBuilder<PrayerTimeBloc, PrayerTimeState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.currentDateDisplay.isEmpty
                    ? "-"
                    : state.currentDateDisplay,
                style: MyTheme.style.subtitle.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: context.blackWhiteColor,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                state.locationName.isEmpty
                    ? "Pilih wilayah terlebih dahulu"
                    : state.locationName,
                style: MyTheme.style.subtitle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: context.isDark
                      ? MyTheme.color.secondary
                      : MyTheme.color.primary,
                ),
              ),
            ],
          );
        },
      ),
      actions: [
        /// Icon button choose popup menu button theme from Light, Dark or System
        PopupMenuButton<ThemeMode>(
          icon: Icon(
            Icons.menu,
            color: context.blackWhiteColor,
          ),
          onSelected: (ThemeMode mode) {
            context.read<ThemeBloc>().setTheme(mode);
          },
          itemBuilder: (BuildContext context) {
            return <PopupMenuEntry<ThemeMode>>[
              const PopupMenuItem<ThemeMode>(
                value: ThemeMode.light,
                child: Text('Light'),
              ),
              const PopupMenuItem<ThemeMode>(
                value: ThemeMode.dark,
                child: Text('Dark'),
              ),
              const PopupMenuItem<ThemeMode>(
                value: ThemeMode.system,
                child: Text('System'),
              ),
            ];
          },
        ),
      ],
    );
  }
}
