import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:packet_capture_flutter/model/nat_session.pb.dart';
import 'package:packet_capture_flutter/session/nat_session_manager.dart';

class NatSessionDelegate {
  /// The resource identifier
  String _identifier = "";

  /// The resource file name
  String _name = "";

  /// Original data
  ByteData? _data;

  /// The BinaryChannel name
  String get _channel {
    return 'flutter.yongf.com/pcf';
  }

  String get _sessionChannel {
    return 'flutter.yongf.com/pcf/session';
  }

  Future<ByteData> requestSessions() async {
    Completer<ByteData> completer = new Completer();
    // BinaryMessages
    var bMessages = ServicesBinding.instance.defaultBinaryMessenger;
    bMessages.setMessageHandler(_channel, (ByteData? message) {
      debugPrint("ByteData message : ${message}, is null : ${message == null}, length : ${message?.lengthInBytes}");

      _data = message;
      completer.complete(message ?? ByteData(0));
      bMessages.setMessageHandler(_channel, null);
      // return _data;
    });

    NatSessionManager().requestSessions();
    return completer.future;
  }

  Future<dynamic> requestSessionByDir(String? dir) async {
    if (dir == null || dir.isEmpty) {
      return null;
    }
    
    var bMessages = ServicesBinding.instance.defaultBinaryMessenger;
    Completer completer = Completer();
    bMessages.setMessageHandler(_sessionChannel, (ByteData? message) {
      completer.complete(message);
      bMessages.setMessageHandler(_sessionChannel, null);
      return null;
    });
    NatSessionManager().requestSession(dir);
    return completer.future;
  }

  Future<dynamic> saveSession(NatSession? session, String? dir) async {
    if (session == null || dir == null || dir.isEmpty) {
      return null;
    }
    return await NatSessionManager().saveSession(session, dir);
  }
}
