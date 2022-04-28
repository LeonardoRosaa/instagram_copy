import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class PostImage extends StatelessWidget {
  const PostImage(this.src, {Key? key}) : super(key: key);

  final String src;

  @override
  Widget build(BuildContext context) {
    final viewport = context.viewport;

    final width = viewport.width;
    final height = width + (width * 0.2);

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: height,
        maxWidth: width,
      ),
      child: Image.network(
        src,
        fit: BoxFit.contain,
        frameBuilder: (context, widget, frame, _) {
          if (frame != null) return widget;

          return ShimmerLoading(
            isLoading: true,
            child: SizedBox.expand(
              child: widget,
            ),
          );
        },
        loadingBuilder: (context, widget, loadingProgress) {
          if (loadingProgress == null) return widget;

          return ShimmerLoading(
            isLoading: true,
            child: widget,
          );
        },
      ),
    );
  }
}