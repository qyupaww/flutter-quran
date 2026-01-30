import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/prayer_time/prayer_time_bloc.dart';
import 'package:flutter_quran/presentation/home/widgets/location_picker_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_quran/routing/route.gr.dart';
import 'package:flutter_quran/theme/theme.dart';

class PrayerTimeCard extends StatelessWidget {
  const PrayerTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerTimeBloc, PrayerTimeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: MyTheme.color.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // HEADER
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        final bloc = context.read<PrayerTimeBloc>();
                        showDialog(
                          context: context,
                          builder: (_) => BlocProvider.value(
                            value: bloc,
                            child: const LocationPickerDialog(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withAlpha(10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.location_on,
                            color: MyTheme.color.secondary, size: 24),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "WAKTU SHOLAT SELANJUTNYA",
                          style: MyTheme.style.text12.copyWith(
                            color: MyTheme.color.secondary,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                        Text(
                          state.nextPrayerName.isEmpty
                              ? "-"
                              : state.nextPrayerName,
                          style: MyTheme.style.subtitle.copyWith(
                            color: MyTheme.color.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                const SizedBox(height: 30),

                // COUNTDOWN
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildTimeBox(state.hoursLeft, "JAM"),
                    _buildSeparator(),
                    _buildTimeBox(state.minutesLeft, "MENIT"),
                    _buildSeparator(),
                    _buildTimeBox(state.secondsLeft, "DETIK"),
                  ],
                ),

                const SizedBox(height: 30),
                Divider(color: MyTheme.color.white.withAlpha(30), thickness: 1),
                const SizedBox(height: 16),

                // FOOTER
                GestureDetector(
                  onTap: () {
                    context.router.push(
                        PrayerTimeRoute(bloc: context.read<PrayerTimeBloc>()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LIHAT JADWAL SHOLAT",
                        style: MyTheme.style.text14.copyWith(
                          color: MyTheme.color.secondary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(Icons.arrow_forward,
                          color: MyTheme.color.secondary, size: 18),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTimeBox(String value, String label) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: MyTheme.color.secondary.withAlpha(10),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              value,
              style: MyTheme.style.subtitle.copyWith(
                color: MyTheme.color.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: MyTheme.style.text12.copyWith(
            color: MyTheme.color.secondary,
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ],
    );
  }

  Widget _buildSeparator() {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            ":",
            style: MyTheme.style.text18.copyWith(
              color: MyTheme.color.secondary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 18),
        ],
      ),
    );
  }
}
