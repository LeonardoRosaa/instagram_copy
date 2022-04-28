import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';
import 'package:instagram_copy_core/theme/data/spacing.dart';

class AppPadding extends StatelessWidget {
  const AppPadding({
    Key? key,
    required this.padding,
    required this.child,
  }) : super(key: key);

  final Widget child;

  final AppEdgeInsetsData padding;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Padding(
      padding: padding.toEdgeInsets(theme),
      child: child,
    );
  }
}