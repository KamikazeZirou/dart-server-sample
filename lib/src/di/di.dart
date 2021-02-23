import 'dart:io';

import 'package:mysql1/mysql1.dart';
import 'package:riverpod/riverpod.dart';
import 'package:todo/src/handler/task_service_handler.dart';
import 'package:todo/src/interfaces/repository.dart';
import 'package:todo/src/interfaces/service.dart';
import 'package:todo/src/repository/task_repository.dart';
import 'package:todo/src/service/task_service.dart';

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
  ref.onDispose(() => connection.close());

  return connection;
});

final taskRepositoryProvider = Provider.autoDispose((ref) =>
    ref.watch(connectionProvider).then((conn) => TaskRepositoryImpl(conn)));

final taskServiceProvider = Provider.autoDispose((ref) => ref
    .watch(taskRepositoryProvider)
    .then((repository) => TaskServiceImpl(repository)));

final taskServiceHandlerProvider = Provider.autoDispose((ref) => ref
    .watch(taskServiceProvider)
    .then((service) => TaskServiceHandler(service)));
