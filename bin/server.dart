import 'package:grpc/grpc.dart';
import 'package:riverpod/riverpod.dart';
import 'package:todo/src/di/di.dart';

void main(List<String> arguments) async {
  final container = ProviderContainer();
  var listener = container.listen(todoServiceHandlerProvider);
  final serviceHandler = await listener.read();

  final server = Server(
    [serviceHandler],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 5001);

  listener.close();
}
