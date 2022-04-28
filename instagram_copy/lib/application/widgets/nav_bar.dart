import 'package:flutter/widgets.dart';
import 'package:instagram_copy/application/widgets/circular_image.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';
import 'package:instagram_copy_core/theme/data/spacing.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final size = theme.spacing.large;
    return Container(
      height: context.viewport.width * 0.15,
      padding: const AppEdgeInsetsData.symetric(
        horizontal: AppSpacingSize.medium,
        vertical: AppSpacingSize.medium
      ).toEdgeInsets(theme),
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1,
            color: theme.colors.foreground.withOpacity(0.1),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppIcon.home(
            color: theme.colors.foreground,
            width: size,
            height: size,
          ),
          AppIcon.search(
            color: theme.colors.foreground,
            width: size,
            height: size,
          ),
          AppIcon.reels(
            color: theme.colors.foreground,
            width: size,
            height: size,
          ),
          AppIcon.shop(
            color: theme.colors.foreground,
            width: size,
            height: size,
          ),
          SizedBox.square(
            dimension: size,
            child: const CircularImage(
                'https://static.truckersmp.com/avatarsN/1478718.1538351271.jpg'),
          ),
        ],
      ),
    );
  }
}
