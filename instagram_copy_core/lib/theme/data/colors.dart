import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.primary,
    required this.foreground,
    required this.background,
    required this.arkaplan,
    required this.borderler,
    required this.white1,
    required this.white2,
    required this.white3,
  });

  const AppColorsData.regular()
      : this(
          primary: const Color(0XFF405DE6),
          foreground: const Color(0xFF000000),
          background: const Color(0XFFFFFFFF),
          arkaplan: const Color(0XFFd52865),
          borderler: const Color(0XFFf7b55a),
          white1: const Color(0xFFEBEBF4),
          white2: const Color(0xFFF4F4F4),
          white3: const Color(0xFFEBEBF4),
        );

  final Color primary;

  final Color foreground;

  final Color background;

  final Color arkaplan;

  final Color borderler;

  final Color white1;

  final Color white2;

  final Color white3;

  @override
  List<Object?> get props => [
        primary,
        foreground,
        background,
        arkaplan,
        borderler,
        white1,
        white2,
        white3,
      ];
}
