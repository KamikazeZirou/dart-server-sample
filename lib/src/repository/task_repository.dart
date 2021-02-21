import 'package:todo/src/domain/task.dart';

class TaskRepository {
  var tasks = <Task>[
    Task(id: 1, title: 'task1', description: 'desc1'),
    Task(id: 2, title: 'task2', description: 'desc2'),
  ];

  Future<Task> createTask(Task task) async {
    var newTask = Task(
      id: tasks.length + 1,
      title: task.title,
      description: task.description,
    );
    tasks.add(newTask);
    return newTask;
  }

  Future<List<Task>> ListTask() async {
    return tasks;
  }
}
