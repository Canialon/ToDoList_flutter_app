//list of all tasks and its state

class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '00', todoText: "test text 2", isDone: true),
      ToDo(id: '01', todoText: "test text 3", isDone: true),
      ToDo(id: '02', todoText: "test text 4", isDone: false),
      ToDo(id: '03', todoText: "test text 5", isDone: true),
      ToDo(id: '04', todoText: "test text 6", isDone: false),
    ];
  }
}
