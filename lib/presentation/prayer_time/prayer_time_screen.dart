import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/prayer_time/prayer_time_bloc.dart';
import 'package:flutter_quran/theme/theme.dart';
import 'package:intl/intl.dart';

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
            "Jadwal Sholat Bulanan",
            style: MyTheme.style.title.copyWith(
              fontSize: 20,
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

            return Column(
              children: [
                // Header Info
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Jadwal sholat untuk wilayah",
                            style: MyTheme.style.text12
                                .copyWith(color: Colors.grey),
                          ),
                          Text(
                            state.locationName,
                            style: MyTheme.style.text16.copyWith(
                              fontWeight: FontWeight.bold,
                              color: MyTheme.color.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Table Header
                Container(
                  color: MyTheme.color.primary.withOpacity(0.1),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: _buildHeader("Tanggal")),
                      Expanded(child: _buildHeader("Subuh")),
                      Expanded(child: _buildHeader("Dzuhur")),
                      Expanded(child: _buildHeader("Ashar")),
                      Expanded(child: _buildHeader("Maghrib")),
                      Expanded(child: _buildHeader("Isya")),
                    ],
                  ),
                ),

                // List Data
                Expanded(
                  child: ListView.separated(
                    itemCount: state.monthlyPrayerTimes.length,
                    separatorBuilder: (context, index) =>
                        const Divider(height: 1, thickness: 0.5),
                    itemBuilder: (context, index) {
                      final item = state.monthlyPrayerTimes[index];
                      final isToday = item['date'] ==
                          DateFormat('d MMM yyyy').format(DateTime.now());

                      return Container(
                        color: isToday
                            ? MyTheme.color.primary.withOpacity(0.05)
                            : Colors.transparent,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 8),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: _buildCell(item['date'] ?? '', isToday)),
                            Expanded(
                                child: _buildCell(item['fajr'] ?? '', isToday)),
                            Expanded(
                                child:
                                    _buildCell(item['dhuhr'] ?? '', isToday)),
                            Expanded(
                                child: _buildCell(item['asr'] ?? '', isToday)),
                            Expanded(
                                child:
                                    _buildCell(item['maghrib'] ?? '', isToday)),
                            Expanded(
                                child: _buildCell(item['isha'] ?? '', isToday)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildHeader(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: MyTheme.style.text12.copyWith(
        fontWeight: FontWeight.bold,
        color: MyTheme.color.primary,
        fontSize: 11, // Smaller for table
      ),
    );
  }

  Widget _buildCell(String text, bool highlight) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: MyTheme.style.text12.copyWith(
        color: highlight ? MyTheme.color.primary : const Color(0xFF666666),
        fontWeight: highlight ? FontWeight.bold : FontWeight.normal,
        fontSize: 11,
      ),
    );
  }
}
