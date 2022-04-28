
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';
import 'package:instagram_copy_core/theme/data/spacing.dart';

class AppSpace extends StatelessWidget {
  const AppSpace({
    Key? key,
    required this.level,
  }) : super(key: key);

  const AppSpace.semiSmall({Key? key})
      : this(
          key: key,
          level: AppSpacingSize.semiSmall,
        );

  const AppSpace.small({Key? key})
      : this(
          key: key,
          level: AppSpacingSize.small,
        );

  const AppSpace.semiMedium({Key? key})
      : this(
          key: key,
          level: AppSpacingSize.semiMedium,
        );

  const AppSpace.medium({Key? key})
      : this(
          key: key,
          level: AppSpacingSize.medium,
        );

  const AppSpace.semiLarge({Key? key})
      : this(
          key: key,
          level: AppSpacingSize.semiLarge,
        );

  const AppSpace.large({Key? key})
      : this(
          key: key,
          level: AppSpacingSize.large,
        );

  final AppSpacingSize level;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Gap(level.getSpacing(theme));
  }
}