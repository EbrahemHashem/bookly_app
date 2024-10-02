import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout with Api Server');
      // response
      case DioExceptionType.badCertificate:
        return ServerFailure('bad certificate timeout with Api Server');
      case DioExceptionType.badResponse:
        return ServerFailure('bad response  with Api Server');
      case DioExceptionType.cancel:
        return ServerFailure('cancel  with Api Server');
      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('connectionError timeout with Api Server');
        }
        return ServerFailure('un expected error with Api Server');
      case DioExceptionType.unknown:
        return ServerFailure('unknown  with Api Server');
      default:
        return ServerFailure('un expected error with Api Server');
    }
  }
}
