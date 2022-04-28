import 'package:flutter/widgets.dart';

class AppCustomScrollView extends StatelessWidget {
  const AppCustomScrollView({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: children,
    );
  }
}
