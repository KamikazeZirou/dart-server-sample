import 'dart:io';

import 'package:mysql1/mysql1.dart';
import 'package:todo/src/domain/task.dart';

class TaskRepository {
  var tasks = <Task>[
    Task(id: 1, title: 'task1', description: 'desc1'),
    Task(id: 2, title: 'task2', description: 'desc2'),
  ];

  MySqlConnection conn;

  Future init() async {
    var envVars = Platform.environment;

    var port = 3306;
    if (envVars['DB_PORT'] != null) {
      port = int.parse(envVars['DB_PORT']);
    }

    var settings = ConnectionSettings(
        host: envVars['DB_HOST'] ?? 'localhost',
        port: port,
        user: 'root',
        password: 'password',
        db: 'todo_db');

    conn = await MySqlConnection.connect(settings);
  }

  Future<Task> createTask(Task task) async {
    var result = await conn.query(
        'insert into tasks (title, description) values (?, ?)',
        [task.title, task.description]);
    return Task(
      id: result.insertId,
      title: task.title,
      description: task.description,
    );
  }

  Future<List<Task>> ListTask() async {
    var cursor = await conn.query('select id, title, description from tasks');

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
