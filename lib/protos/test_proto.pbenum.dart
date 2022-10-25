///
//  Generated code. Do not modify.
//  source: test_proto.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TestProto_Status extends $pb.ProtobufEnum {
  static const TestProto_Status IN_PROGRESS = TestProto_Status._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IN_PROGRESS');
  static const TestProto_Status NOT_STARTED = TestProto_Status._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_STARTED');
  static const TestProto_Status SUCCESS = TestProto_Status._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');

  static const $core.List<TestProto_Status> values = <TestProto_Status> [
    IN_PROGRESS,
    NOT_STARTED,
    SUCCESS,
  ];

  static final $core.Map<$core.int, TestProto_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestProto_Status? valueOf($core.int value) => _byValue[value];

  const TestProto_Status._($core.int v, $core.String n) : super(v, n);
}

