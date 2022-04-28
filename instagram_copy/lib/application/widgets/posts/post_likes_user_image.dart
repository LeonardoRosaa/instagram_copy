import 'package:flutter/widgets.dart';
import 'package:instagram_copy/application/widgets/circular_image.dart';

class PostLikesUserImage extends StatelessWidget {
  const PostLikesUserImage(
    this.src, {
    Key? key,
    required this.dimension,
  }) : super(key: key);

  final String src;

  final double dimension;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension,
      child: CircularImage.border(src),
    );
  }
}
