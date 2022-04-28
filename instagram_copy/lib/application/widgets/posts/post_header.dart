import 'package:flutter/material.dart';
import 'package:instagram_copy/application/application.dart';
import 'package:instagram_copy/domain/domain.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';
import 'package:instagram_copy_core/theme/data/spacing.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key? key,
    required this.content,
  }) : super(key: key);

  final Content content;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppPadding(
      padding: const AppEdgeInsetsData.only(
        left: AppSpacingSize.medium,
        right: AppSpacingSize.medium,
        bottom: AppSpacingSize.semiSmall,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              PostCircularUserIcon(
                user: content.user
              ),
              const AppSpace.semiSmall(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.paragraphMedium14(content.user.username),
                  if (content.locale != null)
                    AppText.paragraph12(content.locale!),
                ],
              ),
            ],
          ),
          AppIcon.threeDots(
            color: theme.colors.foreground,
            width: theme.spacing.medium,
          ),
        ],
      ),
    );
  }
}
