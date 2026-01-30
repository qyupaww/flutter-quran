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
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: MyTheme.color.secondary,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: MyTheme.color.secondary),
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
                            style: MyTheme.style.text12.copyWith(
                              fontWeight: FontWeight.bold,
                              color: MyTheme.color.secondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Table Header
                Container(
                  color: MyTheme.color.secondary.withAlpha(15),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  child: Row(
                    children: [
                      Expanded(flex: 3, child: _buildHeader("Tanggal")),
                      Expanded(flex: 2, child: _buildHeader("Imsak")),
                      Expanded(flex: 2, child: _buildHeader("Subuh")),
                      Expanded(flex: 2, child: _buildHeader("Dzuhur")),
                      Expanded(flex: 2, child: _buildHeader("Ashar")),
                      Expanded(flex: 2, child: _buildHeader("Maghrib")),
                      Expanded(flex: 2, child: _buildHeader("Isya")),
                    ],
                  ),
                ),

                // List Data
                Expanded(
                  child: ListView.separated(
                    itemCount: state.monthlyPrayerTimes.length,
                    separatorBuilder: (context, index) =>
                        const Divider(height: 1, thickness: 0.3),
                    itemBuilder: (context, index) {
                      final item = state.monthlyPrayerTimes[index];
                      final isToday = item['date'] ==
                          DateFormat('d MMM yyyy').format(DateTime.now());

                      return Container(
                        color: isToday
                            ? MyTheme.color.secondary.withAlpha(30)
                            : Colors.transparent,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 8),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 3,
                                child: _buildCell(item['date'] ?? '', isToday)),
                            Expanded(
                                flex: 2,
                                child:
                                    _buildCell(item['imsak'] ?? '', isToday)),
                            Expanded(
                                flex: 2,
                                child: _buildCell(item['fajr'] ?? '', isToday)),
                            Expanded(
                                flex: 2,
                                child:
                                    _buildCell(item['dhuhr'] ?? '', isToday)),
                            Expanded(
                                flex: 2,
                                child: _buildCell(item['asr'] ?? '', isToday)),
                            Expanded(
                                flex: 2,
                                child:
                                    _buildCell(item['maghrib'] ?? '', isToday)),
                            Expanded(
                                flex: 2,
                                child: _buildCell(item['isha'] ?? '', isToday)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Untuk memastikan keakuratan, silahkan verifikasi dengan masjid terdekat di wilayah anda",
                  textAlign: TextAlign.center,
                  style: MyTheme.style.text10.copyWith(
                    color: MyTheme.color.secondary,
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
        color: MyTheme.color.secondary,
        fontSize: 11, // Smaller for table
      ),
    );
  }

  Widget _buildCell(String text, bool highlight) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: MyTheme.style.text12.copyWith(
        color: highlight ? MyTheme.color.secondary : const Color(0xFF666666),
        fontWeight: highlight ? FontWeight.bold : FontWeight.normal,
        fontSize: 11,
      ),
    );
  }
}
