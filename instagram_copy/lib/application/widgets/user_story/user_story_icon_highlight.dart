import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class UserStoryIconHightlight extends StatelessWidget {
  const UserStoryIconHightlight({
    Key? key,
    this.isHighlight = false,
    required this.child,
  }) : super(key: key);

  final bool isHighlight;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, viewportConstraints) {
        final width = viewportConstraints.maxWidth / 2;
        final height = viewportConstraints.maxHeight / 2;
        final size = viewportConstraints.maxWidth / 1.8;
        return Stack(
          alignment: Alignment.center,
          children: [
            SizedBox.expand(
              child: CustomPaint(
                painter: StoryIndicator(
                  context,
                  width: width,
                  height: height,
                  size: size,
                  isHighlight: isHighlight,
                ),
              ),
            ),
            child,
          ],
        );
      },
    );
  }
}

class StoryIndicator extends CustomPainter {
  const StoryIndicator(
    this.context, {
    required this.size,
    required this.width,
    required this.height,
    this.isHighlight = true,
  });

  final double width;

  final double height;

  final double size;

  final BuildContext context;

  final bool isHighlight;

  @override
  void paint(Canvas canvas, Size size) {
    final theme = AppTheme.of(context);

    final offset = Offset(width, height);
    Rect outerRect = Offset.zero & size;

    final background = Paint()
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1.8
      ..color = isHighlight
          ? theme.colors.background
          : theme.colors.foreground.withOpacity(0.2)
      ..style = PaintingStyle.stroke
      ..shader = isHighlight
          ? LinearGradient(
              colors: [
                theme.colors.arkaplan,
                theme.colors.borderler,
              ].toList(),
            ).createShader(outerRect)
          : null;

    canvas.drawCircle(offset, this.size, background);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
