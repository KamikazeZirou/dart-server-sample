import 'package:grpc/grpc.dart';
import 'package:todo/src/domain/todo.dart' as domain;
import 'package:todo/src/generated/todo.pb.dart' as grpc;
import 'package:todo/src/generated/todo.pbgrpc.dart';
import 'package:todo/src/interfaces/service.dart';

class TodoServiceHandler extends TodoServiceBase {
  final TodoService _todoService;

  TodoServiceHandler(this._todoService);

  @override
  Future<grpc.CreateTodoResponse> createTodo(
      ServiceCall call, grpc.CreateTodoRequest request) async {
    final newTodo = await _todoService.create(domain.Todo(
      title: request.todo.title,
      description: request.todo.description,
    ));

    return CreateTodoResponse(
        todo: grpc.Todo(
      id: newTodo.id,
      title: newTodo.title,
      description: newTodo.description,
    ));
  }

  @override
  Future<ListTodoResponse> listTodo(
      ServiceCall call, ListTodoRequest request) async {
    final todoList = await _todoService.list();
    var grpcTodoList = todoList
        .map((newTodo) => grpc.Todo(
              id: newTodo.id,
              title: newTodo.title,
              description: newTodo.description,
            ))
        .toList();
    return ListTodoResponse(todoList: grpcTodoList);
  }
}
