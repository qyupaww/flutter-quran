import 'package:flutter/material.dart';
import 'package:flutter_quran/extension/extensions.dart';
import 'package:flutter_quran/domain/entities/quran/surah_entity.dart';
import 'package:flutter_quran/extension/app_color_extension.dart';
import 'package:flutter_quran/theme/theme.dart';

class SurahListTile extends StatelessWidget {
  final SurahEntity surah;
  final VoidCallback? onTap;

  const SurahListTile({
    super.key,
    required this.surah,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
        child: Row(
          children: [
            // Number in Star/RubElHizb
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 36,
                  color: MyTheme.color.primary,
                ),
                Text(
                  "${surah.number}",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: context.isDark ? Colors.white : Colors.white),
                ),
              ],
            ),
            const SizedBox(width: 16),

            // Name & Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    surah.englishName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: context.blackWhiteColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        surah.revelationType.toUpperCase() == 'MECCAN'
                            ? 'MAKKIYAH'
                            : 'MADANIYAH',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Icon(Icons.circle,
                            size: 4, color: Colors.grey[400]),
                      ),
                      Text(
                        "${surah.numberOfAyahs} Ayat",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Arabic Name
            Text(
              surah.name, // Usually Arabic script
              style: TextStyle(
                color: MyTheme.color.primary,
                fontSize: 20,
                fontFamily: 'Amiri', // Assuming font is setup or will fallback
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
