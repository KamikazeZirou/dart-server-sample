
import 'package:mysql1/mysql1.dart';
import 'package:todo/src/domain/task.dart';
import 'package:todo/src/interfaces/repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  var tasks = <Task>[
    Task(id: 1, title: 'task1', description: 'desc1'),
    Task(id: 2, title: 'task2', description: 'desc2'),
  ];

  final MySqlConnection _conn;

  TaskRepositoryImpl(this._conn);

  Future<Task> createTask(Task task) async {
    var result = await _conn.query(
        'insert into tasks (title, description) values (?, ?)',
        [task.title, task.description]);
    return Task(
      id: result.insertId,
      title: task.title,
      description: task.description,
    );
  }

  Future<List<Task>> listTask() async {
    var cursor = await _conn.query('select id, title, description from tasks');

    var tasks = cursor
        .map((row) => Task(
              id: row['id'],
              title: row['title'].toString(),
              description: row['description'].toString(),
            ))
        .toList();

    return tasks;
  }
}
