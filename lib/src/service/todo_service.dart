import 'package:todo/src/domain/todo.dart';
import 'package:todo/src/interfaces/repository.dart';
import 'package:todo/src/interfaces/service.dart';

class TodoServiceImpl implements TodoService {
  final TodoRepository _repository;

  TodoServiceImpl(this._repository);

  @override
  Future<Todo> create(Todo todo) async {
    return _repository.create(todo);
  }

  @override
  Future<List<Todo>> list() async {
    return _repository.list();
  }
}
