///
//  Generated code. Do not modify.
//  source: test_proto.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use testProtoDescriptor instead')
const TestProto$json = const {
  '1': 'TestProto',
  '2': const [
    const {'1': 'eventChannelId', '3': 1, '4': 1, '5': 9, '10': 'eventChannelId'},
    const {'1': 'methodChannelId', '3': 2, '4': 1, '5': 9, '10': 'methodChannelId'},
  ],
  '3': const [TestProto_Action$json, TestProto_Result$json],
  '4': const [TestProto_Status$json],
};

@$core.Deprecated('Use testProtoDescriptor instead')
const TestProto_Action$json = const {
  '1': 'Action',
  '2': const [
    const {'1': 'finish', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'finish'},
  ],
  '8': const [
    const {'1': 'action'},
  ],
};

@$core.Deprecated('Use testProtoDescriptor instead')
const TestProto_Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.TestProto.Status', '10': 'status'},
  ],
};

@$core.Deprecated('Use testProtoDescriptor instead')
const TestProto_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'IN_PROGRESS', '2': 0},
    const {'1': 'NOT_STARTED', '2': 1},
    const {'1': 'SUCCESS', '2': 2},
  ],
};

/// Descriptor for `TestProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testProtoDescriptor = $convert.base64Decode('CglUZXN0UHJvdG8SJgoOZXZlbnRDaGFubmVsSWQYASABKAlSDmV2ZW50Q2hhbm5lbElkEigKD21ldGhvZENoYW5uZWxJZBgCIAEoCVIPbWV0aG9kQ2hhbm5lbElkGiwKBkFjdGlvbhIYCgZmaW5pc2gYASABKAlIAFIGZmluaXNoQggKBmFjdGlvbhozCgZSZXN1bHQSKQoGc3RhdHVzGAEgASgOMhEuVGVzdFByb3RvLlN0YXR1c1IGc3RhdHVzIjcKBlN0YXR1cxIPCgtJTl9QUk9HUkVTUxAAEg8KC05PVF9TVEFSVEVEEAESCwoHU1VDQ0VTUxAC');
