///
//  Generated code. Do not modify.
//  source: helloworld.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use helloRequestDescriptor instead')
const HelloRequest$json = const {
  '1': 'HelloRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `HelloRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloRequestDescriptor = $convert.base64Decode('CgxIZWxsb1JlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use helloReplyDescriptor instead')
const HelloReply$json = const {
  '1': 'HelloReply',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `HelloReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloReplyDescriptor = $convert.base64Decode('CgpIZWxsb1JlcGx5EhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use waypointDescriptor instead')
const Waypoint$json = const {
  '1': 'Waypoint',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'lat', '3': 2, '4': 1, '5': 5, '10': 'lat'},
    const {'1': 'lon', '3': 3, '4': 1, '5': 5, '10': 'lon'},
    const {'1': 'alt', '3': 4, '4': 1, '5': 5, '10': 'alt'},
    const {'1': 'radius', '3': 5, '4': 1, '5': 2, '10': 'radius'},
    const {'1': 'loops', '3': 6, '4': 1, '5': 2, '10': 'loops'},
  ],
};

/// Descriptor for `Waypoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List waypointDescriptor = $convert.base64Decode('CghXYXlwb2ludBISCgR0eXBlGAEgASgFUgR0eXBlEhAKA2xhdBgCIAEoBVIDbGF0EhAKA2xvbhgDIAEoBVIDbG9uEhAKA2FsdBgEIAEoBVIDYWx0EhYKBnJhZGl1cxgFIAEoAlIGcmFkaXVzEhQKBWxvb3BzGAYgASgCUgVsb29wcw==');
@$core.Deprecated('Use ackStatisDescriptor instead')
const AckStatis$json = const {
  '1': 'AckStatis',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `AckStatis`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ackStatisDescriptor = $convert.base64Decode('CglBY2tTdGF0aXMSFgoGc3RhdHVzGAEgASgFUgZzdGF0dXM=');
@$core.Deprecated('Use missionDescriptor instead')
const Mission$json = const {
  '1': 'Mission',
  '2': const [
    const {'1': 'wp', '3': 7, '4': 3, '5': 11, '6': '.helloworld.Waypoint', '10': 'wp'},
  ],
};

/// Descriptor for `Mission`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List missionDescriptor = $convert.base64Decode('CgdNaXNzaW9uEiQKAndwGAcgAygLMhQuaGVsbG93b3JsZC5XYXlwb2ludFICd3A=');
@$core.Deprecated('Use missionFromMAVDescriptor instead')
const MissionFromMAV$json = const {
  '1': 'MissionFromMAV',
  '2': const [
    const {'1': 'wp', '3': 7, '4': 3, '5': 11, '6': '.helloworld.Waypoint', '10': 'wp'},
  ],
};

/// Descriptor for `MissionFromMAV`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List missionFromMAVDescriptor = $convert.base64Decode('Cg5NaXNzaW9uRnJvbU1BVhIkCgJ3cBgHIAMoCzIULmhlbGxvd29ybGQuV2F5cG9pbnRSAndw');
@$core.Deprecated('Use globalPositionReplyDescriptor instead')
const GlobalPositionReply$json = const {
  '1': 'GlobalPositionReply',
  '2': const [
    const {'1': 'lat', '3': 1, '4': 1, '5': 2, '10': 'lat'},
    const {'1': 'lon', '3': 2, '4': 1, '5': 2, '10': 'lon'},
    const {'1': 'alt', '3': 3, '4': 1, '5': 2, '10': 'alt'},
  ],
};

/// Descriptor for `GlobalPositionReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List globalPositionReplyDescriptor = $convert.base64Decode('ChNHbG9iYWxQb3NpdGlvblJlcGx5EhAKA2xhdBgBIAEoAlIDbGF0EhAKA2xvbhgCIAEoAlIDbG9uEhAKA2FsdBgDIAEoAlIDYWx0');
@$core.Deprecated('Use dataRequestDescriptor instead')
const DataRequest$json = const {
  '1': 'DataRequest',
  '2': const [
    const {'1': 'param', '3': 1, '4': 1, '5': 5, '10': 'param'},
  ],
};

/// Descriptor for `DataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataRequestDescriptor = $convert.base64Decode('CgtEYXRhUmVxdWVzdBIUCgVwYXJhbRgBIAEoBVIFcGFyYW0=');
@$core.Deprecated('Use batteryReplyDescriptor instead')
const BatteryReply$json = const {
  '1': 'BatteryReply',
  '2': const [
    const {'1': 'volts', '3': 1, '4': 1, '5': 2, '10': 'volts'},
  ],
};

/// Descriptor for `BatteryReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batteryReplyDescriptor = $convert.base64Decode('CgxCYXR0ZXJ5UmVwbHkSFAoFdm9sdHMYASABKAJSBXZvbHRz');
@$core.Deprecated('Use modeReplyDescriptor instead')
const ModeReply$json = const {
  '1': 'ModeReply',
  '2': const [
    const {'1': 'mode', '3': 1, '4': 1, '5': 5, '10': 'mode'},
  ],
};

/// Descriptor for `ModeReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modeReplyDescriptor = $convert.base64Decode('CglNb2RlUmVwbHkSEgoEbW9kZRgBIAEoBVIEbW9kZQ==');
@$core.Deprecated('Use armRequestDescriptor instead')
const ArmRequest$json = const {
  '1': 'ArmRequest',
  '2': const [
    const {'1': 'arm', '3': 1, '4': 1, '5': 8, '10': 'arm'},
  ],
};

/// Descriptor for `ArmRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List armRequestDescriptor = $convert.base64Decode('CgpBcm1SZXF1ZXN0EhAKA2FybRgBIAEoCFIDYXJt');
@$core.Deprecated('Use armReplyDescriptor instead')
const ArmReply$json = const {
  '1': 'ArmReply',
  '2': const [
    const {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
  ],
};

/// Descriptor for `ArmReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List armReplyDescriptor = $convert.base64Decode('CghBcm1SZXBseRIOCgJvaxgBIAEoCFICb2s=');
@$core.Deprecated('Use globalPositionRequestDescriptor instead')
const GlobalPositionRequest$json = const {
  '1': 'GlobalPositionRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GlobalPositionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List globalPositionRequestDescriptor = $convert.base64Decode('ChVHbG9iYWxQb3NpdGlvblJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
