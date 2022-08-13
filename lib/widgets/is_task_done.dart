//list of all tasks and its state

class ToDo {
  String? id = "1";
  String? todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '00', todoText: "It is default task", isDone: false),
    ];
  }
}
