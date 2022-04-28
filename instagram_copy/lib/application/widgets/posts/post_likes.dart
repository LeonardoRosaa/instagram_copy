import 'package:flutter/widgets.dart';
import 'package:instagram_copy/application/application.dart';
import 'package:instagram_copy/domain/entities/entities.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class PostLikes extends StatelessWidget {
  PostLikes({
    Key? key,
    required this.likes,
  }): assert(likes.isNotEmpty), super(key: key);

  final List<User> likes;

  List<User> get firsts {
    const end = 3;

    if (end <= likes.length) {
      return likes.sublist(0, end);
    }

    return likes.sublist(0, likes.length);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (firsts.isNotEmpty)
          Row(
            children: [
              PostLikesUserList(
                users: firsts.map((e) => e.image).toList(),
              ),
              const AppSpace.semiSmall(),
            ],
          ),
        LikedByText(likes: likes),  
      ],
    );
  }
}

class LikedByText extends StatelessWidget {
  const LikedByText({Key? key, required this.likes}) : super(key: key);

  final List<User> likes;

  User get first => likes.first;

  bool hasMore() => likes.length > 1;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Text.rich(
      TextSpan(
        text: 'Liked by',
        style: theme.typography.paragraph14.copyWith(
          color: theme.colors.foreground,
        ),
        children: [
          TextSpan(
            text: ' ${first.username}',
            style: theme.typography.paragraphMedium14,
          ),
          if (hasMore())
          TextSpan(
            text: ' and ',
            style: theme.typography.paragraph14,
          ),
          if (hasMore())
          TextSpan(
            text: 'others',
            style: theme.typography.paragraphMedium14,
          ),
        ],
      ),
    );
  }
}
