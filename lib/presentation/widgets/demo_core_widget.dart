import 'package:flutter/material.dart';
import 'package:flutter_quran/core/components/button/primary_button.dart';
import 'package:flutter_quran/core/components/card/modern_card.dart';
import 'package:flutter_quran/core/components/textfield/primary_textfield.dart';
import 'package:flutter_quran/theme/theme.dart';

class DemoCoreWidget extends StatelessWidget {
  const DemoCoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Demo Core Components",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          const Text("1. Modern Card"),
          const SizedBox(height: 10),
          ModernCard(
            title: "Quran App",
            value: "Flutter",
            color: MyTheme.color.primary, // Using primary color from theme
            iconPath: "assets/images/logo_full.png", // Using existing asset
            paddingVertical: 20,
          ),
          const SizedBox(height: 30),
          const Text("2. Primary TextField"),
          const SizedBox(height: 10),
          PrimaryTextfield(
            title: "Input Test",
            hintText: "Try typing here...",
            action: TextInputAction.done,
            type: TextInputType.text,
            controller: TextEditingController(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
            radius: 12,
            enableOutline: true,
          ),
          const SizedBox(height: 30),
          const Text("3. Primary Button"),
          const SizedBox(height: 10),
          PrimaryButton(
            color: MyTheme.color.primary,
            title: "Action Button",
            onClick: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Action Executed!")),
              );
            },
            radius: 10,
          ),
        ],
      ),
    );
  }
}
