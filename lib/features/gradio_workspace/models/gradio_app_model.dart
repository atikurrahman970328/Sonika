class GradioAppModel {
  final String id;
  final String title;
  final String appUrl;
  final String description;
  final bool isFavorite;

  GradioAppModel({
    required this.id,
    required this.title,
    required this.appUrl,
    required this.description,
    this.isFavorite = false,
  });

  GradioAppModel copyWith({
    String? title,
    String? appUrl,
    String? description,
    bool? isFavorite,
  }) {
    return GradioAppModel(
      id: this.id,
      title: title ?? this.title,
      appUrl: appUrl ?? this.appUrl,
      description: description ?? this.description,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
