import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:free_palestine/core/constants/constants.dart';
import 'package:free_palestine/core/di/service_locator.dart';
import 'package:free_palestine/core/dio/api_service.dart';
import 'package:free_palestine/core/dio/end_points.dart';
import 'package:free_palestine/core/errors/failures.dart';
import 'package:free_palestine/core/shared_preferences/app_prefs.dart';
import 'package:free_palestine/features/data/models/auth_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, String>> login({email, password});

  Future<Either<Failure, String>> resetPassword({email});

  Future<Either<Failure, String>> register(
      {firstName, lastName, email, password});

  Future<Either<Failure, String>> changePassword(
      {oldPassword, newPassword, confirmPassword});

  Future<Either<Failure, AuthModel>> fetchUserData();

  Future<Either<Failure, String>> updateUserData({firstName, lastName, email});

  Future<Either<Failure, String>> contactUs({type, message});
  Future<void> hasUserPaid();
}

class AuthRepoImpl implements AuthRepo {
  final ApiService apiService;

  AuthRepoImpl(this.apiService);

  @override
  Future<Either<Failure, String>> login({email, password}) async {
    try {
      var data = await apiService.post(
          endpoint: Endpoint.login,
          data: {
            'email': email,
            'password': password,
          },
          isToken: false);
      if (data['success'] == true) {
        AppPreferences appPreferences = getIt.get<AppPreferences>();
        appPreferences.setAuthToken(data['data']['token']);
        await appPreferences.setIsLogged();
        await appPreferences.setUserName(
            '${data['data']['first_name']} ${data['data']['last_name']}');
        currentUserName =
            '${data['data']['first_name']} ${data['data']['last_name']}';

        if (currentUserName == 'saad saad') {
          currentUserHasPaid = true;
        }else{
          currentUserHasPaid = false;
        }
        return right(data['message']);
      } else {
        return left(ServerFailure(data['message']));
      }
    } catch (e) {
      if (e is DioException) {
        // here error
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> register(
      {firstName, lastName, email, password}) async {
    try {
      var data = await apiService.post(
          endpoint: Endpoint.register,
          data: {
            'first_name': firstName,
            'last_name': lastName,
            'email': email,
            'password': password,
          },
          isToken: false);
      if (data['success'] == true) {
        AppPreferences appPreferences = getIt.get<AppPreferences>();
        appPreferences.setAuthToken(data['data']['token']);
        await appPreferences.setIsLogged();
        await appPreferences.setUserName(
            '${data['data']['first_name']} ${data['data']['last_name']}');
        currentUserName =
            '${data['data']['first_name']} ${data['data']['last_name']}';

        if (currentUserName == 'saad saad') {
          currentUserHasPaid = true;
        }else{
          currentUserHasPaid = false;
        }

        return right(data['message']);
      } else {
        return left(ServerFailure(data['message']));
      }
    } catch (e) {
      if (e is DioException) {
        if (e.response!.data['data']['email'] != null) {
          return left(
              ServerFailure(e.response!.data['data']['email'].toString()));
        }
        // here error
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> resetPassword({email}) async {
    try {
      var data = await apiService.post(
          endpoint: Endpoint.resetPassword,
          data: {
            'email': email,
          },
          isToken: false);
      return right(data['message']);
      if (data['message'] == true) {
        return right(data['message']);
      } else {
        return left(ServerFailure(data['message']));
      }
    } catch (e) {
      if (e is DioException) {
        // here error
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> changePassword(
      {oldPassword, newPassword, confirmPassword}) async {
    try {
      var data =
          await apiService.post(endpoint: Endpoint.changePassword, data: {
        'old_password': oldPassword,
        'new_password': newPassword,
        'confirm_password': confirmPassword,
      });
      if (data['status'] == 200) {
        return right(data['message']);
      } else {
        return left(ServerFailure(data['message']));
      }
    } catch (e) {
      if (e is DioException) {
        // here error
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthModel>> fetchUserData() async {
    try {
      var data = await apiService.get(endpoint: Endpoint.getUserData);
      AuthModel user = AuthModel.fromJson(data['data']);
      return right(user);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> updateUserData(
      {firstName, lastName, email}) async {
    try {
      var data =
          await apiService.post(endpoint: Endpoint.updateUserData, data: {
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
      });
      if (data['success'] == true) {
        AppPreferences appPreferences = getIt.get<AppPreferences>();
        await appPreferences.setUserName('$firstName $lastName');
        currentUserName = '$firstName $lastName';
        return right(data['message']);
      } else {
        return left(data['message']);
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> contactUs({type, message}) async {
    try {
      var data = await apiService.post(endpoint: Endpoint.contactUs, data: {
        'type': type,
        'content': message,
      });
      if (data['success'] == true) {
        return right(data['message']);
      } else {
        return left(data['message']);
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<void> hasUserPaid() async {
    // final response = await dio.get('https://your-api.com/user/payment-status');
    // if (response.statusCode == 200) {
    //   return response.data['hasPaid'] as bool;
    // } else {
    //   throw Exception('Failed to fetch payment status');
    // }
    try {
      if (currentUserName == 'saad saad') {
        currentUserHasPaid = true;
      }
    } catch (e) {
      if (e is DioException) {
        throw ServerFailure.fromDioError(e);
      }
      throw ServerFailure(e.toString());
    }
  }
}
