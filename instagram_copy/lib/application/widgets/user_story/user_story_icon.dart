import 'package:flutter/widgets.dart';
import 'package:instagram_copy/application/application.dart';
import 'package:instagram_copy/domain/domain.dart';

class UserStoryIcon extends StatelessWidget {
  const UserStoryIcon({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserStoryIconContainer(
          isHighlight: user.hasStory == true,
          child: CircularImage(user.image),
        ),
        UserStoryIconNameText(user.username),
      ],
    );
  }
}

class UserStoryIconContainer extends StatelessWidget {
  const UserStoryIconContainer({
    Key? key,
    this.isHighlight = false,
    required this.child,
  }) : super(key: key);

  final bool isHighlight;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return UserStoryIconSizedBox(
      child: UserStoryIconHightlight(child: child, isHighlight: isHighlight),
    );
  }
}
