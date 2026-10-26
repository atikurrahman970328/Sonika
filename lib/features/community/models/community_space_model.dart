class CommunitySpaceModel {
  final String id;
  final String title;
  final String author;
  final String spaceUrl;
  final int likesCount;

  CommunitySpaceModel({
    required this.id,
    required this.title,
    required this.author,
    required this.spaceUrl,
    required this.likesCount,
  });

  factory CommunitySpaceModel.fromJson(Map<String, dynamic> json) {
    return CommunitySpaceModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      author: json['author'] ?? '',
      spaceUrl: json['space_url'] ?? '',
      likesCount: json['likes_count'] ?? 0,
    );
  }
}
