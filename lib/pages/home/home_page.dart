import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:packet_capture_flutter/model/nat_session.pb.dart';
import 'package:packet_capture_flutter/pages/home/packet_list_page.dart';
import 'package:packet_capture_flutter/pages/setting/settings_page.dart';
import 'package:packet_capture_flutter/session/nat_session_delegate.dart';
import 'package:packet_capture_flutter/widget/sexy_fab.dart';

/// Home: Request List
class HomePage extends StatefulWidget {
  final String? title;

  HomePage({Key? swKey, this.title}) : super(key: swKey);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Android / IOS Method Interop
  var _platform = MethodChannel('pcf.flutter.yongf.com/battery');
  var _pcf = MethodChannel('flutter.yongf.com/pcf');
  // Other
  String _batteryLevelState = 'Unknown battery level.';
  bool _isPacketMode = false;
  String _title = '';
  NatSessions? _protobuf = NatSessions();
  Timer? _refreshTimer;
  bool _enableAutoRefresh = false;

  Future<Null> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await _platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = 'Failed to get battery level: ${e.message}';
    }

    setState(() {
      this._batteryLevelState = batteryLevel;
    });
  }

  Future<dynamic> _handleMethod(MethodCall call) async {
    switch (call.method) {
      case "refresh":
        debugPrint(call.arguments);
        return Future.value("Success from Dart");
    }
  }

  @override
  void initState() {
    // Works
    super.initState();

    _isPacketMode = false;
    _title = widget.title!;
    _platform.setMethodCallHandler(_handleMethod);
    _refreshTimer = Timer.periodic(Duration(milliseconds: 800), (timer) {
      if (_enableAutoRefresh) {
        _refreshSessions();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    _refreshTimer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // Does not work, but gets called
    // print("build home");
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: () {

        }, child: Icon(Icons.menu)),
        title: Text(
          _title,
          style: TextStyle(fontSize: 18),
        ),
        actions: <Widget>[
          SizedBox(
            width: 60,
            child: InkWell(
              onTap: () {
                Fluttertoast.showToast(msg: 'TODO : Advanced search functionality.');
              },
              child: Icon(Icons.youtube_searched_for))),
          SizedBox(
            width: 60,
            child: InkWell(onTap: () {
              Fluttertoast.showToast(msg: "TODO : Clear entries?");
            }, child: Icon(Icons.layers_clear)))
        ],
      ),
      body: _buildBody(),
      drawer: _buildDrawer(context),
      floatingActionButton: SexyFab(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return _buildSexyFab(index);
        },
      ),
    );
  }

  /// This drawer displays the top bar.
  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("YUzkul"),
            accountEmail: Text("example@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme
                .of(context)
                .platform == TargetPlatform.android ?
              Colors.blue : Colors.white,
              child: Text("A", style: TextStyle(fontSize: 40),),
            ),
          ),
          ListTile(
            onTap: () {
              Fluttertoast.showToast(msg: "The collection function is TODO");
            },
            title: Text("Collect"),
            leading: Icon(Icons.stars),
          ),
          ListTile(
            onTap: () {
              Fluttertoast.showToast(msg: "The history record function is TODO");
            },
            title: Text("History Record"),
            leading: Icon(Icons.history),
          ),
          ListTile(
            onTap: () {
              Fluttertoast.showToast(msg: "The user manual function is TODO");
            },
            title: Text("Manual (User)"),
            leading: Icon(Icons.help_outline),
          ),
          // ListTile(
          //   onTap: () {
          //     Fluttertoast.showToast(msg: "Premium is bad bruh. (also is this application OSS by accident? lol if so)");
          //   },
          //   title: Text("Premium"),
          //   leading: Icon(Icons.attach_money),
          // ),
          // ListTile(
          //   onTap: () {
          //     Fluttertoast.showToast(msg: "The opening the google play rating is TODO");
          //   },
          //   title: Text("Rate"),
          //   leading: Icon(Icons.star_half),
          // ),
          ListTile(
            onTap: () {
              Fluttertoast.showToast(msg: "The sharing function is TODO");
            },
            title: Text("Share"),
            leading: Icon(Icons.share),
          ),
          ListTile(
            onTap: () {
              Fluttertoast.showToast(msg: "The about function is TODO");
            },
            title: Text("About"),
            leading: Icon(Icons.info),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return SettingsPage();
                }));
            },
            title: Text("Settings"),
            leading: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }

  Widget _buildSexyFab(int index) {
    switch (index) {
      case 0:
        return _vpn();
      case 1:
        return _refresh();
      case 2:
        return _autoRefresh();
      case 3:
        return _refreshNoVpn();
    }
    return Container();
  }

  Widget _vpn() {
    return Container(
      child: FloatingActionButton(
        heroTag: 'vpn',
        onPressed: _changeVpnStatus,
        tooltip: 'VPN',
        child: !_isPacketMode ? Icon(Icons.check) : Icon(Icons.close),
      ),
    );
  }

  Widget _refresh() {
    return Container(
      child: FloatingActionButton(
        heroTag: 'image',
        onPressed: _refreshSessions,
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
      ),
    );
  }

  Widget _autoRefresh() {
    return Container(
      child: FloatingActionButton(
        heroTag: 'autoRefresh',
        onPressed: () {
          setState(() {
            _enableAutoRefresh = !_enableAutoRefresh;
          });
        },
        tooltip: 'Enable Auto Refresh',
        child: Icon(_enableAutoRefresh ? Icons.layers : Icons.layers_clear),
      ),
    );
  }

  Widget _refreshNoVpn() {
      return Container(
      child: FloatingActionButton(
        heroTag: 'image',
        onPressed: _refreshSessionsWithoutVpn,
        tooltip: 'Refresh (without VPN)',
        child: Icon(Icons.history),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: PacketListPage(
        sessions: _protobuf!,
      ),
    );
  }

  Future<void> _refreshSessions() async {
    return _refreshSessionsBase(true);
  }
  Future<void> _refreshSessionsWithoutVpn() async {
    return _refreshSessionsBase(false);
  }

  Future<void> _refreshSessionsBase(bool setPacketModeIfNot) async {
    var result;
    try {
      if (!_isPacketMode && setPacketModeIfNot) {
        debugPrint("Changing vpn status because !_isPacketMode");
        await _changeVpnStatus();
      }

      NatSessionDelegate delegate = NatSessionDelegate();
      ByteData message = await delegate.requestSessions();
      List<int> bytes = message.buffer
        .asUint8List(message.offsetInBytes, message.lengthInBytes);
      debugPrint("Gather bytes for message on 'requestSessions' for the NatSession. Length : ${bytes.length}, buffer len : ${message.elementSizeInBytes}");

      inspect(bytes);
      inspect(ascii.decode(bytes, allowInvalid: true));

      // hmm, this makes the result empty. this is from generated code.
      result = NatSessions.fromBuffer(bytes);
      debugPrint("Converted protobuf.");
    } on PlatformException catch (e) {
      debugPrint('PlatformException: ${e.message}');
    }

    setState(() {
      // TODO : only do if debug, this applies to more outputs.
      debugPrint("Protobuf result is : ${result} which when inspected :");
      inspect(result);

      _protobuf = result;
    });
  }

  Future<void> _changeVpnStatus() async {
    bool expected = !_isPacketMode;
    // Ah yes, 2 different variables and classes for platform checking.
    // Very great, because the 'Platform' class crashes web flutter :)
    if (kIsWeb || (!Platform.isAndroid && !Platform.isIOS)) {
      debugPrint("[home_page::_changeVpnStatus] Platform-specific call done. Required platform : Android || IOS");
      return;
    }

    try {
      if (expected) {
        await _platform.invokeMethod('startVPN');
      } else {
        await _platform.invokeMethod('stopVPN');
      }
    } on PlatformException catch (e) {
      debugPrint("PlatformException: ${e.message}");
    }

    setState(() {
      this._isPacketMode = expected;
    });
  }
}
