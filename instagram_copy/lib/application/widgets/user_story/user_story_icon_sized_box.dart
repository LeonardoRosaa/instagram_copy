import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class UserStoryIconSizedBox extends StatelessWidget {
  const UserStoryIconSizedBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final viewport = context.viewport;

    return SizedBox.square(
      dimension: viewport.width * 0.15,
      child: child,
    );
  }
}
