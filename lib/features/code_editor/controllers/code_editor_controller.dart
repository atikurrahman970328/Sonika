import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/notebook_cell_model.dart';

class CodeEditorController extends StateNotifier<List<NotebookCellModel>> {
  CodeEditorController() : super([
    NotebookCellModel(
      id: '1',
      cellType: 'markdown',
      content: '# Omni AI IDE - Jupyter Notebook\nরিমোট পাইথন কার্নেল এক্সিকিউশন শুরু করুন:',
    ),
    NotebookCellModel(
      id: '2',
      cellType: 'code',
      content: 'import torch\nprint("GPU Available:", torch.cuda.is_available())',
    ),
  ]);

  void updateCellContent(String id, String newContent) {
    state = [
      for (final cell in state)
        if (cell.id == id) cell.copyWith(content: newContent) else cell
    ];
  }

  void addCell(String cellType) {
    final newCell = NotebookCellModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      cellType: cellType,
      content: cellType == 'code' ? '# নতুন পাইথন কোড সেল' : '### নতুন মার্কডাউন সেল',
    );
    state = [...state, newCell];
  }

  void removeCell(String id) {
    state = state.where((cell) => cell.id != id).toList();
  }
}

final codeEditorControllerProvider = StateNotifierProvider<CodeEditorController, List<NotebookCellModel>>(
  (ref) => CodeEditorController(),
);
