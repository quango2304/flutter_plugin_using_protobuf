///
//  Generated code. Do not modify.
//  source: test_proto/test_proto1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'test_proto1.pbenum.dart';

export 'test_proto1.pbenum.dart';

enum TestProto1_Action_Action {
  finish, 
  notSet
}

class TestProto1_Action extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TestProto1_Action_Action> _TestProto1_Action_ActionByTag = {
    1 : TestProto1_Action_Action.finish,
    0 : TestProto1_Action_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestProto1.Action', createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finish')
    ..hasRequiredFields = false
  ;

  TestProto1_Action._() : super();
  factory TestProto1_Action({
    $core.String? finish,
  }) {
    final _result = create();
    if (finish != null) {
      _result.finish = finish;
    }
    return _result;
  }
  factory TestProto1_Action.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestProto1_Action.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestProto1_Action clone() => TestProto1_Action()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestProto1_Action copyWith(void Function(TestProto1_Action) updates) => super.copyWith((message) => updates(message as TestProto1_Action)) as TestProto1_Action; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestProto1_Action create() => TestProto1_Action._();
  TestProto1_Action createEmptyInstance() => create();
  static $pb.PbList<TestProto1_Action> createRepeated() => $pb.PbList<TestProto1_Action>();
  @$core.pragma('dart2js:noInline')
  static TestProto1_Action getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestProto1_Action>(create);
  static TestProto1_Action? _defaultInstance;

  TestProto1_Action_Action whichAction() => _TestProto1_Action_ActionByTag[$_whichOneof(0)]!;
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

class TestProto1_Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestProto1.Result', createEmptyInstance: create)
    ..e<TestProto1_Status>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TestProto1_Status.IN_PROGRESS, valueOf: TestProto1_Status.valueOf, enumValues: TestProto1_Status.values)
    ..hasRequiredFields = false
  ;

  TestProto1_Result._() : super();
  factory TestProto1_Result({
    TestProto1_Status? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory TestProto1_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestProto1_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestProto1_Result clone() => TestProto1_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestProto1_Result copyWith(void Function(TestProto1_Result) updates) => super.copyWith((message) => updates(message as TestProto1_Result)) as TestProto1_Result; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestProto1_Result create() => TestProto1_Result._();
  TestProto1_Result createEmptyInstance() => create();
  static $pb.PbList<TestProto1_Result> createRepeated() => $pb.PbList<TestProto1_Result>();
  @$core.pragma('dart2js:noInline')
  static TestProto1_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestProto1_Result>(create);
  static TestProto1_Result? _defaultInstance;

  @$pb.TagNumber(1)
  TestProto1_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(TestProto1_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class TestProto1 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestProto1', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TestProto1._() : super();
  factory TestProto1() => create();
  factory TestProto1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestProto1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestProto1 clone() => TestProto1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestProto1 copyWith(void Function(TestProto1) updates) => super.copyWith((message) => updates(message as TestProto1)) as TestProto1; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestProto1 create() => TestProto1._();
  TestProto1 createEmptyInstance() => create();
  static $pb.PbList<TestProto1> createRepeated() => $pb.PbList<TestProto1>();
  @$core.pragma('dart2js:noInline')
  static TestProto1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestProto1>(create);
  static TestProto1? _defaultInstance;
}

