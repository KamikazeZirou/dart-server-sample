import 'dart:io';

import 'package:mysql1/mysql1.dart';
import 'package:riverpod/riverpod.dart';
import 'package:todo/src/handler/todo_service_handler.dart';
import 'package:todo/src/interfaces/repository.dart';
import 'package:todo/src/interfaces/service.dart';
import 'package:todo/src/repository/mysql_todo_repository.dart';
import 'package:todo/src/service/todo_service.dart';

// ignore: top_level_function_literal_block
final connectionProvider = Provider.autoDispose((ref) async {
  var envVars = Platform.environment;

  var port = 33306;
  if (envVars['DB_PORT'] != null) {
    port = int.parse(envVars['DB_PORT']);
  }

  var settings = ConnectionSettings(
      host: envVars['DB_HOST'] ?? 'localhost',
      port: port,
      user: 'root',
      password: 'password',
      db: 'todo_db');

  final connection = await MySqlConnection.connect(settings);
  ref.onDispose(() {
    connection.close();
  });

  return connection;
});

final todoRepositoryProvider = Provider.autoDispose((ref) =>
    ref.watch(connectionProvider).then((conn) => MySQLTodoRepository(conn)));

final todoServiceProvider = Provider.autoDispose((ref) => ref
    .watch(todoRepositoryProvider)
    .then((repository) => TodoServiceImpl(repository)));

final todoServiceHandlerProvider = Provider.autoDispose((ref) => ref
    .watch(todoServiceProvider)
    .then((service) => TodoServiceHandler(service)));
