import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_copy_core/theme/responsive_theme.dart';
import 'package:instagram_copy_core/theme/theme.dart';

class AppBase extends StatelessWidget {
  const AppBase({
    Key? key,
    this.builder,
    required this.home,
  }) : super(key: key);

  final Widget home;

  final TransitionBuilder? builder;

  Widget _appBuilder(BuildContext context, Widget? child) {
    return builder == null
        ? child ?? const SizedBox.shrink()
        : builder!(context, child);
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.fromWindow(
      child: AppResponsiveTheme(
        child: Builder(
          builder: (context) {
            final theme = AppTheme.of(context);
            SystemChrome.setPreferredOrientations(
              [DeviceOrientation.portraitUp],
            );

            SystemChrome.setSystemUIOverlayStyle(
              SystemUiOverlayStyle(
                systemNavigationBarColor: theme.colors.background,
                statusBarColor: theme.colors.background,
              ),
            );

            return MaterialApp(
              debugShowCheckedModeBanner: false,
              color: theme.colors.primary,
              builder: _appBuilder,
              home: home,
            );
          },
        ),
      ),
    );
  }
}
