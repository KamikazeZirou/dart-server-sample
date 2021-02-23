import 'package:todo/src/domain/task.dart';

abstract class TaskRepository {
  Future<Task> createTask(Task task);

  Future<List<Task>> listTask();
}
