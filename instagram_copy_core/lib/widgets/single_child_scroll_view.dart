import 'package:flutter/widgets.dart';

class AppSingleChildScrollView extends StatelessWidget {
  const AppSingleChildScrollView({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: child,
    );
  }
}
