import 'package:flutter/widgets.dart';
import 'package:instagram_copy/application/application.dart';
import 'package:instagram_copy/domain/domain.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class PostCircularUserIcon extends StatelessWidget {
  const PostCircularUserIcon({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final viewport = context.viewport;

    return SizedBox.square(
      dimension: viewport.width * 0.08,
      child: UserStoryIconHightlight(
        isHighlight: user.hasStory == true,
        child: CircularImage(
          user.image,
        ),
      ),
    );
  }
}
