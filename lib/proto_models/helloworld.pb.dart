///
//  Generated code. Do not modify.
//  source: helloworld.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class HelloRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HelloRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  HelloRequest._() : super();
  factory HelloRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory HelloRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloRequest clone() => HelloRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloRequest copyWith(void Function(HelloRequest) updates) => super.copyWith((message) => updates(message as HelloRequest)) as HelloRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HelloRequest create() => HelloRequest._();
  HelloRequest createEmptyInstance() => create();
  static $pb.PbList<HelloRequest> createRepeated() => $pb.PbList<HelloRequest>();
  @$core.pragma('dart2js:noInline')
  static HelloRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloRequest>(create);
  static HelloRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class HelloReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HelloReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  HelloReply._() : super();
  factory HelloReply({
    $core.String? message,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory HelloReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloReply clone() => HelloReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloReply copyWith(void Function(HelloReply) updates) => super.copyWith((message) => updates(message as HelloReply)) as HelloReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HelloReply create() => HelloReply._();
  HelloReply createEmptyInstance() => create();
  static $pb.PbList<HelloReply> createRepeated() => $pb.PbList<HelloReply>();
  @$core.pragma('dart2js:noInline')
  static HelloReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloReply>(create);
  static HelloReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class Waypoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Waypoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lon', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alt', $pb.PbFieldType.O3)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'radius', $pb.PbFieldType.OF)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loops', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  Waypoint._() : super();
  factory Waypoint({
    $core.int? type,
    $core.int? lat,
    $core.int? lon,
    $core.int? alt,
    $core.double? radius,
    $core.double? loops,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (lat != null) {
      _result.lat = lat;
    }
    if (lon != null) {
      _result.lon = lon;
    }
    if (alt != null) {
      _result.alt = alt;
    }
    if (radius != null) {
      _result.radius = radius;
    }
    if (loops != null) {
      _result.loops = loops;
    }
    return _result;
  }
  factory Waypoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Waypoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Waypoint clone() => Waypoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Waypoint copyWith(void Function(Waypoint) updates) => super.copyWith((message) => updates(message as Waypoint)) as Waypoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Waypoint create() => Waypoint._();
  Waypoint createEmptyInstance() => create();
  static $pb.PbList<Waypoint> createRepeated() => $pb.PbList<Waypoint>();
  @$core.pragma('dart2js:noInline')
  static Waypoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Waypoint>(create);
  static Waypoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get lat => $_getIZ(1);
  @$pb.TagNumber(2)
  set lat($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLat() => $_has(1);
  @$pb.TagNumber(2)
  void clearLat() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get lon => $_getIZ(2);
  @$pb.TagNumber(3)
  set lon($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLon() => $_has(2);
  @$pb.TagNumber(3)
  void clearLon() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get alt => $_getIZ(3);
  @$pb.TagNumber(4)
  set alt($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAlt() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlt() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get radius => $_getN(4);
  @$pb.TagNumber(5)
  set radius($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRadius() => $_has(4);
  @$pb.TagNumber(5)
  void clearRadius() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get loops => $_getN(5);
  @$pb.TagNumber(6)
  set loops($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLoops() => $_has(5);
  @$pb.TagNumber(6)
  void clearLoops() => clearField(6);
}

class AckStatis extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AckStatis', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AckStatis._() : super();
  factory AckStatis({
    $core.int? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory AckStatis.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AckStatis.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AckStatis clone() => AckStatis()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AckStatis copyWith(void Function(AckStatis) updates) => super.copyWith((message) => updates(message as AckStatis)) as AckStatis; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AckStatis create() => AckStatis._();
  AckStatis createEmptyInstance() => create();
  static $pb.PbList<AckStatis> createRepeated() => $pb.PbList<AckStatis>();
  @$core.pragma('dart2js:noInline')
  static AckStatis getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AckStatis>(create);
  static AckStatis? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class Mission extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Mission', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..pc<Waypoint>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wp', $pb.PbFieldType.PM, subBuilder: Waypoint.create)
    ..hasRequiredFields = false
  ;

  Mission._() : super();
  factory Mission({
    $core.Iterable<Waypoint>? wp,
  }) {
    final _result = create();
    if (wp != null) {
      _result.wp.addAll(wp);
    }
    return _result;
  }
  factory Mission.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Mission.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Mission clone() => Mission()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Mission copyWith(void Function(Mission) updates) => super.copyWith((message) => updates(message as Mission)) as Mission; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Mission create() => Mission._();
  Mission createEmptyInstance() => create();
  static $pb.PbList<Mission> createRepeated() => $pb.PbList<Mission>();
  @$core.pragma('dart2js:noInline')
  static Mission getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mission>(create);
  static Mission? _defaultInstance;

  @$pb.TagNumber(7)
  $core.List<Waypoint> get wp => $_getList(0);
}

class MissionFromMAV extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MissionFromMAV', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..pc<Waypoint>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wp', $pb.PbFieldType.PM, subBuilder: Waypoint.create)
    ..hasRequiredFields = false
  ;

  MissionFromMAV._() : super();
  factory MissionFromMAV({
    $core.Iterable<Waypoint>? wp,
  }) {
    final _result = create();
    if (wp != null) {
      _result.wp.addAll(wp);
    }
    return _result;
  }
  factory MissionFromMAV.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MissionFromMAV.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MissionFromMAV clone() => MissionFromMAV()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MissionFromMAV copyWith(void Function(MissionFromMAV) updates) => super.copyWith((message) => updates(message as MissionFromMAV)) as MissionFromMAV; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MissionFromMAV create() => MissionFromMAV._();
  MissionFromMAV createEmptyInstance() => create();
  static $pb.PbList<MissionFromMAV> createRepeated() => $pb.PbList<MissionFromMAV>();
  @$core.pragma('dart2js:noInline')
  static MissionFromMAV getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MissionFromMAV>(create);
  static MissionFromMAV? _defaultInstance;

  @$pb.TagNumber(7)
  $core.List<Waypoint> get wp => $_getList(0);
}

class GlobalPositionReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GlobalPositionReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lon', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alt', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  GlobalPositionReply._() : super();
  factory GlobalPositionReply({
    $core.double? lat,
    $core.double? lon,
    $core.double? alt,
  }) {
    final _result = create();
    if (lat != null) {
      _result.lat = lat;
    }
    if (lon != null) {
      _result.lon = lon;
    }
    if (alt != null) {
      _result.alt = alt;
    }
    return _result;
  }
  factory GlobalPositionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GlobalPositionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GlobalPositionReply clone() => GlobalPositionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GlobalPositionReply copyWith(void Function(GlobalPositionReply) updates) => super.copyWith((message) => updates(message as GlobalPositionReply)) as GlobalPositionReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GlobalPositionReply create() => GlobalPositionReply._();
  GlobalPositionReply createEmptyInstance() => create();
  static $pb.PbList<GlobalPositionReply> createRepeated() => $pb.PbList<GlobalPositionReply>();
  @$core.pragma('dart2js:noInline')
  static GlobalPositionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GlobalPositionReply>(create);
  static GlobalPositionReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get lon => $_getN(1);
  @$pb.TagNumber(2)
  set lon($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLon() => $_has(1);
  @$pb.TagNumber(2)
  void clearLon() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get alt => $_getN(2);
  @$pb.TagNumber(3)
  set alt($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAlt() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlt() => clearField(3);
}

class DataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DataRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'param', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  DataRequest._() : super();
  factory DataRequest({
    $core.int? param,
  }) {
    final _result = create();
    if (param != null) {
      _result.param = param;
    }
    return _result;
  }
  factory DataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataRequest clone() => DataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataRequest copyWith(void Function(DataRequest) updates) => super.copyWith((message) => updates(message as DataRequest)) as DataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataRequest create() => DataRequest._();
  DataRequest createEmptyInstance() => create();
  static $pb.PbList<DataRequest> createRepeated() => $pb.PbList<DataRequest>();
  @$core.pragma('dart2js:noInline')
  static DataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataRequest>(create);
  static DataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get param => $_getIZ(0);
  @$pb.TagNumber(1)
  set param($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParam() => $_has(0);
  @$pb.TagNumber(1)
  void clearParam() => clearField(1);
}

class BatteryReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BatteryReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'volts', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  BatteryReply._() : super();
  factory BatteryReply({
    $core.double? volts,
  }) {
    final _result = create();
    if (volts != null) {
      _result.volts = volts;
    }
    return _result;
  }
  factory BatteryReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatteryReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatteryReply clone() => BatteryReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatteryReply copyWith(void Function(BatteryReply) updates) => super.copyWith((message) => updates(message as BatteryReply)) as BatteryReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BatteryReply create() => BatteryReply._();
  BatteryReply createEmptyInstance() => create();
  static $pb.PbList<BatteryReply> createRepeated() => $pb.PbList<BatteryReply>();
  @$core.pragma('dart2js:noInline')
  static BatteryReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatteryReply>(create);
  static BatteryReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get volts => $_getN(0);
  @$pb.TagNumber(1)
  set volts($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVolts() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolts() => clearField(1);
}

class ModeReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModeReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mode', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ModeReply._() : super();
  factory ModeReply({
    $core.int? mode,
  }) {
    final _result = create();
    if (mode != null) {
      _result.mode = mode;
    }
    return _result;
  }
  factory ModeReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModeReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModeReply clone() => ModeReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModeReply copyWith(void Function(ModeReply) updates) => super.copyWith((message) => updates(message as ModeReply)) as ModeReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModeReply create() => ModeReply._();
  ModeReply createEmptyInstance() => create();
  static $pb.PbList<ModeReply> createRepeated() => $pb.PbList<ModeReply>();
  @$core.pragma('dart2js:noInline')
  static ModeReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModeReply>(create);
  static ModeReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get mode => $_getIZ(0);
  @$pb.TagNumber(1)
  set mode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);
}

class ArmRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ArmRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'arm')
    ..hasRequiredFields = false
  ;

  ArmRequest._() : super();
  factory ArmRequest({
    $core.bool? arm,
  }) {
    final _result = create();
    if (arm != null) {
      _result.arm = arm;
    }
    return _result;
  }
  factory ArmRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ArmRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ArmRequest clone() => ArmRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ArmRequest copyWith(void Function(ArmRequest) updates) => super.copyWith((message) => updates(message as ArmRequest)) as ArmRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ArmRequest create() => ArmRequest._();
  ArmRequest createEmptyInstance() => create();
  static $pb.PbList<ArmRequest> createRepeated() => $pb.PbList<ArmRequest>();
  @$core.pragma('dart2js:noInline')
  static ArmRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ArmRequest>(create);
  static ArmRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get arm => $_getBF(0);
  @$pb.TagNumber(1)
  set arm($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasArm() => $_has(0);
  @$pb.TagNumber(1)
  void clearArm() => clearField(1);
}

class ArmReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ArmReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ok')
    ..hasRequiredFields = false
  ;

  ArmReply._() : super();
  factory ArmReply({
    $core.bool? ok,
  }) {
    final _result = create();
    if (ok != null) {
      _result.ok = ok;
    }
    return _result;
  }
  factory ArmReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ArmReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ArmReply clone() => ArmReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ArmReply copyWith(void Function(ArmReply) updates) => super.copyWith((message) => updates(message as ArmReply)) as ArmReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ArmReply create() => ArmReply._();
  ArmReply createEmptyInstance() => create();
  static $pb.PbList<ArmReply> createRepeated() => $pb.PbList<ArmReply>();
  @$core.pragma('dart2js:noInline')
  static ArmReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ArmReply>(create);
  static ArmReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);
}

class GlobalPositionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GlobalPositionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'helloworld'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GlobalPositionRequest._() : super();
  factory GlobalPositionRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory GlobalPositionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GlobalPositionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GlobalPositionRequest clone() => GlobalPositionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GlobalPositionRequest copyWith(void Function(GlobalPositionRequest) updates) => super.copyWith((message) => updates(message as GlobalPositionRequest)) as GlobalPositionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GlobalPositionRequest create() => GlobalPositionRequest._();
  GlobalPositionRequest createEmptyInstance() => create();
  static $pb.PbList<GlobalPositionRequest> createRepeated() => $pb.PbList<GlobalPositionRequest>();
  @$core.pragma('dart2js:noInline')
  static GlobalPositionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GlobalPositionRequest>(create);
  static GlobalPositionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

