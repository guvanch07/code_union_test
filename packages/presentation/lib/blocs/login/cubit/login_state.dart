part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginLoaded extends LoginState {
  final UserDataResponse data;

  LoginLoaded({required this.data});
}

final class LoginError extends LoginState {
  final String msg;

  LoginError({required this.msg});
}
