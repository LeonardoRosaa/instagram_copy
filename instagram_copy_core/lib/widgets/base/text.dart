import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

enum AppTextLevel {
  paragraph14,
  paragraph12,
  paragraphMedium14,
}

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    Key? key,
    required this.level,
    this.color,
  }) : super(key: key);

  final String text;

  final AppTextLevel level;

  final Color? color;

  const AppText.paragraph12(
    String text, {
    Key? key,
    Color? color,
  }) : this(
          text,
          color: color,
          level: AppTextLevel.paragraph12,
          key: key,
        );

  const AppText.paragraph14(
    String text, {
    Key? key,
    Color? color,
  }) : this(
          text,
          color: color,
          level: AppTextLevel.paragraph14,
          key: key,
        );

  const AppText.paragraphMedium14(
    String text, {
    Key? key,
    Color? color,
  }) : this(
          text,
          color: color,
          level: AppTextLevel.paragraphMedium14,
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    final color = this.color ?? theme.colors.foreground;

    final style = () {
      switch (level) {
        case AppTextLevel.paragraph12:
          return theme.typography.paragraph12;
        case AppTextLevel.paragraph14:
          return theme.typography.paragraph14;
        case AppTextLevel.paragraphMedium14:
          return theme.typography.paragraphMedium14; 
      }
    }();
    
    return Text(
        text,
        style: style.copyWith(color: color),
      );
  }
}
