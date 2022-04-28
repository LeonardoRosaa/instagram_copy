import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class PostActions extends StatelessWidget {
  const PostActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final color = theme.colors.foreground;
    final width = theme.spacing.large;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            AppIcon.heart(
              color: color,
              width: width,
              height: width,
            ),
            const AppSpace.semiMedium(),
            AppIcon.comment(
              color: color,
              width: width,
              height: width,
            ),
            const AppSpace.semiMedium(),
            AppIcon.share(
              color: color,
              width: width,
              height: width,
            ),
          ],
        ),
        AppIcon.bookmark(
          color: color,
          width: width,
          height: width,
        ),
      ],
    );
  }
}
