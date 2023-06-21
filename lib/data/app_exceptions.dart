class AppException implements Exception {
  final String? _message;
  final String? _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix: $_message';
  }
}

class NetworkException extends AppException {
  NetworkException([String? message])
      : super(message, 'Network Connectivity Error');
}

class APIException extends AppException {
  APIException([String? message]) : super(message, 'API Request Error');
}

class ParsingException extends AppException {
  ParsingException([String? message]) : super(message, 'JSON Parsing Error');
}

class ImageLoadingException extends AppException {
  ImageLoadingException([String? message])
      : super(message, 'Image Loading Error');
}

class DatabaseException extends AppException {
  DatabaseException([String? message]) : super(message, 'Database Error');
}

class UnexpectedAPIResponseException extends AppException {
  UnexpectedAPIResponseException([String? message])
      : super(message, 'Unexpected API Response Error');
}

class LoggingException extends AppException {
  LoggingException([String? message]) : super(message, 'Logging Error');
}
