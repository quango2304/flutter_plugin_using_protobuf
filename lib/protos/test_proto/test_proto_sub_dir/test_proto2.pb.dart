///
//  Generated code. Do not modify.
//  source: test_proto/test_proto_sub_dir/test_proto2.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'test_proto2.pbenum.dart';

export 'test_proto2.pbenum.dart';

enum TestProto2_Action_Action {
  finish, 
  notSet
}

class TestProto2_Action extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TestProto2_Action_Action> _TestProto2_Action_ActionByTag = {
    1 : TestProto2_Action_Action.finish,
    0 : TestProto2_Action_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestProto2.Action', createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finish')
    ..hasRequiredFields = false
  ;

  TestProto2_Action._() : super();
  factory TestProto2_Action({
    $core.String? finish,
  }) {
    final _result = create();
    if (finish != null) {
      _result.finish = finish;
    }
    return _result;
  }
  factory TestProto2_Action.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestProto2_Action.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestProto2_Action clone() => TestProto2_Action()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestProto2_Action copyWith(void Function(TestProto2_Action) updates) => super.copyWith((message) => updates(message as TestProto2_Action)) as TestProto2_Action; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestProto2_Action create() => TestProto2_Action._();
  TestProto2_Action createEmptyInstance() => create();
  static $pb.PbList<TestProto2_Action> createRepeated() => $pb.PbList<TestProto2_Action>();
  @$core.pragma('dart2js:noInline')
  static TestProto2_Action getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestProto2_Action>(create);
  static TestProto2_Action? _defaultInstance;

  TestProto2_Action_Action whichAction() => _TestProto2_Action_ActionByTag[$_whichOneof(0)]!;
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

class TestProto2_Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestProto2.Result', createEmptyInstance: create)
    ..e<TestProto2_Status>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TestProto2_Status.IN_PROGRESS, valueOf: TestProto2_Status.valueOf, enumValues: TestProto2_Status.values)
    ..hasRequiredFields = false
  ;

  TestProto2_Result._() : super();
  factory TestProto2_Result({
    TestProto2_Status? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory TestProto2_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestProto2_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestProto2_Result clone() => TestProto2_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestProto2_Result copyWith(void Function(TestProto2_Result) updates) => super.copyWith((message) => updates(message as TestProto2_Result)) as TestProto2_Result; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestProto2_Result create() => TestProto2_Result._();
  TestProto2_Result createEmptyInstance() => create();
  static $pb.PbList<TestProto2_Result> createRepeated() => $pb.PbList<TestProto2_Result>();
  @$core.pragma('dart2js:noInline')
  static TestProto2_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestProto2_Result>(create);
  static TestProto2_Result? _defaultInstance;

  @$pb.TagNumber(1)
  TestProto2_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(TestProto2_Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class TestProto2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestProto2', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TestProto2._() : super();
  factory TestProto2() => create();
  factory TestProto2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestProto2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestProto2 clone() => TestProto2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestProto2 copyWith(void Function(TestProto2) updates) => super.copyWith((message) => updates(message as TestProto2)) as TestProto2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestProto2 create() => TestProto2._();
  TestProto2 createEmptyInstance() => create();
  static $pb.PbList<TestProto2> createRepeated() => $pb.PbList<TestProto2>();
  @$core.pragma('dart2js:noInline')
  static TestProto2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestProto2>(create);
  static TestProto2? _defaultInstance;
}

