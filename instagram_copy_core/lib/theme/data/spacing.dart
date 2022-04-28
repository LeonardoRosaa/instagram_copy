import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_copy_core/theme/data/data.dart';

class AppSpacingData extends Equatable {
  const AppSpacingData({
    required this.small,
    required this.semiSmall,
    required this.semiMedium,
    required this.medium,
    required this.semiLarge,
    required this.large,
  });

  const AppSpacingData.regular()
      : this(
          semiSmall: 8,
          small: 4,
          semiMedium: 12,
          medium: 16,
          semiLarge: 20,
          large: 24,
        );

  final double small;

  final double semiSmall;

  final double semiMedium;

  final double medium;

  final double semiLarge;

  final double large;

  @override
  List<Object> get props => [
        small,
        semiSmall,
        semiMedium,
        medium,
        semiLarge,
        large,
      ];
}

enum AppSpacingSize {
  small,
  semiSmall,
  semiMedium,
  medium,
  semiLarge,
  large,
  none,
}

extension AppSpacingSizeExtension on AppSpacingSize {
  double getSpacing(AppThemeData theme) {
    switch (this) {
      case AppSpacingSize.none:
        return 0;
      case AppSpacingSize.small:
        return theme.spacing.small;
      case AppSpacingSize.semiSmall:
        return theme.spacing.semiSmall;
      case AppSpacingSize.medium:
        return theme.spacing.medium;
      case AppSpacingSize.semiMedium:
        return theme.spacing.medium;
      case AppSpacingSize.semiLarge:
        return theme.spacing.semiLarge;
      case AppSpacingSize.large:
        return theme.spacing.large;  
    }
  }
}

class AppEdgeInsetsData extends Equatable {
  const AppEdgeInsetsData.all(AppSpacingSize value)
      : right = value,
        left = value,
        top = value,
        bottom = value;

  const AppEdgeInsetsData.only({
    this.right = AppSpacingSize.none,
    this.left = AppSpacingSize.none,
    this.top = AppSpacingSize.none,
    this.bottom = AppSpacingSize.none,
  });

  const AppEdgeInsetsData.symetric({
    AppSpacingSize horizontal = AppSpacingSize.none,
    AppSpacingSize vertical = AppSpacingSize.none,
  })  : right = horizontal,
        left = horizontal,
        top = vertical ,
        bottom = vertical;

  final AppSpacingSize right;

  final AppSpacingSize left;

  final AppSpacingSize top;

  final AppSpacingSize bottom;

  @override
  List<Object?> get props => [
        right,
        left,
        top,
        bottom,
      ];

  EdgeInsets toEdgeInsets(AppThemeData theme) {
    return EdgeInsets.only(
      left: left.getSpacing(theme),
      top: top.getSpacing(theme),
      right: right.getSpacing(theme),
      bottom: bottom.getSpacing(theme),
    );
  }
}
