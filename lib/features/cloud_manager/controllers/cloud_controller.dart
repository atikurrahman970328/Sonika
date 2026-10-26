import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/cloud_provider_model.dart';
import '../models/runtime_stats_model.dart';

class CloudController extends StateNotifier<List<CloudProviderModel>> {
  CloudController() : super([
    CloudProviderModel(
      id: 'colab',
      name: 'Google Colab',
      apiUrl: 'https://colab.research.google.com',
      token: '',
      isConnected: false,
    ),
    CloudProviderModel(
      id: 'huggingface',
      name: 'Hugging Face Spaces',
      apiUrl: 'https://huggingface.co/spaces',
      token: '',
      isConnected: false,
    ),
    CloudProviderModel(
      id: 'kaggle',
      name: 'Kaggle Kernels',
      apiUrl: 'https://www.kaggle.com',
      token: '',
      isConnected: false,
    ),
  ]);

  void updateConnectionStatus(String id, bool isConnected, {String? token}) {
    state = [
      for (final provider in state)
        if (provider.id == id)
          provider.copyWith(
            isConnected: isConnected,
            token: token ?? provider.token,
          )
        else
          provider,
    ];
  }
}

final cloudControllerProvider = StateNotifierProvider<CloudController, List<CloudProviderModel>>(
  (ref) => CloudController(),
);
