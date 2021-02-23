import 'package:grpc/grpc.dart';
import 'package:todo/src/di/di.dart';
import 'package:todo/src/handler/task_service_handler.dart';
import 'package:riverpod/riverpod.dart';
import 'package:todo/src/interfaces/repository.dart';

void main(List<String> arguments) async {
  final container = ProviderContainer();
  var listener = container.listen(taskServiceHandlerProvider);
  final serviceHandler = await listener.read();

  final server = Server(
    [serviceHandler],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 5001);

  listener.close();
}
