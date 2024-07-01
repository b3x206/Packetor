//
//  Generated code. Do not modify.
//  source: android/app/src/main/proto/nat_session_request.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class NatSessionRequests extends $pb.GeneratedMessage {
  factory NatSessionRequests({
    $core.Iterable<NatSessionRequest>? request,
  }) {
    final $result = create();
    if (request != null) {
      $result.request.addAll(request);
    }
    return $result;
  }
  NatSessionRequests._() : super();
  factory NatSessionRequests.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NatSessionRequests.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NatSessionRequests', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.yongf.flutter.packetcaptureflutter.model'), createEmptyInstance: create)
    ..pc<NatSessionRequest>(1, _omitFieldNames ? '' : 'request', $pb.PbFieldType.PM, subBuilder: NatSessionRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NatSessionRequests clone() => NatSessionRequests()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NatSessionRequests copyWith(void Function(NatSessionRequests) updates) => super.copyWith((message) => updates(message as NatSessionRequests)) as NatSessionRequests;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NatSessionRequests create() => NatSessionRequests._();
  NatSessionRequests createEmptyInstance() => create();
  static $pb.PbList<NatSessionRequests> createRepeated() => $pb.PbList<NatSessionRequests>();
  @$core.pragma('dart2js:noInline')
  static NatSessionRequests getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NatSessionRequests>(create);
  static NatSessionRequests? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NatSessionRequest> get request => $_getList(0);
}

class NatSessionRequest extends $pb.GeneratedMessage {
  factory NatSessionRequest({
    $core.bool? isRequest,
    $core.String? headStr,
    $core.String? bodyStr,
    $core.List<$core.int>? bodyImage,
  }) {
    final $result = create();
    if (isRequest != null) {
      $result.isRequest = isRequest;
    }
    if (headStr != null) {
      $result.headStr = headStr;
    }
    if (bodyStr != null) {
      $result.bodyStr = bodyStr;
    }
    if (bodyImage != null) {
      $result.bodyImage = bodyImage;
    }
    return $result;
  }
  NatSessionRequest._() : super();
  factory NatSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NatSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NatSessionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.yongf.flutter.packetcaptureflutter.model'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isRequest', protoName: 'isRequest')
    ..aOS(2, _omitFieldNames ? '' : 'headStr', protoName: 'headStr')
    ..aOS(3, _omitFieldNames ? '' : 'bodyStr', protoName: 'bodyStr')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'bodyImage', $pb.PbFieldType.OY, protoName: 'bodyImage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NatSessionRequest clone() => NatSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NatSessionRequest copyWith(void Function(NatSessionRequest) updates) => super.copyWith((message) => updates(message as NatSessionRequest)) as NatSessionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NatSessionRequest create() => NatSessionRequest._();
  NatSessionRequest createEmptyInstance() => create();
  static $pb.PbList<NatSessionRequest> createRepeated() => $pb.PbList<NatSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static NatSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NatSessionRequest>(create);
  static NatSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isRequest => $_getBF(0);
  @$pb.TagNumber(1)
  set isRequest($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsRequest() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get headStr => $_getSZ(1);
  @$pb.TagNumber(2)
  set headStr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeadStr() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeadStr() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get bodyStr => $_getSZ(2);
  @$pb.TagNumber(3)
  set bodyStr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBodyStr() => $_has(2);
  @$pb.TagNumber(3)
  void clearBodyStr() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get bodyImage => $_getN(3);
  @$pb.TagNumber(4)
  set bodyImage($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBodyImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearBodyImage() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
