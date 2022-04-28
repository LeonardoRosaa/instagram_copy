import 'package:flutter/widgets.dart';
import 'package:instagram_copy/application/application.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppBase(
      home: HomePage(),
    );
  }
}
