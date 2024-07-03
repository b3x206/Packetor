/// A simple Http request parsing tool, which is considered available in the first phase and optimized in the second phase
class HttpRequest {
  final String _request;
  String _method = "";
  String _path = "";
  String _httpVersion = "";
  Map<String, String> _queryParameters = Map();
  Map<String, String> _headers = Map();

  static const String EMPTY = " ";
  static const int INDEX_404 = -1;

  static const String GET = "GET";
  static const String POST = "POST";
  static const String OPTION = "OPTION";
  static const String DELETE = "DELETE";

  /**
   * @summary Is the primary constructor that takes the request.
   */
  HttpRequest(this._request);

  /**
   * @summary Create a HttpRequest.
   */
  static parse(String request) {
    return HttpRequest(request);
  }

  void parseInternal() {
    List<String> list = _request.split("\n");
    if (list.isEmpty) {
      return;
    }

    String requestLine = list[0];
    parseRequestLine(requestLine);
    _parseRequestHeaders(list);
  }

  void parseRequestLine(String requestLine) {
    if (requestLine.isEmpty) {
      _method = "";
      _path = "";
      _httpVersion = "";
      _queryParameters = Map();
      _headers = Map();
      return;
    }

    List<String> requestLineList = requestLine.split(EMPTY);
    if (requestLineList.length == 3) {
      _method = requestLineList[0];
      _path = requestLineList[1];
      _httpVersion = requestLine[2];
      parseQueryParameters(_path);
    }
  }

  void parseQueryParameters(String path) {
    if (path.isEmpty) {
      path = "";
      return;
    }
    var uri = Uri.parse(path);
    _queryParameters = uri.queryParameters;
  }

  void _parseRequestHeaders(List<String> list) {
    if (list.length < 2) {
      return;
    }

    var tempHeaders = Map<String, String>();
    list.asMap().forEach((index, header) {
      if (index == 0 || header.isEmpty) {
        return;
      }
      int position = _parseSingleHeader(header);
      if (position != INDEX_404) {
        String key = header.substring(0, position);
        String value = header.substring(position + 1);
        tempHeaders[key.trim()] = value.trim();
      }
    });
    _headers = tempHeaders;
  }

  /**
   * Used to get the position of the delimiter in a single request line
   */
  int _parseSingleHeader(String header) {
    for (int i = 0; i < header.length; i++) {
      if (header[i] == ':') {
        return i;
      }
    }

    return INDEX_404;
  }

  String getMethod() {
    if (_method.isNotEmpty) {
      return _method;
    }

    parseInternal();
    return _method;
  }

  String getPath() {
    if (_path.isNotEmpty) {
      return _path;
    }

    parseInternal();
    return _path;
  }

  String getHttpVersion() {
    if (_httpVersion.isNotEmpty) {
      return _httpVersion;
    }

    parseInternal();
    return _httpVersion;
  }

  Map<String, String> getQueryParameters() {
    if (_queryParameters.isNotEmpty) {
      return _queryParameters;
    }
    parseInternal();
    return _queryParameters;
  }

  String getQueryParameter(String key) {
    if (_queryParameters.isNotEmpty) {
      return _queryParameters[key]!;
    }
    parseInternal();
    if (_queryParameters.isNotEmpty) {
      return _queryParameters[key]!;
    }
    return "";
  }

  Map<String, String> getHeaders() {
    if (_headers.isNotEmpty) {
      return _headers;
    }
    parseInternal();
    return _headers;
  }

  String getHeader(String key) {
    if (_headers.isNotEmpty) {
      return _headers[key]!;
    }
    parseInternal();
    if (_headers.isNotEmpty) {
      return _headers[key]!;
    }
    return "";
  }
}
