import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';

class LastReadCard extends StatelessWidget {
  const LastReadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180, // Fixed height for consistency
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            MyTheme.color.primary,
            MyTheme.color.primary
                .withAlpha(200), // Slightly lighter/transparent
          ],
        ),
      ),
      child: Stack(
        children: [
          // Background Decoration (Abstract Shapes)
          const Positioned(
            right: -20,
            bottom: -20,
            child: Opacity(
              opacity: 0.1,
              child: Icon(
                FlutterIslamicIcons
                    .quran2, // Using Quran icon as background pattern
                size: 180,
                color: Colors.white,
              ),
            ),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.menu_book, color: Colors.white, size: 16),
                        SizedBox(width: 8),
                        Text(
                          "Lanjutkan Membaca",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Surah Al-Mulk", // Placeholder for now
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Ayat 12",
                      style: TextStyle(
                        color: Colors.white.withAlpha(200),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),

                // Button / Progress?
                // Reference shows a "Continue" button but since entire card is tappable usually..
                // Let's add the button as per request visual.
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.black.withAlpha(40),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Lanjut",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
