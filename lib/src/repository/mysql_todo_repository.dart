
import 'package:mysql1/mysql1.dart';
import 'package:todo/src/domain/todo.dart';
import 'package:todo/src/interfaces/repository.dart';

class MySQLTodoRepository implements TodoRepository {
  final MySqlConnection _conn;

  MySQLTodoRepository(this._conn);

  @override
  Future<Todo> create(Todo todo) async {
    var result = await _conn.query(
        'insert into tasks (title, description) values (?, ?)',
        [todo.title, todo.description]);
    return Todo(
      id: result.insertId,
      title: todo.title,
      description: todo.description,
    );
  }

  @override
  Future<List<Todo>> list() async {
    var cursor = await _conn.query('select id, title, description from tasks');

    var tasks = cursor
        .map((row) => Todo(
              id: row['id'],
              title: row['title'].toString(),
              description: row['description'].toString(),
            ))
        .toList();

    return tasks;
  }
}
