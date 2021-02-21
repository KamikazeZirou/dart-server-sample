import 'package:grpc/grpc.dart';
import 'package:todo/src/generated/todo.pb.dart';
import 'package:todo/src/generated/todo.pbgrpc.dart';
import 'package:todo/src/handler/task_service_handler.dart';

void main(List<String> arguments) async {
  final server = Server(
    [TaskServiceHandler()],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 50051);
}
