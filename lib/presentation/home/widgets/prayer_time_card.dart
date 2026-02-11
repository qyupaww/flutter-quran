import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/prayer_time/prayer_time_bloc.dart';
import 'package:flutter_quran/core/components/atoms/time_box.dart';
import 'package:flutter_quran/core/components/atoms/time_separator.dart';
import 'package:flutter_quran/presentation/home/location_picker/location_picker_dialog.dart';
import 'package:flutter_quran/presentation/home/location_picker/cubit/location_picker_cubit.dart';
import 'package:flutter_quran/infrastructure/location/region_repository.dart';
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
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          useSafeArea: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          builder: (_) => MultiBlocProvider(
                            providers: [
                              BlocProvider.value(value: bloc),
                              BlocProvider(
                                create: (_) =>
                                    LocationPickerCubit(RegionRepository()),
                              ),
                            ],
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
                    TimeBox(value: state.hoursLeft, label: "JAM"),
                    const TimeSeparator(),
                    TimeBox(value: state.minutesLeft, label: "MENIT"),
                    const TimeSeparator(),
                    TimeBox(value: state.secondsLeft, label: "DETIK"),
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
}
