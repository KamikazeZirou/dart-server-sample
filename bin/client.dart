import 'package:grpc/grpc.dart';
import 'package:todo/src/generated/todo.pb.dart';
import 'package:todo/src/generated/todo.pbgrpc.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    'localhost',
    port: 5001,
    options: ChannelOptions(
      credentials: ChannelCredentials.insecure(),
      codecRegistry:
          CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );
  final stub = TodoServiceClient(channel);

  // 登録済みのタスク一覧を取得
  try {
    final response = await stub.listTodo(
      ListTodoRequest(),
      options: CallOptions(compression: const GzipCodec()),
    );
    print('todos: ${response.todoList}');
  } catch (e) {
    print('Caught error: $e');
  }

  // タスクを登録
  try {
    final response = await stub.createTodo(
      CreateTodoRequest(
          todo: Todo(title: 'title3', description: 'description3')),
      options: CallOptions(compression: const GzipCodec()),
    );
    print('created todo: ${response.todo}');
  } catch (e) {
    print('Caught error: $e');
  }

  // タスク一覧を取得して、タスク登録ができているか確認する。
  try {
    final response = await stub.listTodo(
      ListTodoRequest(),
      options: CallOptions(compression: const GzipCodec()),
    );
    print('todos: ${response.todoList}');
  } catch (e) {
    print('Caught error: $e');
  }

  await channel.shutdown();
}
