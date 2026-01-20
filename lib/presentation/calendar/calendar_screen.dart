import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';

@RoutePage()
class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calendar")),
      body: Center(
        child: Text(
          "Calendar Feature Coming Soon",
          style: MyTheme.style.subtitle,
        ),
      ),
    );
  }
}
