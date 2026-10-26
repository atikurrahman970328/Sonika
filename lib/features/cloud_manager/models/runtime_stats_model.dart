class RuntimeStatsModel {
  final String serverId;
  final double cpuUsage;
  final double ramUsage;
  final double gpuUsage;
  final String status; // 'active', 'idle', 'paused'

  RuntimeStatsModel({
    required this.serverId,
    required this.cpuUsage,
    required this.ramUsage,
    required this.gpuUsage,
    required this.status,
  });

  factory RuntimeStatsModel.fromJson(Map<String, dynamic> json) {
    return RuntimeStatsModel(
      serverId: json['server_id'] ?? '',
      cpuUsage: (json['cpu_usage'] ?? 0.0).toDouble(),
      ramUsage: (json['ram_usage'] ?? 0.0).toDouble(),
      gpuUsage: (json['gpu_usage'] ?? 0.0).toDouble(),
      status: json['status'] ?? 'idle',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'server_id': serverId,
      'cpu_usage': cpuUsage,
      'ram_usage': ramUsage,
      'gpu_usage': gpuUsage,
      'status': status,
    };
  }
}
