import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/theme/data/data.dart';
import 'package:instagram_copy_core/theme/theme.dart';

class AppResponsiveTheme extends StatelessWidget {
  const AppResponsiveTheme({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;


  @override
  Widget build(BuildContext context) {
    final theme = AppThemeData.regular();
    
    return AppTheme(
      data: theme,
      child: child,
    );
  }
}