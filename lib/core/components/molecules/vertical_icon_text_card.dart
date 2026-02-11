import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';
import 'package:flutter_quran/extension/extensions.dart';

class VerticalIconTextCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onTap;

  const VerticalIconTextCard({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: context.isDark
              ? MyTheme.color.white.withAlpha(15)
              : MyTheme.color.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: MyTheme.color.secondary,
              size: 24,
            ),
            Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: MyTheme.style.subtitle.copyWith(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: context.blackWhiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
