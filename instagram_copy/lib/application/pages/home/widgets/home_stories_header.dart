import 'package:flutter/material.dart';
import 'package:instagram_copy/application/pages/home/widgets/widgets.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

class HomeStoriesHeader extends StatelessWidget {
  const HomeStoriesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HomeStories(),
        HomeStoriesHeaderDivider(),
      ],
    );
  }
}

class HomeStoriesHeaderDivider extends StatelessWidget {
  const HomeStoriesHeaderDivider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Divider(
      color: theme.colors.foreground.withOpacity(0.1),
    );
  }
}
