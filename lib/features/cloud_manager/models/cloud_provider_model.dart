class CloudProviderModel {
  final String id;
  final String name; // e.g., 'Google Colab', 'Hugging Face', 'Kaggle'
  final String apiUrl;
  final String token;
  final bool isConnected;

  CloudProviderModel({
    required this.id,
    required this.name,
    required this.apiUrl,
    required this.token,
    required this.isConnected,
  });

  CloudProviderModel copyWith({
    String? name,
    String? apiUrl,
    String? token,
    bool? isConnected,
  }) {
    return CloudProviderModel(
      id: this.id,
      name: name ?? this.name,
      apiUrl: apiUrl ?? this.apiUrl,
      token: token ?? this.token,
      isConnected: isConnected ?? this.isConnected,
    );
  }
}
