import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/theme/data/data.dart';

class AppTheme extends InheritedWidget {

  const AppTheme({
    Key? key,
    required this.data,
    required Widget child,
  }): super(key: key, child: child);

  final AppThemeData data;

  static AppThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<AppTheme>();

    return widget!.data;
  }

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) {
    return data != oldWidget.data;
  }
}