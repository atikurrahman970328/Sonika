class NotebookCellModel {
  final String id;
  final String cellType; // 'code' or 'markdown'
  String content;
  String output;
  bool isExecuting;

  NotebookCellModel({
    required this.id,
    required this.cellType,
    required this.content,
    this.output = '',
    this.isExecuting = false,
  });

  NotebookCellModel copyWith({
    String? content,
    String? output,
    bool? isExecuting,
  }) {
    return NotebookCellModel(
      id: this.id,
      cellType: this.cellType,
      content: content ?? this.content,
      output: output ?? this.output,
      isExecuting: isExecuting ?? this.isExecuting,
    );
  }
}
