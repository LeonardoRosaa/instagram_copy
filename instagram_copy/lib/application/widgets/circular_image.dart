import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class CircularImage extends StatelessWidget {
  const CircularImage(
    this.src, {
    Key? key,
    this.useBorder = false,
  }) : super(key: key);

  const CircularImage.border(
    this.src, {
    Key? key,
  })  : useBorder = true,
        super(key: key);

  final String src;

  final bool useBorder;

  @override
  Widget build(BuildContext context) {
    final image = ClipOval(child: Image.network(src));

    return useBorder ? CircularImageBorder(child: image) : image;
  }
}

class CircularImageBorder extends StatelessWidget {
  const CircularImageBorder({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.2,
          color: theme.colors.background,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: child,
    );
  }
}
