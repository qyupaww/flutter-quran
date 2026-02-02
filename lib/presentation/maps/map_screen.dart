import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';

@RoutePage()
class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Masjid Sekitar")),
      body: Center(
        child: Text(
          "Masjid Sekitar Feature Coming Soon",
          style: MyTheme.style.subtitle,
        ),
      ),
    );
  }
}
