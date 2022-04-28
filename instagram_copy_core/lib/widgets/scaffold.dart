import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';
import 'package:instagram_copy_core/theme/data/spacing.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    this.appBar,
    this.bottomBar,
    required this.child,
  }) : super(key: key);

  final Widget? appBar;

  final Widget? bottomBar;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppColoredBox.background(
      child: Column(
        children: [
          if (appBar != null) _Bar(child: appBar!),
          Expanded(
            child: LayoutBuilder(
              builder: (context, boxConstraints) {
                return AppSingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: boxConstraints.maxHeight,
                      maxHeight: boxConstraints.maxHeight,
                    ),
                    child: child,
                  ),
                );
              },
            ),
          ),
          if (bottomBar != null)
            SafeArea(
              top: false,
              child: bottomBar!,
            ),
        ],
      ),
    );
  }
}

class _Bar extends StatelessWidget {
  const _Bar({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppPadding(
        padding: const AppEdgeInsetsData.symetric(
          horizontal: AppSpacingSize.medium,
        ),
        child: child,
      ),
    );
  }
}
