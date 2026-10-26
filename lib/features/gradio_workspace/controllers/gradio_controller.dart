import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/gradio_app_model.dart';

class GradioController extends StateNotifier<List<GradioAppModel>> {
  GradioController() : super([
    GradioAppModel(
      id: '1',
      title: 'Stable Diffusion XL',
      appUrl: 'https://huggingface.co/spaces/stabilityai/stable-diffusion-xl',
      description: 'AI Image Generation Space',
    ),
    GradioAppModel(
      id: '2',
      title: 'Whisper Large Speech-to-Text',
      appUrl: 'https://huggingface.co/spaces/openai/whisper',
      description: 'Audio transcription & translation',
    ),
  ]);

  void addApp(GradioAppModel app) {
    state = [...state, app];
  }

  void toggleFavorite(String id) {
    state = [
      for (final app in state)
        if (app.id == id) app.copyWith(isFavorite: !app.isFavorite) else app
    ];
  }
}

final gradioControllerProvider = StateNotifierProvider<GradioController, List<GradioAppModel>>(
  (ref) => GradioController(),
);
