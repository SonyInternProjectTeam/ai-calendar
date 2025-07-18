import '../errors/exceptions.dart';

class ErrorHandler {
  static String getErrorMessage(AppException error) {
    switch (error.runtimeType) {
      case NetworkException _:
        return '네트워크 연결을 확인해주세요.';
      case AuthException _:
        return '인증에 실패했습니다. 다시 로그인해주세요.';
      case ValidationException _:
        return error.message;
      case AIServiceException _:
        return 'AI 서비스에 일시적인 문제가 발생했습니다.';
      case CacheException _:
        return '로컬 데이터 처리 중 오류가 발생했습니다.';
      case ServerException _:
        return '서버에 일시적인 문제가 발생했습니다.';
      case CalendarSyncException _:
        return '캘린더 동기화 중 오류가 발생했습니다.';
      default:
        return '알 수 없는 오류가 발생했습니다.';
    }
  }

  static String getGenericErrorMessage() {
    return '문제가 발생했습니다. 잠시 후 다시 시도해주세요.';
  }
}
