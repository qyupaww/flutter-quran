import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/theme/theme_bloc.dart';
import 'package:flutter_quran/config/app_config.dart';
import 'package:flutter_quran/extension/extensions.dart';
import 'package:flutter_quran/theme/theme.dart';

@RoutePage()
class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Muslim App',
          style: MyTheme.style.title.copyWith(
            color: MyTheme.color.white,
            fontSize: AppSetting.setFontSize(45),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor:
            context.isDark ? context.containerColor : MyTheme.color.primary,
        actions: [
          /// Icon button choose popup menu button theme from Light, Dark or System
          PopupMenuButton<ThemeMode>(
            icon: Icon(
              Icons.more_vert,
              color: MyTheme.color.white,
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
      ),
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to Muslim App",
            style: MyTheme.style.subtitle,
          ),
        ],
      ),
    );
  }
}
