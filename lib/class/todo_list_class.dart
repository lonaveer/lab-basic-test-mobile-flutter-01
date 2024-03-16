class Todo {
  String title;
  bool completed;

  Todo({
    required this.title,
    this.completed = false,
  });

  void toggleCompleted() {
    completed = !completed;
  }
}

class TodoList {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void add(Todo todo) {
    _todos.add(todo);
  }

  void remove(Todo todo) {
    _todos.remove(todo);
  }

  List<Todo> getCompleted() {
    return _todos.where((todo) => todo.completed).toList();
  }

  List<Todo> search(String query) {
    return _todos.where((todo) => todo.title.contains(query)).toList();
  }
}