import 'package:equatable/equatable.dart';
import 'package:instagram_copy_core/theme/data/colors.dart';
import 'package:instagram_copy_core/theme/data/icons.dart';
import 'package:instagram_copy_core/theme/data/spacing.dart';
import 'package:instagram_copy_core/theme/data/typography.dart';

class AppThemeData extends Equatable {
  const AppThemeData({
    required this.icons,
    required this.colors,
    required this.spacing,
    required this.typography,
  });

  factory AppThemeData.regular() => AppThemeData(
        icons: const AppIconsData.regular(),
        colors: const AppColorsData.regular(),
        spacing: const AppSpacingData.regular(),
        typography: AppTypographyData.regular(),
      );

  final AppIconsData icons;

  final AppColorsData colors;

  final AppSpacingData spacing;

  final AppTypographyData typography;

  @override
  List<Object?> get props => [
        icons,
        colors,
        spacing,
        typography,
      ];
}
