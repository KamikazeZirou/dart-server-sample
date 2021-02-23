import 'package:todo/src/domain/task.dart';

abstract class TaskService {
  Future<Task> createTask(Task task);

  Future<List<Task>> listTask();
}
