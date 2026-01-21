import 'package:flutter/material.dart';
import 'package:flutter_quran/config/app_config.dart';
import 'package:flutter_quran/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/theme/theme_bloc.dart';
import 'package:flutter_quran/extension/extensions.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Icon(
            Icons.location_on,
            color: MyTheme.color.primary,
            size: 20,
          ),
          Space.w(8),
          Text(
            "Malang, East Java",
            style: MyTheme.style.subtitle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: AppSetting.setFontSize(14),
              color: context.blackWhiteColor,
            ),
          ),
        ],
      ),
      actions: [
        Stack(
          children: [
            // Use PopupMenuButton instead of Icon
            PopupMenuButton<ThemeMode>(
              icon: Icon(
                Icons.more_vert,
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
            )
          ],
        ),
        Space.w(10), // Add some spacing for actions
      ],
    );
  }
}
