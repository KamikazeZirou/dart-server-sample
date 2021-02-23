import 'package:todo/src/domain/task.dart';
import 'package:todo/src/interfaces/service.dart';
import 'package:todo/src/repository/task_repository.dart';

class TaskServiceImpl implements TaskService {
  final TaskRepositoryImpl _repository;

  TaskServiceImpl(this._repository);

  @override
  Future<Task> createTask(Task task) async {
    return _repository.createTask(task);
  }

  @override
  Future<List<Task>> listTask() async {
    return _repository.listTask();
  }
}
