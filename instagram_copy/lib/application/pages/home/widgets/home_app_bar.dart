import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = context.viewport.width * 0.15;
    final theme = AppTheme.of(context);
    final color = theme.colors.foreground;
    final size = theme.spacing.large;

    return SizedBox(
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerLeft,
              child: AppIcon.logo(),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon.heart(
                  color: color,
                  width: size,
                  height: size,
                ),
                AppIcon.add(
                  color: color,
                  width: size,
                  height: size,
                ),
                AppIcon.message(
                  color: color,
                  width: size,
                  height: size,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
