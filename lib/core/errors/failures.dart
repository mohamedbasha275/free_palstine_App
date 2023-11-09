import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(String errorMessage) : super(errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    const Map<DioExceptionType, String> errorMessages = {
      DioExceptionType.connectionTimeout: 'Connection Timeout With Api Server',
      DioExceptionType.sendTimeout: 'Send Timeout With Api Server',
      DioExceptionType.receiveTimeout: 'Receive Timeout With Api Server',
      DioExceptionType.cancel: 'Request To Api Server Was Canceled',
    };

    if (errorMessages.containsKey(dioError.type)) {
      return ServerFailure(errorMessages[dioError.type]!);
    } else if (dioError.type == DioExceptionType.badResponse) {
      return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
    } else if (dioError.type == DioExceptionType.unknown && dioError.message!.contains('SocketException')) {
      return ServerFailure('No Internet Connection');
    } else {
      return ServerFailure('Unexpected Error. Try Again Later!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    const Map<int, String> statusErrorMessages = {
      400: 'Error occurred. Please try again.',
      401: 'Unauthorized access.',
      403: 'Forbidden access.',
      404: 'Your request not found. Please try again later.',
      500: 'Internal server error. Please try again later.',
    };

    if (statusErrorMessages.containsKey(statusCode) && response['message'] != null) {
      return ServerFailure(response['message'].toString());
    } else if (statusErrorMessages.containsKey(statusCode)) {
      return ServerFailure(statusErrorMessages[statusCode]!);
    } else {
      return ServerFailure('Something went wrong. Please try again later.');
    }
  }
}
