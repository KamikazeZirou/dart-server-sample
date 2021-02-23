///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use todoDescriptor instead')
const Todo$json = const {
  '1': 'Todo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Todo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoDescriptor = $convert.base64Decode('CgRUb2RvEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9u');
@$core.Deprecated('Use listTodoRequestDescriptor instead')
const ListTodoRequest$json = const {
  '1': 'ListTodoRequest',
};

/// Descriptor for `ListTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTodoRequestDescriptor = $convert.base64Decode('Cg9MaXN0VG9kb1JlcXVlc3Q=');
@$core.Deprecated('Use listTodoResponseDescriptor instead')
const ListTodoResponse$json = const {
  '1': 'ListTodoResponse',
  '2': const [
    const {'1': 'todoList', '3': 1, '4': 3, '5': 11, '6': '.todo.Todo', '10': 'todoList'},
  ],
};

/// Descriptor for `ListTodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTodoResponseDescriptor = $convert.base64Decode('ChBMaXN0VG9kb1Jlc3BvbnNlEiYKCHRvZG9MaXN0GAEgAygLMgoudG9kby5Ub2RvUgh0b2RvTGlzdA==');
@$core.Deprecated('Use createTodoRequestDescriptor instead')
const CreateTodoRequest$json = const {
  '1': 'CreateTodoRequest',
  '2': const [
    const {'1': 'todo', '3': 1, '4': 1, '5': 11, '6': '.todo.Todo', '10': 'todo'},
  ],
};

/// Descriptor for `CreateTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTodoRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVUb2RvUmVxdWVzdBIeCgR0b2RvGAEgASgLMgoudG9kby5Ub2RvUgR0b2Rv');
@$core.Deprecated('Use createTodoResponseDescriptor instead')
const CreateTodoResponse$json = const {
  '1': 'CreateTodoResponse',
  '2': const [
    const {'1': 'todo', '3': 1, '4': 1, '5': 11, '6': '.todo.Todo', '10': 'todo'},
  ],
};

/// Descriptor for `CreateTodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTodoResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVUb2RvUmVzcG9uc2USHgoEdG9kbxgBIAEoCzIKLnRvZG8uVG9kb1IEdG9kbw==');
