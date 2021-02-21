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

class TaskServiceClient extends $grpc.Client {
  static final _$listTask =
      $grpc.ClientMethod<$0.ListTasksRequest, $0.ListTasksResponse>(
          '/todo.TaskService/ListTask',
          ($0.ListTasksRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListTasksResponse.fromBuffer(value));
  static final _$createTask =
      $grpc.ClientMethod<$0.CreateTaskRequest, $0.CreateTaskResponse>(
          '/todo.TaskService/CreateTask',
          ($0.CreateTaskRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListTasksResponse> listTask(
      $0.ListTasksRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listTask, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateTaskResponse> createTask(
      $0.CreateTaskRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }
}

abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'todo.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListTasksRequest, $0.ListTasksResponse>(
        'ListTask',
        listTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListTasksRequest.fromBuffer(value),
        ($0.ListTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateTaskRequest, $0.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTaskRequest.fromBuffer(value),
        ($0.CreateTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListTasksResponse> listTask_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListTasksRequest> request) async {
    return listTask(call, await request);
  }

  $async.Future<$0.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$0.ListTasksResponse> listTask(
      $grpc.ServiceCall call, $0.ListTasksRequest request);
  $async.Future<$0.CreateTaskResponse> createTask(
      $grpc.ServiceCall call, $0.CreateTaskRequest request);
}
