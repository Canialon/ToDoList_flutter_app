//list of all tasks and its state

class ToDoTasksList {
  String? id = "1";
  String? todoText;
  bool isDone;

  ToDoTasksList(
      {required this.id, required this.todoText, this.isDone = false});

  static List<ToDoTasksList> todoList() {
    return [
      ToDoTasksList(id: '00', todoText: "It is default task", isDone: false),
    ];
  }
}
