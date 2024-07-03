import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';

class UrlPreviewPage extends StatefulWidget {
  final String? url;

  const UrlPreviewPage({Key? swKey, this.url}) : super(key: swKey);

  @override
  _UrlPreviewPageState createState() => _UrlPreviewPageState();
}

class _UrlPreviewPageState extends State<UrlPreviewPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          "URL Preview",
          style: TextStyle(fontSize: 18),
        ),
        actions: <Widget>[
          SizedBox(
            width: 60,
            child: InkWell(
              onTap: () {
                Clipboard.setData(ClipboardData(text: widget.url ?? ""));
                Fluttertoast.showToast(msg: "Copied to clipboard");
              },
              child: Icon(Icons.content_paste),
            ),
          ),
          SizedBox(
            width: 60,
            child: InkWell(
              onTap: () {
                Share.share("Packetor");
              },
              child: Icon(Icons.share),
            ),
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Container(
      child: ListView(
        children: <Widget>[
          _buildTitle("URL"),
          _buildStatusItem("url", _parseHostAndPath() ?? "UNKNOWN"),
          _buildTitle("Query Parameters"),
          _buildQueryParameters(),
        ],
      ),
    );
  }

  String? _parseHostAndPath() {
    if (widget.url == null || widget.url!.isEmpty) {
      return null;
    }

    var uri = Uri.parse(widget.url!);
    if (uri.scheme.isEmpty) {
      return "UNKNOWN";
    }
    return uri.scheme + "://" + uri.authority + uri.path;
  }

  _buildQueryParameters() {
    if (widget.url == null || widget.url!.isEmpty) {
      return Container(
        child: _buildStatusItem("parameter", "Paramter Empty"),
      );
    }
    var queryParameters = Uri.parse(widget.url!).queryParameters;
    if (queryParameters.length == 0) {
      return Container(
        child: _buildStatusItem("parameter", "Paramter Empty"),
      );
    }
    List<Widget> widgets = <Widget>[];
    queryParameters.forEach((key, value) {
      widgets.add(_buildStatusItem(key, value));
      widgets.add(Divider());
    });
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: widgets,
    );
  }

  Widget _buildTitle(String title) {
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
      onLongPress: () {
        _onLongPressCopy(key, value);
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
              flex: 5,
            ),
            Expanded(
              child: Text(
                value,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              flex: 9,
            )
          ],
        ),
      ),
    );
  }

  _onLongPressCopy(String key, String value) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
            title: Text("Select the copied object"),
            content: ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: key ?? ""));
                    Fluttertoast.showToast(msg: "Copied to clipboard");
                    Navigator.of(context).pop();
                  },
                  title: Text("Copy key"),
                ),
                ListTile(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: value ?? ""));
                    Fluttertoast.showToast(msg: "Copied to clipboard");
                    Navigator.of(context).pop();
                  },
                  title: Text("Copy value"),
                ),
                ListTile(
                  onTap: () {
                    Clipboard.setData(
                        ClipboardData(text: _getKeyAndValue(key, value)));
                    Fluttertoast.showToast(msg: "Copied to clipboard");
                    Navigator.of(context).pop();
                  },
                  title: Text("Copy key & value"),
                ),
              ],
            ),
          ),
    );
  }

  String _getKeyAndValue(String? key, String? value) {
    return (key ?? "null") + "=" + (value ?? "null");
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
                    child: Text("Copy"),
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: value));
                      Fluttertoast.showToast(msg: 'Copied to clipboard');
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: Text("Back"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ]));
  }
}
