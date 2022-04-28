class User {
  
  const User({
    required this.image,
    required this.username,
    this.hasStory,
  });

  /// The user image URL.
  final String image;

  final String username;

  final bool? hasStory;
  
}
