///
//  Generated code. Do not modify.
//  source: test_proto.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'test_proto.pbenum.dart';

export 'test_proto.pbenum.dart';

enum TestProto_Action_Action {
  finish, 
  notSet
}

class TestProto_Action extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TestProto_Action_Action> _TestProto_Action_ActionByTag = {
    1 : TestProto_Action_Action.finish,
    0 : TestProto_Action_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestProto.Action', createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finish')
    ..hasRequiredFields = false
  ;

  TestProto_Action._() : super();
  factory TestProto_Action({
    $core.String? finish,
  }) {
    final _result = create();
    if (finish != null) {
      _result.finish = finish;
    }
    return _result;
  }
  factory TestProto_Action.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestProto_Action.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestProto_Action clone() => TestProto_Action()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestProto_Action copyWith(void Function(TestProto_Action) updates) => super.copyWith((message) => updates(message as TestProto_Action)) as TestProto_Action; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestProto_Action create() => TestProto_Action._();
  TestProto_Action createEmptyInstance() => create();
  static $pb.PbList<TestProto_Action> createRepeated() => $pb.PbList<TestProto_Action>();
  @$core.pragma('dart2js:noInline')
  static TestProto_Action getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestProto_Action>(create);
  static TestProto_Action? _defaultInstance;

  TestProto_Action_Action whichAction() => _TestProto_Action_ActionByTag[$_whichOneof(0)]!;
  void clearAction() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get finish => $_getSZ(0);
  @$pb.TagNumber(1)
  set finish($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFinish() => $_has(0);
  @$pb.TagNumber(1)
  void clearFinish() => clearField(1);
}

class TestProto_Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestProto.Result', createEmptyInstance: create)
    ..e<TestProto_Status>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TestProto_Status.IN_PROGRESS, valueOf: TestProto_Status.valueOf, enumValues: TestProto_Status.values)
    ..hasRequiredFields = false
  ;

  TestProto_Result._() : super();
  factory TestProto_Result({
    TestProto_Status? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory TestProto_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestProto_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestProto_Result clone() => TestProto_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestProto_Result copyWith(void Function(TestProto_Result) updates) => super.copyWith((message) => updates(message as TestProto_Result)) as TestProto_Result; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestProto_Result create() => TestProto_Result._();
  TestProto_Result createEmptyInstance() => create();
  static $pb.PbList<TestProto_Result> createRepeated() => $pb.PbList<TestProto_Result>();
  @$core.pragma('dart2js:noInline')
  static TestProto_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestProto_Result>(create);
  static TestProto_Result? _defaultInstance;

  @$pb.TagNumber(1)
  TestProto_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(TestProto_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class TestProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestProto', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventChannelId', protoName: 'eventChannelId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'methodChannelId', protoName: 'methodChannelId')
    ..hasRequiredFields = false
  ;

  TestProto._() : super();
  factory TestProto({
    $core.String? eventChannelId,
    $core.String? methodChannelId,
  }) {
    final _result = create();
    if (eventChannelId != null) {
      _result.eventChannelId = eventChannelId;
    }
    if (methodChannelId != null) {
      _result.methodChannelId = methodChannelId;
    }
    return _result;
  }
  factory TestProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestProto clone() => TestProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestProto copyWith(void Function(TestProto) updates) => super.copyWith((message) => updates(message as TestProto)) as TestProto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestProto create() => TestProto._();
  TestProto createEmptyInstance() => create();
  static $pb.PbList<TestProto> createRepeated() => $pb.PbList<TestProto>();
  @$core.pragma('dart2js:noInline')
  static TestProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestProto>(create);
  static TestProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get eventChannelId => $_getSZ(0);
  @$pb.TagNumber(1)
  set eventChannelId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEventChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventChannelId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get methodChannelId => $_getSZ(1);
  @$pb.TagNumber(2)
  set methodChannelId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMethodChannelId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMethodChannelId() => clearField(2);
}

