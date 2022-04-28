import 'package:flutter/widgets.dart';
import 'package:instagram_copy/domain/domain.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class PostDescription extends StatelessWidget {
  const PostDescription({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Content post;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Text.rich(
            TextSpan(
              text: '${post.user.username} ',
              style: theme.typography.paragraphMedium14.copyWith(
                color: theme.colors.foreground,
              ),
              children: [
                TextSpan(
                  text: post.description,
                  style: theme.typography.paragraph14,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
