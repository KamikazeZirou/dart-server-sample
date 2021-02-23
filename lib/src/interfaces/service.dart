import 'package:todo/src/domain/todo.dart';

abstract class TodoService {
  Future<Todo> create(Todo todo);

  Future<List<Todo>> list();
}
