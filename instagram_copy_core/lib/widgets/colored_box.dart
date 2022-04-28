import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

enum ColoredBoxLevel {
  background,
}

class AppColoredBox extends StatelessWidget {
  const AppColoredBox({
    Key? key,
    required this.level,
    required this.child,
  }) : super(key: key);

  const AppColoredBox.background({
    Key? key,
    required Widget child,
  }) : this(
          key: key,
          child: child,
          level: ColoredBoxLevel.background,
        );

  final ColoredBoxLevel level;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    final color = () {
      switch (level) {
        case ColoredBoxLevel.background:
          return theme.colors.background;
      }
    }();

    return ColoredBox(
      color: color,
      child: child,
    );
  }
}
