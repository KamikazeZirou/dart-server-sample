import 'dart:io';

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

  final shutdown = (ProcessSignal event) async {
    stdout.write('\nStopping server ... ');
    await server.shutdown();
    listener.close();
    return Future.delayed(Duration(seconds: 10)).then((value) {
      stdout.write('done\n');
      exit(1);
    });
  };

  ProcessSignal.sigint.watch().listen(shutdown);
  ProcessSignal.sigterm.watch().listen(shutdown);
}
