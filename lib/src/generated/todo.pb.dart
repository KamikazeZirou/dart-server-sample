///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Todo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Todo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  Todo._() : super();
  factory Todo({
    $core.int? id,
    $core.String? title,
    $core.String? description,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory Todo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Todo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Todo clone() => Todo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Todo copyWith(void Function(Todo) updates) => super.copyWith((message) => updates(message as Todo)) as Todo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Todo create() => Todo._();
  Todo createEmptyInstance() => create();
  static $pb.PbList<Todo> createRepeated() => $pb.PbList<Todo>();
  @$core.pragma('dart2js:noInline')
  static Todo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Todo>(create);
  static Todo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
}

class ListTodoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTodoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListTodoRequest._() : super();
  factory ListTodoRequest() => create();
  factory ListTodoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTodoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTodoRequest clone() => ListTodoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTodoRequest copyWith(void Function(ListTodoRequest) updates) => super.copyWith((message) => updates(message as ListTodoRequest)) as ListTodoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTodoRequest create() => ListTodoRequest._();
  ListTodoRequest createEmptyInstance() => create();
  static $pb.PbList<ListTodoRequest> createRepeated() => $pb.PbList<ListTodoRequest>();
  @$core.pragma('dart2js:noInline')
  static ListTodoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTodoRequest>(create);
  static ListTodoRequest? _defaultInstance;
}

class ListTodoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTodoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..pc<Todo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'todoList', $pb.PbFieldType.PM, protoName: 'todoList', subBuilder: Todo.create)
    ..hasRequiredFields = false
  ;

  ListTodoResponse._() : super();
  factory ListTodoResponse({
    $core.Iterable<Todo>? todoList,
  }) {
    final _result = create();
    if (todoList != null) {
      _result.todoList.addAll(todoList);
    }
    return _result;
  }
  factory ListTodoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTodoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTodoResponse clone() => ListTodoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTodoResponse copyWith(void Function(ListTodoResponse) updates) => super.copyWith((message) => updates(message as ListTodoResponse)) as ListTodoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTodoResponse create() => ListTodoResponse._();
  ListTodoResponse createEmptyInstance() => create();
  static $pb.PbList<ListTodoResponse> createRepeated() => $pb.PbList<ListTodoResponse>();
  @$core.pragma('dart2js:noInline')
  static ListTodoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTodoResponse>(create);
  static ListTodoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Todo> get todoList => $_getList(0);
}

class CreateTodoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTodoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..aOM<Todo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'todo', subBuilder: Todo.create)
    ..hasRequiredFields = false
  ;

  CreateTodoRequest._() : super();
  factory CreateTodoRequest({
    Todo? todo,
  }) {
    final _result = create();
    if (todo != null) {
      _result.todo = todo;
    }
    return _result;
  }
  factory CreateTodoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTodoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTodoRequest clone() => CreateTodoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTodoRequest copyWith(void Function(CreateTodoRequest) updates) => super.copyWith((message) => updates(message as CreateTodoRequest)) as CreateTodoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateTodoRequest create() => CreateTodoRequest._();
  CreateTodoRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTodoRequest> createRepeated() => $pb.PbList<CreateTodoRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTodoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTodoRequest>(create);
  static CreateTodoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Todo get todo => $_getN(0);
  @$pb.TagNumber(1)
  set todo(Todo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTodo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTodo() => clearField(1);
  @$pb.TagNumber(1)
  Todo ensureTodo() => $_ensure(0);
}

class CreateTodoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTodoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'todo'), createEmptyInstance: create)
    ..aOM<Todo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'todo', subBuilder: Todo.create)
    ..hasRequiredFields = false
  ;

  CreateTodoResponse._() : super();
  factory CreateTodoResponse({
    Todo? todo,
  }) {
    final _result = create();
    if (todo != null) {
      _result.todo = todo;
    }
    return _result;
  }
  factory CreateTodoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTodoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTodoResponse clone() => CreateTodoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTodoResponse copyWith(void Function(CreateTodoResponse) updates) => super.copyWith((message) => updates(message as CreateTodoResponse)) as CreateTodoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateTodoResponse create() => CreateTodoResponse._();
  CreateTodoResponse createEmptyInstance() => create();
  static $pb.PbList<CreateTodoResponse> createRepeated() => $pb.PbList<CreateTodoResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateTodoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTodoResponse>(create);
  static CreateTodoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Todo get todo => $_getN(0);
  @$pb.TagNumber(1)
  set todo(Todo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTodo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTodo() => clearField(1);
  @$pb.TagNumber(1)
  Todo ensureTodo() => $_ensure(0);
}

