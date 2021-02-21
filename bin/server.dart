import 'package:grpc/grpc.dart';
import 'package:todo/src/handler/task_service_handler.dart';

void main(List<String> arguments) async {
  final server = Server(
    [TaskServiceHandler()],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 5001);
}
