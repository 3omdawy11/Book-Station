import 'package:dio/dio.dart';

abstract class Failure {
  String message;

  Failure(this.message);
}
class ServerFailure extends Failure{
  ServerFailure(super.message);
  factory ServerFailure.fromDioError(DioException error) {
    String errorMessage;

    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        errorMessage = "Connection timeout";
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = "Receive timeout";
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = "Send timeout";
        break;
      case DioExceptionType.badResponse:
        errorMessage = ServerFailure.fromResponse(statusCode: error.response!.statusCode!, response: error.response!.data) as String;
        break;
      case DioExceptionType.cancel:
        errorMessage = "Request cancelled";
        break;
      case DioExceptionType.badCertificate:
        errorMessage = "Bad Certificate";
        break;
      case DioExceptionType.connectionError:
        errorMessage = "Connection Error";
        break;
      default:
        errorMessage = "Please Try Again Later";
        break;
    }

    return ServerFailure(errorMessage);
  }
  factory ServerFailure.fromResponse({required int statusCode, required dynamic response}){
    if (statusCode == 404){
      return ServerFailure('Your request was not found, please try later');
    }else if (statusCode == 500) {
      return ServerFailure('There is a problem with server, please try later');
    }else if (statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response['error']['message']);
    }
    return ServerFailure('There was an error please try again');
  }
}


class CacheFailure extends Failure{
  CacheFailure(super.message);
}
class NetworkFailure extends Failure{
  NetworkFailure(super.message);
}