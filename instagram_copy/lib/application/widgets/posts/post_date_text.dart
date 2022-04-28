import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class PostDateText extends StatelessWidget {
  const PostDateText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return AppText.paragraph14(
      '2 hours ago',
      color: theme.colors.foreground.withOpacity(0.5),
    );
  }
}
