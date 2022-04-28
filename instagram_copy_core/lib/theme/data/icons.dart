import 'package:equatable/equatable.dart';

class AppIconsData extends Equatable {
  const AppIconsData({
    required this.logo,
    required this.add,
    required this.heart,
    required this.share,
    required this.addStory,
    required this.threeDots,
    required this.comment,
    required this.bookmark,
    required this.home,
    required this.search,
    required this.reels,
    required this.shop,
    required this.message,
  });

  const AppIconsData.regular()
      : this(
          logo: 'assets/icons/logo.svg',
          add: 'assets/icons/add.svg',
          heart: 'assets/icons/heart.svg',
          share: 'assets/icons/share.svg',
          addStory: 'assets/icons/add_story.svg',
          threeDots: 'assets/icons/three_dots.svg',
          comment: 'assets/icons/comment.svg',
          bookmark: 'assets/icons/bookmark.svg',
          search: 'assets/icons/search.svg',
          reels: 'assets/icons/reels.svg',
          home: 'assets/icons/home.svg',
          shop: 'assets/icons/shop.svg',
          message: 'assets/icons/message.svg',
        );

  final String logo;

  final String add;

  final String heart;

  final String share;

  final String addStory;

  final String threeDots;

  final String comment;

  final String bookmark;

  final String home;

  final String search;

  final String reels;

  final String shop;

  final String message;

  @override
  List<Object?> get props => [
        logo,
        add,
        heart,
        share,
        threeDots,
        comment,
        bookmark,
        message,
      ];
}
