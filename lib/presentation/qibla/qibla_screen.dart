import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';

@RoutePage()
class QiblaScreen extends StatelessWidget {
  const QiblaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Qibla")),
      body: Center(
        child: Text(
          "Qibla Feature Coming Soon",
          style: MyTheme.style.subtitle,
        ),
      ),
    );
  }
}
