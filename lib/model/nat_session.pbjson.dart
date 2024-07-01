//
//  Generated code. Do not modify.
//  source: android/app/src/main/proto/nat_session.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use natSessionsDescriptor instead')
const NatSessions$json = {
  '1': 'NatSessions',
  '2': [
    {'1': 'session', '3': 1, '4': 3, '5': 11, '6': '.com.yongf.flutter.packetcaptureflutter.model.NatSession', '10': 'session'},
  ],
};

/// Descriptor for `NatSessions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List natSessionsDescriptor = $convert.base64Decode(
    'CgtOYXRTZXNzaW9ucxJSCgdzZXNzaW9uGAEgAygLMjguY29tLnlvbmdmLmZsdXR0ZXIucGFja2'
    'V0Y2FwdHVyZWZsdXR0ZXIubW9kZWwuTmF0U2Vzc2lvblIHc2Vzc2lvbg==');

@$core.Deprecated('Use natSessionDescriptor instead')
const NatSession$json = {
  '1': 'NatSession',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'ipAndPort', '3': 2, '4': 1, '5': 9, '10': 'ipAndPort'},
    {'1': 'remoteIP', '3': 3, '4': 1, '5': 5, '10': 'remoteIP'},
    {'1': 'remotePort', '3': 5, '4': 1, '5': 5, '10': 'remotePort'},
    {'1': 'remoteHost', '3': 6, '4': 1, '5': 9, '10': 'remoteHost'},
    {'1': 'localIP', '3': 4, '4': 1, '5': 5, '10': 'localIP'},
    {'1': 'localPort', '3': 7, '4': 1, '5': 5, '10': 'localPort'},
    {'1': 'bytesSent', '3': 8, '4': 1, '5': 5, '10': 'bytesSent'},
    {'1': 'packetSent', '3': 9, '4': 1, '5': 5, '10': 'packetSent'},
    {'1': 'receivedByteNum', '3': 10, '4': 1, '5': 3, '10': 'receivedByteNum'},
    {'1': 'receivedPacketNum', '3': 11, '4': 1, '5': 3, '10': 'receivedPacketNum'},
    {'1': 'lastRefreshTime', '3': 12, '4': 1, '5': 3, '10': 'lastRefreshTime'},
    {'1': 'isHttpsSession', '3': 13, '4': 1, '5': 8, '10': 'isHttpsSession'},
    {'1': 'requestUrl', '3': 14, '4': 1, '5': 9, '10': 'requestUrl'},
    {'1': 'path', '3': 15, '4': 1, '5': 9, '10': 'path'},
    {'1': 'method', '3': 16, '4': 1, '5': 9, '10': 'method'},
    {'1': 'connectionStartTime', '3': 17, '4': 1, '5': 3, '10': 'connectionStartTime'},
    {'1': 'vpnStartTime', '3': 18, '4': 1, '5': 3, '10': 'vpnStartTime'},
    {'1': 'isHttp', '3': 19, '4': 1, '5': 8, '10': 'isHttp'},
    {'1': 'uniqueName', '3': 20, '4': 1, '5': 9, '10': 'uniqueName'},
    {'1': 'appInfo', '3': 21, '4': 1, '5': 11, '6': '.com.yongf.flutter.packetcaptureflutter.model.AppInfo', '10': 'appInfo'},
  ],
};

/// Descriptor for `NatSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List natSessionDescriptor = $convert.base64Decode(
    'CgpOYXRTZXNzaW9uEhIKBHR5cGUYASABKAlSBHR5cGUSHAoJaXBBbmRQb3J0GAIgASgJUglpcE'
    'FuZFBvcnQSGgoIcmVtb3RlSVAYAyABKAVSCHJlbW90ZUlQEh4KCnJlbW90ZVBvcnQYBSABKAVS'
    'CnJlbW90ZVBvcnQSHgoKcmVtb3RlSG9zdBgGIAEoCVIKcmVtb3RlSG9zdBIYCgdsb2NhbElQGA'
    'QgASgFUgdsb2NhbElQEhwKCWxvY2FsUG9ydBgHIAEoBVIJbG9jYWxQb3J0EhwKCWJ5dGVzU2Vu'
    'dBgIIAEoBVIJYnl0ZXNTZW50Eh4KCnBhY2tldFNlbnQYCSABKAVSCnBhY2tldFNlbnQSKAoPcm'
    'VjZWl2ZWRCeXRlTnVtGAogASgDUg9yZWNlaXZlZEJ5dGVOdW0SLAoRcmVjZWl2ZWRQYWNrZXRO'
    'dW0YCyABKANSEXJlY2VpdmVkUGFja2V0TnVtEigKD2xhc3RSZWZyZXNoVGltZRgMIAEoA1IPbG'
    'FzdFJlZnJlc2hUaW1lEiYKDmlzSHR0cHNTZXNzaW9uGA0gASgIUg5pc0h0dHBzU2Vzc2lvbhIe'
    'CgpyZXF1ZXN0VXJsGA4gASgJUgpyZXF1ZXN0VXJsEhIKBHBhdGgYDyABKAlSBHBhdGgSFgoGbW'
    'V0aG9kGBAgASgJUgZtZXRob2QSMAoTY29ubmVjdGlvblN0YXJ0VGltZRgRIAEoA1ITY29ubmVj'
    'dGlvblN0YXJ0VGltZRIiCgx2cG5TdGFydFRpbWUYEiABKANSDHZwblN0YXJ0VGltZRIWCgZpc0'
    'h0dHAYEyABKAhSBmlzSHR0cBIeCgp1bmlxdWVOYW1lGBQgASgJUgp1bmlxdWVOYW1lEk8KB2Fw'
    'cEluZm8YFSABKAsyNS5jb20ueW9uZ2YuZmx1dHRlci5wYWNrZXRjYXB0dXJlZmx1dHRlci5tb2'
    'RlbC5BcHBJbmZvUgdhcHBJbmZv');

@$core.Deprecated('Use appInfoDescriptor instead')
const AppInfo$json = {
  '1': 'AppInfo',
  '2': [
    {'1': 'appName', '3': 1, '4': 1, '5': 9, '10': 'appName'},
    {'1': 'packageName', '3': 2, '4': 1, '5': 9, '10': 'packageName'},
    {'1': 'icon', '3': 3, '4': 1, '5': 12, '10': 'icon'},
  ],
};

/// Descriptor for `AppInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appInfoDescriptor = $convert.base64Decode(
    'CgdBcHBJbmZvEhgKB2FwcE5hbWUYASABKAlSB2FwcE5hbWUSIAoLcGFja2FnZU5hbWUYAiABKA'
    'lSC3BhY2thZ2VOYW1lEhIKBGljb24YAyABKAxSBGljb24=');

