import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class serverFailure extends Failure {
  serverFailure({required super.errorMessage});

  factory serverFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return serverFailure(errorMessage: 'Connection Time Out');
      case DioExceptionType.sendTimeout:
        return serverFailure(errorMessage: 'Send Time Out');
      case DioExceptionType.receiveTimeout:
        return serverFailure(errorMessage: 'Recive Time Out');
      case DioExceptionType.badCertificate:
        return serverFailure(errorMessage: 'Bad Certificate');
      case DioExceptionType.badResponse:
        return serverFailure.fromBadResponse(
            statuesCode: dioException.response!.statusCode,
            Response: dioException.message);
      case DioExceptionType.cancel:
        return serverFailure(errorMessage: 'Canceld');
      case DioExceptionType.connectionError:
        return serverFailure(errorMessage: 'Check Your Inter Net Connection');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return serverFailure(errorMessage: "Enternet Error");
        } else {
          return serverFailure(
              errorMessage: 'Unexpected Erro Please Try Again Later');
        }
      default:
        return serverFailure(errorMessage: 'Please Try Again');
    }
  }
  factory serverFailure.fromBadResponse(
      {required int? statuesCode, required dynamic Response}) {
    if (statuesCode == 400 || statuesCode == 401 || statuesCode == 403) {
      return serverFailure(errorMessage: Response['message']);
    } else if (statuesCode == 404) {
      return serverFailure(
          errorMessage: 'Your Resquest Not Found, Please Try Again Later');
    } else if (statuesCode == 500) {
      return serverFailure(
          errorMessage: 'Internal Server Error, Please Try Again Later');
    } else {
      return serverFailure(errorMessage: "Opps There Was An Erro");
    }
  }
}
