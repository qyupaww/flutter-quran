import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/quran/quran_bloc.dart';
import 'package:flutter_quran/injection/injector.dart';
import 'package:flutter_quran/config/app_config.dart';
import 'package:flutter_quran/theme/theme.dart';

@RoutePage()
class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Al-Quran',
          style: MyTheme.style.title.copyWith(
            color: MyTheme.color.white,
            fontSize: AppSetting.setFontSize(24),
          ),
        ),
        backgroundColor: MyTheme.color.primary,
        iconTheme: IconThemeData(color: MyTheme.color.white),
      ),
      body: BlocProvider(
        create: (context) =>
            inject<QuranBloc>()..add(const QuranEvent.fetchSurah()),
        child: BlocBuilder<QuranBloc, QuranState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text(message)),
              loaded: (surahs) => ListView.builder(
                itemCount: surahs.length,
                itemBuilder: (context, index) {
                  final surah = surahs[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: MyTheme.color.primary,
                      child: Text(
                        "${surah.number}",
                        style: TextStyle(color: MyTheme.color.white),
                      ),
                    ),
                    title: Text(surah.name, style: MyTheme.style.subtitle),
                    subtitle:
                        Text("${surah.englishName} (${surah.nameTranslation})"),
                    trailing: Text(
                      surah.revelationType,
                      style: MyTheme.style.subtitleLight.copyWith(fontSize: 12),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
