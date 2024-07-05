import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:packet_capture_flutter/model/nat_session.pb.dart';
import 'package:packet_capture_flutter/model/nat_session_request.pb.dart';
import 'package:packet_capture_flutter/pages/detail/url_preview_page.dart';

/// Displays the packet detail.
class PacketDetailOverview extends StatefulWidget {
  final NatSessions? sessions;
  final int? index;
  final NatSessionRequest? request;

  const PacketDetailOverview({Key? swKey, this.sessions, this.index, this.request})
      : super(key: swKey);

  @override
  _PacketDetailOverviewState createState() => _PacketDetailOverviewState();
}

/// State for the Packet details widget.
class _PacketDetailOverviewState extends State<PacketDetailOverview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return UrlPreviewPage(url: _getRequestUrl(),);
                  }));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        _getRequestUrl(),
                        style: TextStyle(color: Colors.black, fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _divider(),
            _divider(),
            _buildStatusItem('Injection State', _getInjectStatus()),
            _divider(),
            _buildStatusItem('isRequest', _isRequest()),
            // _divider(),
            // _buildStatusItem('headStr', _getHeadStr()),
            // _divider(),
            // _buildStatusItem('bodyStr', _getBodyStr()),
            // _divider(),
            // _buildStatusItem('bodyImage', _getBodyImage()),
            _divider(),
            _buildStatusItem('Protocol', _getProtocol()),
            _divider(),
            _buildStatusItem('host', _getRemoteHost()),
            _divider(),
            _buildStatusItem('Content-Type ↑', _getContentTypeUpStream()),
            _divider(),
            _buildStatusItem('Content-Type ↓', _getContentTypeDownStream()),
            _divider(),
            _buildStatusItem('Server IP', _getRemoteIP()),
            _buildTitle('Payload Time'),
            _buildStatusItem('Request Start', _getRequestStartTime()),
            _divider(),
            _buildStatusItem('Request End', _getRequestEndTime()),
            _divider(),
            _buildStatusItem('Duration', _getRequestDuration()),
            _buildTitle('Payload Size'),
            _buildStatusItem('Request Size', _getRequestDataSize()),
            _divider(),
            _buildStatusItem('Response Size', _getResponseDataSize()),
            _divider(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  /// TODO: Optimize the UI display of header and body
  String _isRequest() {
    return widget.request?.isRequest.toString() ?? '';
  }

  String _getHeadStr() {
    return widget.request?.headStr ?? '';
  }

  String _getBodyStr() {
    return widget.request?.bodyStr ?? '';
  }

  String _getBodyImage() {
    var image = widget.request?.bodyImage;
    var length = 0;
    if (image != null) {
      length = image.length;
    }
    return length > 0 ? 'true' : 'false';
  }

  String _getResponseDataSize() {
    if (widget.sessions == null) {
      return "[!!] No sessions";
    }
    if (widget.index == null) {
      return "[!!] No index";
    }

    return widget.sessions!.session[widget.index!].receivedByteNum.toString() + "B";
  }

  String _getRequestDataSize() {
    if (widget.sessions == null) {
      return "[!!] No sessions";
    }
    if (widget.index == null) {
      return "[!!] No index";
    }

    return widget.sessions!.session[widget.index!].bytesSent.toString() + "B";
  }

  String _getRequestDuration() {
    return '372ms';
  }

  String _getRequestEndTime() {
    return '2019-01-02 00:21:39.722';
  }

  String _getRequestStartTime() {
    if (widget.sessions == null) {
      return "[!!] No sessions";
    }
    if (widget.index == null) {
      return "[!!] No index";
    }

    return DateTime.fromMillisecondsSinceEpoch(widget
                .sessions!.session[widget.index!].connectionStartTime
                .toInt())
            .toIso8601String();
  }

  String _getRemoteIP() {
    if (widget.sessions == null) {
      return "[!!] No sessions";
    }
    if (widget.index == null) {
      return "[!!] No index";
    }

    return widget.sessions!.session[widget.index!].remoteIP.toString();
  }

  String _getContentTypeDownStream() {
    return 'application/json';
  }

  String _getContentTypeUpStream() {
    return 'application/json';
  }

  String _getRemoteHost() {
    if (widget.sessions == null) {
      return "[!!] No sessions";
    }
    if (widget.index == null) {
      return "[!!] No index";
    }

    return widget.sessions!.session[widget.index!].remoteHost;
  }

  String _getProtocol() {
    return 'HTTP/1.1';
  }

  String _getResponseCode() {
    return '200 OK';
  }

  String _getInjectStatus() {
    return 'false';
  }

  String _getRequestUrl() {
    if (widget.sessions == null) {
      return "[!!] https://no-sessions";
    }
    if (widget.index == null) {
      return "[!!] https://no-index";
    }

    String? requestUrl = widget.sessions?.session[widget.index ?? 0].requestUrl;
    if (requestUrl == null || requestUrl.isEmpty) {
      String? host = widget.sessions?.session[widget.index ?? 0].remoteHost;
      if (host != null && host.isNotEmpty) {
        return host;
      }
      return "https://example.com";
    }
    return requestUrl;
  }

  Container _buildTitle(String title) {
    return Container(
      width: double.infinity,
      color: Colors.grey.withAlpha(70),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Text(
        title,
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
    );
  }

  _buildStatusItem(String key, String value) {
    return InkWell(
      onTap: () {
        _showDetailDialog(key, value);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Text(
                key,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              flex: 1,
            ),
            Expanded(
              child: Text(
                value,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }

  _divider() {
    return Divider(
      height: 1,
    );
  }

  _showDetailDialog(String key, String value) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(key),
          content: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Text(value),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text("Copy to Clipboard"),
              onPressed: () {
                Clipboard.setData(ClipboardData(text: value));
                Fluttertoast.showToast(msg: 'Copied to clipboard');
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ]
        )
      );
  }
}
