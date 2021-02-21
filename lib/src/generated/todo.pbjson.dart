///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use taskDescriptor instead')
const Task$json = const {
  '1': 'Task',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Task`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskDescriptor = $convert.base64Decode('CgRUYXNrEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9u');
@$core.Deprecated('Use listTasksRequestDescriptor instead')
const ListTasksRequest$json = const {
  '1': 'ListTasksRequest',
};

/// Descriptor for `ListTasksRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTasksRequestDescriptor = $convert.base64Decode('ChBMaXN0VGFza3NSZXF1ZXN0');
@$core.Deprecated('Use listTasksResponseDescriptor instead')
const ListTasksResponse$json = const {
  '1': 'ListTasksResponse',
  '2': const [
    const {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.todo.Task', '10': 'tasks'},
  ],
};

/// Descriptor for `ListTasksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTasksResponseDescriptor = $convert.base64Decode('ChFMaXN0VGFza3NSZXNwb25zZRIgCgV0YXNrcxgBIAMoCzIKLnRvZG8uVGFza1IFdGFza3M=');
@$core.Deprecated('Use createTaskRequestDescriptor instead')
const CreateTaskRequest$json = const {
  '1': 'CreateTaskRequest',
  '2': const [
    const {'1': 'task', '3': 1, '4': 1, '5': 11, '6': '.todo.Task', '10': 'task'},
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVUYXNrUmVxdWVzdBIeCgR0YXNrGAEgASgLMgoudG9kby5UYXNrUgR0YXNr');
@$core.Deprecated('Use createTaskResponseDescriptor instead')
const CreateTaskResponse$json = const {
  '1': 'CreateTaskResponse',
  '2': const [
    const {'1': 'task', '3': 1, '4': 1, '5': 11, '6': '.todo.Task', '10': 'task'},
  ],
};

/// Descriptor for `CreateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVUYXNrUmVzcG9uc2USHgoEdGFzaxgBIAEoCzIKLnRvZG8uVGFza1IEdGFzaw==');
