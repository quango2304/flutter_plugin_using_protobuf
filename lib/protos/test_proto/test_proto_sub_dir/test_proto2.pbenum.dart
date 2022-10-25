///
//  Generated code. Do not modify.
//  source: test_proto/test_proto_sub_dir/test_proto2.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TestProto2_Status extends $pb.ProtobufEnum {
  static const TestProto2_Status IN_PROGRESS = TestProto2_Status._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IN_PROGRESS');
  static const TestProto2_Status NOT_STARTED = TestProto2_Status._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_STARTED');
  static const TestProto2_Status SUCCESS = TestProto2_Status._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');

  static const $core.List<TestProto2_Status> values = <TestProto2_Status> [
    IN_PROGRESS,
    NOT_STARTED,
    SUCCESS,
  ];

  static final $core.Map<$core.int, TestProto2_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TestProto2_Status? valueOf($core.int value) => _byValue[value];

  const TestProto2_Status._($core.int v, $core.String n) : super(v, n);
}

