import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';

class IslamicEventsCard extends StatelessWidget {
  final int hijriMonth;

  const IslamicEventsCard({super.key, required this.hijriMonth});

  @override
  Widget build(BuildContext context) {
    final events = _getIslamicEvents(hijriMonth);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 10,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Agenda Islami",
            style: MyTheme.style.text16.copyWith(
              fontWeight: FontWeight.bold,
              color: MyTheme.color.primary,
            ),
          ),
          const SizedBox(height: 12),
          ...events.map((event) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.event, size: 16, color: MyTheme.color.primary),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        event,
                        style: MyTheme.style.text14
                            .copyWith(color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              )),
          if (events.isEmpty)
            Text(
              "Tidak ada agenda penting bulan ini.",
              style: MyTheme.style.text14.copyWith(color: Colors.grey),
            ),
        ],
      ),
    );
  }

  List<String> _getIslamicEvents(int month) {
    switch (month) {
      case 1: // Muharram
        return ["1 Muharram: Tahun Baru Islam", "10 Muharram: Puasa Asyura"];
      case 3: // Rabiul Awal
        return ["12 Rabiul Awal: Maulid Nabi Muhammad SAW"];
      case 7: // Rajab
        return ["27 Rajab: Isra Mi'raj"];
      case 8: // Sya'ban
        return ["15 Sya'ban: Nisfu Sya'ban"];
      case 9: // Ramadhan
        return [
          "1 Ramadhan: Awal Puasa Ramadhan",
          "17 Ramadhan: Nuzulul Qur'an",
          "10 Hari Terakhir: Lailatul Qadar"
        ];
      case 10: // Syawal
        return ["1 Syawal: Hari Raya Idul Fitri"];
      case 12: // Dzulhijjah
        return [
          "9 Dzulhijjah: Puasa Arafah (Wukuf)",
          "10 Dzulhijjah: Hari Raya Idul Adha",
          "11-13 Dzulhijjah: Hari Tasyrik"
        ];
      default:
        return [];
    }
  }
}
