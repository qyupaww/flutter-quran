import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';

class PrayerTimeCard extends StatelessWidget {
  final String prayerName;
  final String startTime;
  final String endTime;
  final String hours;
  final String minutes;
  final String seconds;

  const PrayerTimeCard({
    super.key,
    required this.prayerName,
    required this.startTime,
    required this.endTime,
    required this.hours,
    required this.minutes,
    required this.seconds,
  });

  @override
  @override
  Widget build(BuildContext context) {
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
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(10),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "WAKTU SHOLAT SELANJUTNYA",
                      style: TextStyle(
                        color: MyTheme.color.secondary,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Text(
                      prayerName,
                      style: TextStyle(
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
                _buildTimeBox(hours, "JAM"),
                _buildSeparator(),
                _buildTimeBox(minutes, "MENIT"),
                _buildSeparator(),
                _buildTimeBox(seconds, "DETIK"),
              ],
            ),

            const SizedBox(height: 30),
            Divider(color: MyTheme.color.white.withAlpha(30), thickness: 1),
            const SizedBox(height: 16),

            // FOOTER
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.schedule,
                        color: MyTheme.color.secondary, size: 18),
                    const SizedBox(width: 8),
                    Text(startTime,
                        style: TextStyle(
                            color: MyTheme.color.white, fontSize: 14)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text("•",
                          style: TextStyle(color: MyTheme.color.white)),
                    ),
                    Text(endTime,
                        style: TextStyle(
                            color: MyTheme.color.white, fontSize: 14)),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "LIHAT JADWAL",
                        style: TextStyle(
                          color: MyTheme.color.secondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
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
          ],
        ),
      ),
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
              style: TextStyle(
                color: MyTheme.color.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
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
            style: TextStyle(
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
