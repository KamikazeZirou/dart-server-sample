import 'package:grpc/grpc.dart';
import 'package:todo/src/generated/todo.pb.dart';
import 'package:todo/src/generated/todo.pbgrpc.dart';

class TaskService extends TaskServiceBase {
  var tasks = <Task>[
    Task(id: 1, title: "task1", description: "desc1"),
    Task(id: 2, title: "task2", description: "desc2"),
  ];

  @override
  Future<CreateTaskResponse> createTask(
      ServiceCall call, CreateTaskRequest request) async {
    var newTask = Task(
      id: tasks.length + 1,
      title: request.task.title,
      description: request.task.description,
    );
    tasks.add(newTask);
    return CreateTaskResponse(task: newTask);
  }

  @override
  Future<ListTasksResponse> listTask(
      ServiceCall call, ListTasksRequest request) async {
    return ListTasksResponse(tasks: tasks);
  }
}

void main(List<String> arguments) async {
  final server = Server(
    [TaskService()],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 50051);
}
