import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/quran/detail/surah_detail_bloc.dart';
import 'package:flutter_quran/extension/app_color_extension.dart';
import 'package:flutter_quran/injection/injector.dart';
import 'package:flutter_quran/theme/theme.dart';

@RoutePage()
class SurahDetailScreen extends StatelessWidget {
  final int surahNumber;
  final String surahName; // Passed for initial title before load

  const SurahDetailScreen({
    super.key,
    required this.surahNumber,
    required this.surahName,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<SurahDetailBloc>()
        ..add(SurahDetailEvent.fetchSurahDetail(surahNumber)),
      child: Scaffold(
        backgroundColor: context.backgroundColor,
        appBar: AppBar(
          title: Text(
            surahName,
            style: MyTheme.style.title.copyWith(color: MyTheme.color.white),
          ),
          backgroundColor: MyTheme.color.primary,
          iconTheme: IconThemeData(color: MyTheme.color.white),
        ),
        body: BlocBuilder<SurahDetailBloc, SurahDetailState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (msg) => Center(child: Text(msg)),
              loaded: (detail) {
                return ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: detail.verses.length,
                  separatorBuilder: (context, index) =>
                      const Divider(height: 32),
                  itemBuilder: (context, index) {
                    final verse = detail.verses[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Header: Ayah Number Actions
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: context.isDark
                                ? MyTheme.color.greyDark.withAlpha(50)
                                : Colors.grey[100],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 14,
                                backgroundColor: MyTheme.color.primary,
                                child: Text(
                                  "${verse.numberInSurah}",
                                  style: MyTheme.style.text12.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.share,
                                      color: MyTheme.color.primary, size: 20),
                                  const SizedBox(width: 16),
                                  Icon(Icons.play_arrow,
                                      color: MyTheme.color.primary, size: 20),
                                  const SizedBox(width: 16),
                                  Icon(Icons.bookmark_border,
                                      color: MyTheme.color.primary, size: 20),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),

                        // Arabic Text
                        Text(
                          verse.textArab,
                          textAlign: TextAlign.right,
                          style: MyTheme.style.arabicText.copyWith(
                            height: 2.2,
                            color: context.blackWhiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Transliteration
                        Text(
                          verse.textTransliteration,
                          textAlign: TextAlign.left,
                          style: MyTheme.style.text16.copyWith(
                            color: MyTheme.color.primary,
                            fontStyle: FontStyle.italic,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 8),

                        // Translation
                        Text(
                          verse.translationId, // Indonesian Translation
                          textAlign: TextAlign.left,
                          style: MyTheme.style.text14.copyWith(
                            color: context.isDark
                                ? Colors.grey[300]
                                : Colors.grey[700],
                            height: 1.5,
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
