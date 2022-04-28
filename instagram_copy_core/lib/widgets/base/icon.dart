import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_copy_core/instagram_copy_core.dart';

enum IconLevel {
  logo,
  add,
  heart,
  share,
  addStory,
  threeDots,
  comment,
  bookmark,
  home,
  search,
  reels,
  shop,
  message,
}

class AppIcon extends StatelessWidget {
  const AppIcon({
    Key? key,
    this.width,
    this.height,
    this.color,
    required this.level,
  }) : super(key: key);

  const AppIcon.logo({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.logo,
        );

  const AppIcon.add({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.add,
        );
  const AppIcon.heart({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.heart,
        );

  const AppIcon.share({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.share,
        );

  const AppIcon.addStory({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.addStory,
        );

  const AppIcon.threeDots({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.threeDots,
        );

  const AppIcon.comment({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.comment,
        );

  const AppIcon.bookmark({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.bookmark,
        );

  const AppIcon.shop({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.shop,
        );

  const AppIcon.search({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.search,
        );

  const AppIcon.reels({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.reels,
        );

  const AppIcon.home({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.home,
        );

  const AppIcon.message({
    Key? key,
    double? height,
    double? width,
    Color? color,
  }) : this(
          key: key,
          height: height,
          width: width,
          color: color,
          level: IconLevel.message,
        );
  final IconLevel level;

  final double? width;

  final double? height;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    final icon = () {
      switch (level) {
        case IconLevel.logo:
          return theme.icons.logo;
        case IconLevel.add:
          return theme.icons.add;
        case IconLevel.heart:
          return theme.icons.heart;
        case IconLevel.share:
          return theme.icons.share;
        case IconLevel.addStory:
          return theme.icons.addStory;
        case IconLevel.threeDots:
          return theme.icons.threeDots;
        case IconLevel.comment:
          return theme.icons.comment;
        case IconLevel.bookmark:
          return theme.icons.bookmark;
        case IconLevel.home:
          return theme.icons.home;
        case IconLevel.reels:
          return theme.icons.reels;
        case IconLevel.shop:
          return theme.icons.shop;
        case IconLevel.search:
          return theme.icons.search;
        case IconLevel.message:
          return theme.icons.message;
      }
    }();

    return SvgPicture.asset(
      icon,
      package: 'instagram_copy_core',
      height: height,
      width: width,
      color: color,
    );
  }
}
