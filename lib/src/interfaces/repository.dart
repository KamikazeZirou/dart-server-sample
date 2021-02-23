import 'package:todo/src/domain/todo.dart';

abstract class TodoRepository {
  Future<Todo> create(Todo todo);

  Future<List<Todo>> list();
}
