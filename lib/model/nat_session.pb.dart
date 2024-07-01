//
//  Generated code. Do not modify.
//  source: android/app/src/main/proto/nat_session.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class NatSessions extends $pb.GeneratedMessage {
  factory NatSessions({
    $core.Iterable<NatSession>? session,
  }) {
    final $result = create();
    if (session != null) {
      $result.session.addAll(session);
    }
    return $result;
  }
  NatSessions._() : super();
  factory NatSessions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NatSessions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NatSessions', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.yongf.flutter.packetcaptureflutter.model'), createEmptyInstance: create)
    ..pc<NatSession>(1, _omitFieldNames ? '' : 'session', $pb.PbFieldType.PM, subBuilder: NatSession.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NatSessions clone() => NatSessions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NatSessions copyWith(void Function(NatSessions) updates) => super.copyWith((message) => updates(message as NatSessions)) as NatSessions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NatSessions create() => NatSessions._();
  NatSessions createEmptyInstance() => create();
  static $pb.PbList<NatSessions> createRepeated() => $pb.PbList<NatSessions>();
  @$core.pragma('dart2js:noInline')
  static NatSessions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NatSessions>(create);
  static NatSessions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NatSession> get session => $_getList(0);
}

class NatSession extends $pb.GeneratedMessage {
  factory NatSession({
    $core.String? type,
    $core.String? ipAndPort,
    $core.int? remoteIP,
    $core.int? localIP,
    $core.int? remotePort,
    $core.String? remoteHost,
    $core.int? localPort,
    $core.int? bytesSent,
    $core.int? packetSent,
    $fixnum.Int64? receivedByteNum,
    $fixnum.Int64? receivedPacketNum,
    $fixnum.Int64? lastRefreshTime,
    $core.bool? isHttpsSession,
    $core.String? requestUrl,
    $core.String? path,
    $core.String? method,
    $fixnum.Int64? connectionStartTime,
    $fixnum.Int64? vpnStartTime,
    $core.bool? isHttp,
    $core.String? uniqueName,
    AppInfo? appInfo,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (ipAndPort != null) {
      $result.ipAndPort = ipAndPort;
    }
    if (remoteIP != null) {
      $result.remoteIP = remoteIP;
    }
    if (localIP != null) {
      $result.localIP = localIP;
    }
    if (remotePort != null) {
      $result.remotePort = remotePort;
    }
    if (remoteHost != null) {
      $result.remoteHost = remoteHost;
    }
    if (localPort != null) {
      $result.localPort = localPort;
    }
    if (bytesSent != null) {
      $result.bytesSent = bytesSent;
    }
    if (packetSent != null) {
      $result.packetSent = packetSent;
    }
    if (receivedByteNum != null) {
      $result.receivedByteNum = receivedByteNum;
    }
    if (receivedPacketNum != null) {
      $result.receivedPacketNum = receivedPacketNum;
    }
    if (lastRefreshTime != null) {
      $result.lastRefreshTime = lastRefreshTime;
    }
    if (isHttpsSession != null) {
      $result.isHttpsSession = isHttpsSession;
    }
    if (requestUrl != null) {
      $result.requestUrl = requestUrl;
    }
    if (path != null) {
      $result.path = path;
    }
    if (method != null) {
      $result.method = method;
    }
    if (connectionStartTime != null) {
      $result.connectionStartTime = connectionStartTime;
    }
    if (vpnStartTime != null) {
      $result.vpnStartTime = vpnStartTime;
    }
    if (isHttp != null) {
      $result.isHttp = isHttp;
    }
    if (uniqueName != null) {
      $result.uniqueName = uniqueName;
    }
    if (appInfo != null) {
      $result.appInfo = appInfo;
    }
    return $result;
  }
  NatSession._() : super();
  factory NatSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NatSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NatSession', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.yongf.flutter.packetcaptureflutter.model'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'ipAndPort', protoName: 'ipAndPort')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'remoteIP', $pb.PbFieldType.O3, protoName: 'remoteIP')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'localIP', $pb.PbFieldType.O3, protoName: 'localIP')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'remotePort', $pb.PbFieldType.O3, protoName: 'remotePort')
    ..aOS(6, _omitFieldNames ? '' : 'remoteHost', protoName: 'remoteHost')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'localPort', $pb.PbFieldType.O3, protoName: 'localPort')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'bytesSent', $pb.PbFieldType.O3, protoName: 'bytesSent')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'packetSent', $pb.PbFieldType.O3, protoName: 'packetSent')
    ..aInt64(10, _omitFieldNames ? '' : 'receivedByteNum', protoName: 'receivedByteNum')
    ..aInt64(11, _omitFieldNames ? '' : 'receivedPacketNum', protoName: 'receivedPacketNum')
    ..aInt64(12, _omitFieldNames ? '' : 'lastRefreshTime', protoName: 'lastRefreshTime')
    ..aOB(13, _omitFieldNames ? '' : 'isHttpsSession', protoName: 'isHttpsSession')
    ..aOS(14, _omitFieldNames ? '' : 'requestUrl', protoName: 'requestUrl')
    ..aOS(15, _omitFieldNames ? '' : 'path')
    ..aOS(16, _omitFieldNames ? '' : 'method')
    ..aInt64(17, _omitFieldNames ? '' : 'connectionStartTime', protoName: 'connectionStartTime')
    ..aInt64(18, _omitFieldNames ? '' : 'vpnStartTime', protoName: 'vpnStartTime')
    ..aOB(19, _omitFieldNames ? '' : 'isHttp', protoName: 'isHttp')
    ..aOS(20, _omitFieldNames ? '' : 'uniqueName', protoName: 'uniqueName')
    ..aOM<AppInfo>(21, _omitFieldNames ? '' : 'appInfo', protoName: 'appInfo', subBuilder: AppInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NatSession clone() => NatSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NatSession copyWith(void Function(NatSession) updates) => super.copyWith((message) => updates(message as NatSession)) as NatSession;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NatSession create() => NatSession._();
  NatSession createEmptyInstance() => create();
  static $pb.PbList<NatSession> createRepeated() => $pb.PbList<NatSession>();
  @$core.pragma('dart2js:noInline')
  static NatSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NatSession>(create);
  static NatSession? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ipAndPort => $_getSZ(1);
  @$pb.TagNumber(2)
  set ipAndPort($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIpAndPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearIpAndPort() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get remoteIP => $_getIZ(2);
  @$pb.TagNumber(3)
  set remoteIP($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRemoteIP() => $_has(2);
  @$pb.TagNumber(3)
  void clearRemoteIP() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get localIP => $_getIZ(3);
  @$pb.TagNumber(4)
  set localIP($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocalIP() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocalIP() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get remotePort => $_getIZ(4);
  @$pb.TagNumber(5)
  set remotePort($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRemotePort() => $_has(4);
  @$pb.TagNumber(5)
  void clearRemotePort() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get remoteHost => $_getSZ(5);
  @$pb.TagNumber(6)
  set remoteHost($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRemoteHost() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemoteHost() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get localPort => $_getIZ(6);
  @$pb.TagNumber(7)
  set localPort($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLocalPort() => $_has(6);
  @$pb.TagNumber(7)
  void clearLocalPort() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get bytesSent => $_getIZ(7);
  @$pb.TagNumber(8)
  set bytesSent($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBytesSent() => $_has(7);
  @$pb.TagNumber(8)
  void clearBytesSent() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get packetSent => $_getIZ(8);
  @$pb.TagNumber(9)
  set packetSent($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPacketSent() => $_has(8);
  @$pb.TagNumber(9)
  void clearPacketSent() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get receivedByteNum => $_getI64(9);
  @$pb.TagNumber(10)
  set receivedByteNum($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasReceivedByteNum() => $_has(9);
  @$pb.TagNumber(10)
  void clearReceivedByteNum() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get receivedPacketNum => $_getI64(10);
  @$pb.TagNumber(11)
  set receivedPacketNum($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasReceivedPacketNum() => $_has(10);
  @$pb.TagNumber(11)
  void clearReceivedPacketNum() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get lastRefreshTime => $_getI64(11);
  @$pb.TagNumber(12)
  set lastRefreshTime($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLastRefreshTime() => $_has(11);
  @$pb.TagNumber(12)
  void clearLastRefreshTime() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get isHttpsSession => $_getBF(12);
  @$pb.TagNumber(13)
  set isHttpsSession($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasIsHttpsSession() => $_has(12);
  @$pb.TagNumber(13)
  void clearIsHttpsSession() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get requestUrl => $_getSZ(13);
  @$pb.TagNumber(14)
  set requestUrl($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasRequestUrl() => $_has(13);
  @$pb.TagNumber(14)
  void clearRequestUrl() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get path => $_getSZ(14);
  @$pb.TagNumber(15)
  set path($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPath() => $_has(14);
  @$pb.TagNumber(15)
  void clearPath() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get method => $_getSZ(15);
  @$pb.TagNumber(16)
  set method($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasMethod() => $_has(15);
  @$pb.TagNumber(16)
  void clearMethod() => clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get connectionStartTime => $_getI64(16);
  @$pb.TagNumber(17)
  set connectionStartTime($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasConnectionStartTime() => $_has(16);
  @$pb.TagNumber(17)
  void clearConnectionStartTime() => clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get vpnStartTime => $_getI64(17);
  @$pb.TagNumber(18)
  set vpnStartTime($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasVpnStartTime() => $_has(17);
  @$pb.TagNumber(18)
  void clearVpnStartTime() => clearField(18);

  @$pb.TagNumber(19)
  $core.bool get isHttp => $_getBF(18);
  @$pb.TagNumber(19)
  set isHttp($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasIsHttp() => $_has(18);
  @$pb.TagNumber(19)
  void clearIsHttp() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get uniqueName => $_getSZ(19);
  @$pb.TagNumber(20)
  set uniqueName($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasUniqueName() => $_has(19);
  @$pb.TagNumber(20)
  void clearUniqueName() => clearField(20);

  @$pb.TagNumber(21)
  AppInfo get appInfo => $_getN(20);
  @$pb.TagNumber(21)
  set appInfo(AppInfo v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasAppInfo() => $_has(20);
  @$pb.TagNumber(21)
  void clearAppInfo() => clearField(21);
  @$pb.TagNumber(21)
  AppInfo ensureAppInfo() => $_ensure(20);
}

class AppInfo extends $pb.GeneratedMessage {
  factory AppInfo({
    $core.String? appName,
    $core.String? packageName,
    $core.List<$core.int>? icon,
  }) {
    final $result = create();
    if (appName != null) {
      $result.appName = appName;
    }
    if (packageName != null) {
      $result.packageName = packageName;
    }
    if (icon != null) {
      $result.icon = icon;
    }
    return $result;
  }
  AppInfo._() : super();
  factory AppInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.yongf.flutter.packetcaptureflutter.model'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'appName', protoName: 'appName')
    ..aOS(2, _omitFieldNames ? '' : 'packageName', protoName: 'packageName')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'icon', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppInfo clone() => AppInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppInfo copyWith(void Function(AppInfo) updates) => super.copyWith((message) => updates(message as AppInfo)) as AppInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppInfo create() => AppInfo._();
  AppInfo createEmptyInstance() => create();
  static $pb.PbList<AppInfo> createRepeated() => $pb.PbList<AppInfo>();
  @$core.pragma('dart2js:noInline')
  static AppInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppInfo>(create);
  static AppInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appName => $_getSZ(0);
  @$pb.TagNumber(1)
  set appName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get packageName => $_getSZ(1);
  @$pb.TagNumber(2)
  set packageName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPackageName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPackageName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get icon => $_getN(2);
  @$pb.TagNumber(3)
  set icon($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
