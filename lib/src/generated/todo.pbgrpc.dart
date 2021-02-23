///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todo.pb.dart' as $0;
export 'todo.pb.dart';

class TodoServiceClient extends $grpc.Client {
  static final _$listTodo =
      $grpc.ClientMethod<$0.ListTodoRequest, $0.ListTodoResponse>(
          '/todo.TodoService/ListTodo',
          ($0.ListTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListTodoResponse.fromBuffer(value));
  static final _$createTodo =
      $grpc.ClientMethod<$0.CreateTodoRequest, $0.CreateTodoResponse>(
          '/todo.TodoService/CreateTodo',
          ($0.CreateTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateTodoResponse.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListTodoResponse> listTodo($0.ListTodoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateTodoResponse> createTodo(
      $0.CreateTodoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTodo, request, options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'todo.TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListTodoRequest, $0.ListTodoResponse>(
        'ListTodo',
        listTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListTodoRequest.fromBuffer(value),
        ($0.ListTodoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateTodoRequest, $0.CreateTodoResponse>(
        'CreateTodo',
        createTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTodoRequest.fromBuffer(value),
        ($0.CreateTodoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListTodoResponse> listTodo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ListTodoRequest> request) async {
    return listTodo(call, await request);
  }

  $async.Future<$0.CreateTodoResponse> createTodo_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateTodoRequest> request) async {
    return createTodo(call, await request);
  }

  $async.Future<$0.ListTodoResponse> listTodo(
      $grpc.ServiceCall call, $0.ListTodoRequest request);
  $async.Future<$0.CreateTodoResponse> createTodo(
      $grpc.ServiceCall call, $0.CreateTodoRequest request);
}
