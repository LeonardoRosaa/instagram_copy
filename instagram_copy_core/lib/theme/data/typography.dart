import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class AppTypographyData extends Equatable {
  const AppTypographyData({
    required this.paragraph12,
    required this.paragraph14,
    required this.paragraphMedium14,
  });

  factory AppTypographyData.regular() => const AppTypographyData(
        paragraph12: TextStyle(
          fontSize: 12,
          fontFamily: 'sf_pro_display',
          package: 'instragam_copy_core',
          fontWeight: FontWeight.w400,
          decoration: TextDecoration.none,
        ),
        paragraph14: TextStyle(
          fontSize: 14,
          fontFamily: 'sf_pro_display',
          package: 'instragam_copy_core',
          fontWeight: FontWeight.w400,
          decoration: TextDecoration.none,
        ),
        paragraphMedium14: TextStyle(
          fontSize: 14,
          fontFamily: 'sf_pro_display',
          package: 'instragam_copy_core',
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        ),
      );

  final TextStyle paragraph14;

  final TextStyle paragraph12;

  final TextStyle paragraphMedium14;

  @override
  List<Object?> get props => [
        paragraph12,
        paragraphMedium14,
        paragraph14,
      ];
}
