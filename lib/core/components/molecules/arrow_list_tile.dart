import 'package:flutter/material.dart';
import 'package:flutter_quran/theme/theme.dart';
import 'package:flutter_quran/extension/extensions.dart';

class ArrowListTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? contentPadding;

  const ArrowListTile({
    super.key,
    required this.title,
    required this.onTap,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: contentPadding ??
          const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 4,
          ),
      title: Text(
        title,
        style: MyTheme.style.text14.copyWith(
          color: context.blackWhiteColor,
        ),
      ),
      trailing: Icon(
        Icons.chevron_right,
        size: 20,
        color: MyTheme.color.secondary,
      ),
      onTap: onTap,
    );
  }
}
