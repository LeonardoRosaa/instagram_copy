import 'package:instagram_copy/domain/domain.dart';

class Content {
  const Content({
    this.likes,
    this.locale,
    required this.user,
    required this.image,
    required this.description,
  });

  final User user;

  /// The image post URL
  final String image;

  final String description;

  final List<User>? likes;

  final String? locale;
}
