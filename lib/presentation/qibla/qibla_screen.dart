import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/core/components/molecules/idle_item.dart';
import 'package:flutter_quran/extension/app_color_extension.dart';
import 'package:flutter_quran/presentation/qibla/cubit/qibla_cubit.dart';
import 'package:flutter_quran/presentation/qibla/widgets/compass_painter.dart';
import 'package:flutter_quran/theme/theme.dart';
import 'package:flutter_quran/bloc/prayer_time/prayer_time_bloc.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class QiblaScreen extends StatelessWidget {
  const QiblaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final prayerState = context.read<PrayerTimeBloc>().state;
    final hasLocation = prayerState.lat != 0.0 && prayerState.long != 0.0;

    return BlocProvider(
      create: (_) => QiblaCubit()
        ..init(
          lat: hasLocation ? prayerState.lat : null,
          long: hasLocation ? prayerState.long : null,
          name: hasLocation ? prayerState.locationName : null,
        ),
      child: BlocListener<PrayerTimeBloc, PrayerTimeState>(
        listenWhen: (previous, current) =>
            previous.locationName != current.locationName ||
            previous.lat != current.lat ||
            previous.long != current.long,
        listener: (context, state) {
          if (state.lat != 0.0 && state.long != 0.0) {
            context.read<QiblaCubit>().updateLocation(
                  state.lat,
                  state.long,
                  state.locationName,
                );
          }
        },
        child: const _QiblaView(),
      ),
    );
  }
}

class _QiblaView extends StatelessWidget {
  const _QiblaView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      body: SafeArea(
        child: BlocBuilder<QiblaCubit, QiblaState>(
          builder: (context, state) {
            return switch (state.status) {
              QiblaStatus.loading => const IdleLoading(),
              QiblaStatus.error =>
                _buildError(context, state.errorMessage ?? ""),
              QiblaStatus.noSensor => _buildNoSensor(context),
              QiblaStatus.ready => _buildCompass(context, state),
            };
          },
        ),
      ),
    );
  }

  Widget _buildCompass(BuildContext context, QiblaState state) {
    final compassSize = MediaQuery.of(context).size.width * 0.82;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 24),

            // Title
            Text(
              "Arah Kiblat",
              style: MyTheme.style.title.copyWith(
                fontSize: 22,
                color: MyTheme.color.primary,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              state.locationName,
              style: MyTheme.style.text14.copyWith(
                color: context.greyDarkColor,
              ),
            ),

            const SizedBox(height: 32),

            // Heading indicator at top
            _buildHeadingIndicator(context, state),

            const SizedBox(height: 16),

            // Compass
            SizedBox(
              width: compassSize,
              height: compassSize,
              child: CustomPaint(
                painter: CompassPainter(
                  heading: state.compassHeading,
                  qiblaDirection: state.qiblaDirection,
                  isDark: context.isDark,
                ),
              ),
            ),

            const SizedBox(height: 32),

            // Info cards
            _buildInfoCards(context, state),

            const SizedBox(height: 24),

            // Instruction text
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.isDark
                    ? MyTheme.color.greyDark
                    : const Color(0xffF0F4FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: MyTheme.color.primary,
                    size: 20,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      "Putar perangkat Anda secara horizontal.\nArah Kiblat ditunjukkan oleh ikon hijau.",
                      style: MyTheme.style.text12.copyWith(
                        color: context.greyDarkColor,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildHeadingIndicator(BuildContext context, QiblaState state) {
    final heading = state.compassHeading;
    final direction = _getDirectionName(heading);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color:
            context.isDark ? MyTheme.color.greyDark : const Color(0xffF0F4FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.explore, size: 18, color: MyTheme.color.primary),
          const SizedBox(width: 8),
          Text(
            "${heading.toStringAsFixed(0)}° $direction",
            style: MyTheme.style.text16.copyWith(
              fontWeight: FontWeight.bold,
              color: context.blackWhiteColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCards(BuildContext context, QiblaState state) {
    return Row(
      children: [
        Expanded(
          child: _infoCard(
            context,
            icon: Icons.my_location,
            label: "Arah Kiblat",
            value: "${state.qiblaDirection.toStringAsFixed(1)}°",
            color: const Color(0xff1B7D3A),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _infoCard(
            context,
            icon: Icons.navigation,
            label: "Heading",
            value: "${state.compassHeading.toStringAsFixed(0)}°",
            color: MyTheme.color.primary,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _infoCard(
            context,
            icon: Icons.near_me,
            label: "Selisih",
            value: "${_getDifference(state).toStringAsFixed(0)}°",
            color: const Color(0xffE67E22),
          ),
        ),
      ],
    );
  }

  Widget _infoCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: context.isDark ? MyTheme.color.greyDark : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.isDark ? Colors.grey[800]! : Colors.grey.shade200,
        ),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 22),
          const SizedBox(height: 8),
          Text(
            value,
            style: MyTheme.style.text16.copyWith(
              fontWeight: FontWeight.bold,
              color: context.blackWhiteColor,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: MyTheme.style.text12.copyWith(
              color: context.greyDarkColor,
            ),
          ),
        ],
      ),
    );
  }

  double _getDifference(QiblaState state) {
    double diff = (state.qiblaDirection - state.compassHeading) % 360;
    if (diff > 180) diff -= 360;
    return diff.abs();
  }

  String _getDirectionName(double heading) {
    if (heading >= 337.5 || heading < 22.5) return "Utara";
    if (heading >= 22.5 && heading < 67.5) return "Timur Laut";
    if (heading >= 67.5 && heading < 112.5) return "Timur";
    if (heading >= 112.5 && heading < 157.5) return "Tenggara";
    if (heading >= 157.5 && heading < 202.5) return "Selatan";
    if (heading >= 202.5 && heading < 247.5) return "Barat Daya";
    if (heading >= 247.5 && heading < 292.5) return "Barat";
    if (heading >= 292.5 && heading < 337.5) return "Barat Laut";
    return "";
  }

  Widget _buildError(BuildContext context, String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.red[300]),
            const SizedBox(height: 16),
            Text(
              "Terjadi Kesalahan",
              style: MyTheme.style.title.copyWith(
                fontSize: 18,
                color: context.blackWhiteColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: MyTheme.style.text14.copyWith(
                color: context.greyDarkColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNoSensor(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.sensors_off, size: 64, color: Colors.orange[300]),
            const SizedBox(height: 16),
            Text(
              "Sensor Kompas Tidak Tersedia",
              style: MyTheme.style.title.copyWith(
                fontSize: 18,
                color: context.blackWhiteColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Perangkat Anda tidak memiliki sensor magnetometer\n"
              "yang diperlukan untuk fitur kompas.",
              textAlign: TextAlign.center,
              style: MyTheme.style.text14.copyWith(
                color: context.greyDarkColor,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
