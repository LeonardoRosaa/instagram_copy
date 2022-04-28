import 'package:flutter/widgets.dart';
import 'package:instagram_copy/application/application.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';
import 'package:instagram_copy_core/theme/data/spacing.dart';
import 'package:instagram_copy/domain/domain.dart';

class Post extends StatelessWidget {
  const Post({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Content post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostHeader(
          content: post,
        ),
        PostImage(
          post.image,
        ),
        AppPadding(
          padding: const AppEdgeInsetsData.symetric(
            horizontal: AppSpacingSize.medium,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppSpace.small(),
              const PostActions(),
              const AppSpace.small(),
              if (post.likes?.isNotEmpty == true)
                Column(
                  children: [
                    PostLikes(
                      likes: post.likes!,
                    ),
                    const AppSpace.small(),
                  ],
                ),
              PostDescription(
                post: post,
              ),
              const AppSpace.small(),
              const PostDateText(),
            ],
          ),
        ),
      ],
    );
  }
}
