import 'package:flutter/material.dart';
import 'package:flutter_quran/config/app_config.dart';
import 'package:flutter_quran/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/theme/theme_bloc.dart';
import 'package:flutter_quran/extension/extensions.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String dateText;
  final String titleText;
  const CustomAppBar({
    super.key,
    required this.dateText,
    required this.titleText,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.containerColor,
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dateText,
            style: MyTheme.style.subtitle.copyWith(
              fontWeight: FontWeight.normal,
              fontSize: AppSetting.setFontSize(30),
              color: context.blackWhiteColor,
            ),
          ),
          Space.h(8),
          Text(
            titleText,
            style: MyTheme.style.subtitle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: AppSetting.setFontSize(32),
              color: context.isDark
                  ? MyTheme.color.secondary
                  : MyTheme.color.primary,
            ),
          ),
        ],
      ),
      actions: [
        /// Icon button choose popup menu button theme from Light, Dark or System
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
        ),
      ],
    );
  }
}
