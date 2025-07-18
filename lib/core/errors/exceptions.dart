abstract class AppException implements Exception {
  final String message;
  final String? code;

  const AppException(this.message, [this.code]);

  @override
  String toString() =>
      'AppException: $message${code != null ? ' (Code: $code)' : ''}';
}

class NetworkException extends AppException {
  const NetworkException(String message) : super(message, 'NETWORK_ERROR');
}

class AuthException extends AppException {
  const AuthException(String message) : super(message, 'AUTH_ERROR');
}

class ValidationException extends AppException {
  const ValidationException(String message)
      : super(message, 'VALIDATION_ERROR');
}

class AIServiceException extends AppException {
  const AIServiceException(String message) : super(message, 'AI_SERVICE_ERROR');
}

class CacheException extends AppException {
  const CacheException(String message) : super(message, 'CACHE_ERROR');
}

class ServerException extends AppException {
  const ServerException(String message) : super(message, 'SERVER_ERROR');
}

class CalendarSyncException extends AppException {
  const CalendarSyncException(String message)
      : super(message, 'CALENDAR_SYNC_ERROR');
}
