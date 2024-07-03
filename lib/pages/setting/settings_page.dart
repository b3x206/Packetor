import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isWindowMode = false;
  bool _isBlockRequest = false;
  bool _isBlockResponse = false;
  bool _enablePerformanceMode = false;

  @override
  void initState() {
    super.initState();

    _isWindowMode = false;
    _isBlockRequest = false;
    _isBlockResponse = false;
    _enablePerformanceMode = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setup"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.file_download),
              onPressed: () {
                Fluttertoast.showToast(msg: "Check for updates is TODO.");
              })
        ],
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Text(
              "Packet Capture Settings",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Target Applications",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            subtitle: Text(
              "All",
              style: TextStyle(fontSize: 12),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Target Host",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            subtitle: Text(
              "All",
              style: TextStyle(fontSize: 12),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "SSL Certificate Management",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            subtitle: Text(
              "Managing digital certificates for SSL requests",
              style: TextStyle(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Text(
              "Advanced Options",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Plugin Management",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            subtitle: Text(
              "Plugin manager, which can add, remove, enable and disable plugins",
              style: TextStyle(fontSize: 12),
            ),
          ),
          SwitchListTile(
            onChanged: (bool value) {
              setState(() {
                _isWindowMode = value;
              });
            },
            value: _isWindowMode,
            title: Text(
              "Windowed Mode",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            subtitle: Text(
              "If the app returns to the background during packet capture, a mini floating window will be displayed",
              style: TextStyle(fontSize: 12),
            ),
          ),
          SwitchListTile(
            onChanged: (bool value) {
              setState(() {
                _isBlockRequest = value;
              });
            },
            value: _isBlockRequest,
            title: Text(
              "Block Request",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            subtitle: Text(
              "If this switch is turned on, the client's http request will not be sent to the server.",
              style: TextStyle(fontSize: 12),
            ),
          ),
          SwitchListTile(
            onChanged: (bool value) {
              setState(() {
                _isBlockResponse = value;
              });
            },
            value: _isBlockResponse,
            title: Text(
              "Canned Response",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            subtitle: Text(
              "If this switch is turned on, the server's http response will not be returned to the client",
              style: TextStyle(fontSize: 12),
            ),
          ),
          ListTile(
            onTap: () {
              Fluttertoast.showToast(msg: "TODO : DNS Config.");
            },
            title: Text(
              "DNS",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            subtitle: Text(
              "Not configured yet",
              style: TextStyle(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Text(
              "Other options",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          SwitchListTile(
            onChanged: (bool value) {
              setState(() {
                _enablePerformanceMode = value;
              });
            },
            value: _enablePerformanceMode,
            title: Text(
              "Performance Mode",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            subtitle: Text(
              "After turning on the performance mode, the power consumption of the mobile phone will be reduced when capturing packets, but the cost is that the application information cannot be obtained.",
              style: TextStyle(fontSize: 12),
            ),
          ),
          ListTile(
            onTap: () {
              Fluttertoast.showToast(msg: "TODO : Redirect user to install Parallel Space");
            },
            title: Text(
              "Install Parallel Space",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            subtitle: Text(
              "It is recommended to use Parallel Space to open the target application to capture https data packets",
              style: TextStyle(fontSize: 12),
            ),
          ),
          ListTile(
            onTap: () {
              // TODO : Stub
              Fluttertoast.showToast(msg: "Cache cleared successfully");
              cacheSize = "0 KB"; // Mr. Google does not want you to know this trick! How to clear cache in 2 easy steps without resorting to J2ME ahh apis!
            },
            title: Text(
              "Clear Cache",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            subtitle: Text(
              "Cache Size : ${_getReadableCacheSize()}",
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  String cacheSize = "3.25 KB";
  String _getReadableCacheSize() {
    return cacheSize;
  }
}
