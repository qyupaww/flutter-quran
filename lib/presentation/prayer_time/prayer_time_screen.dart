import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/prayer_time/prayer_time_bloc.dart';
import 'package:flutter_quran/theme/theme.dart';
import 'package:flutter_quran/extension/extensions.dart';

@RoutePage()
class PrayerTimeScreen extends StatelessWidget {
  final PrayerTimeBloc bloc;

  const PrayerTimeScreen({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Jadwal Sholat",
            style: MyTheme.style.title.copyWith(
              fontSize: 24,
              color: MyTheme.color.primary,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: MyTheme.color.primary),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: BlocBuilder<PrayerTimeBloc, PrayerTimeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Location info
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: MyTheme.color.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, color: MyTheme.color.primary),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          state.locationName,
                          style: MyTheme.style.text16.copyWith(
                            fontWeight: FontWeight.bold,
                            color: MyTheme.color.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Prayer List
                ...state.dailyPrayers.map((prayer) {
                  final isNext = prayer['name'] == state.nextPrayerName;

                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 20),
                    decoration: BoxDecoration(
                      color: isNext ? MyTheme.color.primary : Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color:
                            isNext ? Colors.transparent : Colors.grey.shade200,
                      ),
                      boxShadow: isNext
                          ? [
                              BoxShadow(
                                color: MyTheme.color.primary.withOpacity(0.3),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              )
                            ]
                          : null,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              _getIcon(prayer['icon']),
                              color: isNext ? Colors.white : Colors.grey,
                            ),
                            const SizedBox(width: 16),
                            Text(
                              prayer['name'] ?? '',
                              style: MyTheme.style.text16.copyWith(
                                fontWeight:
                                    isNext ? FontWeight.bold : FontWeight.w500,
                                color: isNext
                                    ? Colors.white
                                    : context.blackWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          prayer['time'] ?? '',
                          style: MyTheme.style.text18.copyWith(
                            fontWeight: FontWeight.bold,
                            color:
                                isNext ? Colors.white : context.blackWhiteColor,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ],
            );
          },
        ),
      ),
    );
  }

  IconData _getIcon(String? iconName) {
    switch (iconName) {
      case 'cloud_outlined':
        return Icons.cloud_outlined;
      case 'wb_sunny_outlined':
        return Icons.wb_sunny_outlined;
      case 'wb_sunny':
        return Icons.wb_sunny;
      case 'wb_twilight_outlined':
        return Icons.wb_twilight_outlined;
      case 'nightlight_round':
        return Icons.nightlight_round;
      default:
        return Icons.access_time;
    }
  }
}
