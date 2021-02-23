import 'package:grpc/grpc.dart';
import 'package:todo/src/domain/task.dart' as domain;
import 'package:todo/src/generated/todo.pb.dart' as grpc;
import 'package:todo/src/generated/todo.pbgrpc.dart';
import 'package:todo/src/interfaces/service.dart';

class TaskServiceHandler extends TaskServiceBase {
  final TaskService _taskService;

  TaskServiceHandler(this._taskService);

  @override
  Future<CreateTaskResponse> createTask(
      ServiceCall call, CreateTaskRequest request) async {
    final newTask = await _taskService.createTask(domain.Task(
      title: request.task.title,
      description: request.task.description,
    ));

    return CreateTaskResponse(
        task: grpc.Task(
      id: newTask.id,
      title: newTask.title,
      description: newTask.description,
    ));
  }

  @override
  Future<ListTasksResponse> listTask(
      ServiceCall call, ListTasksRequest request) async {
    final tasks = await _taskService.listTask();
    var grpcTasks = tasks
        .map((newTask) => grpc.Task(
              id: newTask.id,
              title: newTask.title,
              description: newTask.description,
            ))
        .toList();
    return ListTasksResponse(tasks: grpcTasks);
  }
}
