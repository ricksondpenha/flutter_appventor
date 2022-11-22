class AppException implements Exception {
  String error;
  AppException(this.error);
}

class ServerException implements Exception {
  final String error;
  ServerException({this.error = 'There was a problem'});
}

class NetworkException implements Exception {
  String error;
  NetworkException(this.error);
}
