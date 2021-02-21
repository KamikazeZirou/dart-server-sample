import 'package:todo/src/domain/task.dart';
import 'package:todo/src/repository/task_repository.dart';

class TaskService {
  final TaskRepository repository = TaskRepository();

  Future<Task> createTask(Task task) async {
    return repository.createTask(task);
  }

  @override
  Future<List<Task>> ListTask() async {
    return repository.ListTask();
  }
}
