class CloudFileModel {
  final String name;
  final String path;
  final bool isDirectory;
  final String size;
  final String lastModified;

  CloudFileModel({
    required this.name,
    required this.path,
    required this.isDirectory,
    required this.size,
    required this.lastModified,
  });

  factory CloudFileModel.fromJson(Map<String, dynamic> json) {
    return CloudFileModel(
      name: json['name'] ?? '',
      path: json['path'] ?? '',
      isDirectory: json['is_directory'] ?? false,
      size: json['size'] ?? '0 KB',
      lastModified: json['last_modified'] ?? '',
    );
  }
}
