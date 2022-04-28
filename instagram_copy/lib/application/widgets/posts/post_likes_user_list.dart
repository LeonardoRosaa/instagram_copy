import 'package:flutter/widgets.dart';
import 'package:instagram_copy/application/application.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class PostLikesUserList extends StatelessWidget {
  const PostLikesUserList({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List<String> users;

  @override
  Widget build(BuildContext context) {
    final viewport = context.viewport;
    
    final items = users.asMap().map((index, user) {
      final dimension = viewport.width * 0.04;
      final left = dimension - (dimension * 0.4);
      return MapEntry(index,  Container(
        margin: EdgeInsets.only(left: left * index),
        child: PostLikesUserImage(user, dimension: dimension),
      ));
    }).values.toList();

    return Stack(
      children: items,
    );
  }
}
