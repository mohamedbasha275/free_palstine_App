import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:free_palestine/features/data/models/auth_model.dart';
import 'package:free_palestine/features/data/repositories/auth_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo authRepo;

  AuthCubit(this.authRepo) : super(AuthInitial());

  // login
  Future<void> login({email, password}) async {
    emit(LoginLoading());
    var result = await authRepo.login(email: email, password: password);
    result.fold((failure) {
      emit(LoginFailure(failure.errorMessage));
    }, (token) {
      emit(LoginSuccess(token));
    });
  }

  // register
  Future<void> register({firstName, lastName, email, password}) async {
    emit(RegisterLoading());
    var result = await authRepo.register(
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password);
    result.fold((failure) {
      emit(RegisterFailure(failure.errorMessage));
    }, (token) {
      emit(RegisterSuccess(token));
    });
  }

  // resetPassword
  Future<void> resetPassword({email}) async {
    emit(ResetPasswordLoading());
    var result = await authRepo.resetPassword(email: email);
    result.fold((failure) {
      emit(ResetPasswordFailure(failure.errorMessage));
    }, (token) {
      emit(ResetPasswordSuccess(token));
    });
  }

  // change password
  Future<void> changePassword(
      {oldPassword, newPassword, confirmPassword}) async {
    emit(ChangePasswordLoading());
    var result = await authRepo.changePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
        confirmPassword: confirmPassword);
    result.fold((failure) {
      emit(ChangePasswordFailure(failure.errorMessage));
    }, (msg) {
      emit(ChangePasswordSuccess(msg));
    });
  }

  // fetch User Data
  Future<void> fetchUserData() async {
    emit(UserDataLoading());
    var result = await authRepo.fetchUserData();
    result.fold((failure) {
      emit(UserDataFailure(failure.errorMessage));
    }, (userData) {
      emit(UserDataSuccess(userData));
    });
  }

  // update User Data
  Future<void> updateUserData({firstName, lastName, email}) async {
    var result = await authRepo.updateUserData(
        firstName: firstName, lastName: lastName, email: email);
    result.fold((failure) {
      emit(UserUpdateFailure(failure.errorMessage));
    }, (message) {
      emit(UserUpdateSuccess(message));
    });
  }

  // contact us
  Future<void> contactUs({type, message}) async {
    var result = await authRepo.contactUs(type: type, message: message);
    result.fold((failure) {
      emit(ContactUsFailure(failure.errorMessage));
    }, (message) {
      emit(ContactUsSuccess(message));
    });
  }
}
