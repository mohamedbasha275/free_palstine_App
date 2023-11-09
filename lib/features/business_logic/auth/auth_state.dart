part of 'auth_cubit.dart';

@immutable
abstract class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {}

// login
class LoginLoading extends AuthState {}

class LoginFailure extends AuthState {
  final String errorMessage;

  const LoginFailure(this.errorMessage);
}

class LoginSuccess extends AuthState {
  final String token;

  const LoginSuccess(this.token);
}

// resetPassword
class ResetPasswordLoading extends AuthState {}

class ResetPasswordFailure extends AuthState {
  final String errorMessage;

  const ResetPasswordFailure(this.errorMessage);
}

class ResetPasswordSuccess extends AuthState {
  final String message;

  const ResetPasswordSuccess(this.message);
}

// Register
class RegisterLoading extends AuthState {}

class RegisterFailure extends AuthState {
  final String errorMessage;

  const RegisterFailure(this.errorMessage);
}

class RegisterSuccess extends AuthState {
  final String token;

  const RegisterSuccess(this.token);
}

// change password
class ChangePasswordLoading extends AuthState {}

class ChangePasswordFailure extends AuthState {
  final String errorMessage;

  const ChangePasswordFailure(this.errorMessage);
}

class ChangePasswordSuccess extends AuthState {
  final String message;

  const ChangePasswordSuccess(this.message);
}

// get user data
class UserDataLoading extends AuthState {}

class UserDataFailure extends AuthState {
  final String errorMessage;

  const UserDataFailure(this.errorMessage);
}

class UserDataSuccess extends AuthState {
  final AuthModel user;

  const UserDataSuccess(this.user);
}

// update user data
class UserUpdateLoading extends AuthState {}

class UserUpdateFailure extends AuthState {
  final String errorMessage;

  const UserUpdateFailure(this.errorMessage);
}

class UserUpdateSuccess extends AuthState {
  final String message;

  const UserUpdateSuccess(this.message);
}

// contact us
class ContactUsLoading extends AuthState {}

class ContactUsFailure extends AuthState {
  final String errorMessage;

  const ContactUsFailure(this.errorMessage);
}

class ContactUsSuccess extends AuthState {
  final String message;

  const ContactUsSuccess(this.message);
}
