import 'package:bloc/bloc.dart';
import 'package:domain/core/error_handler.dart';
import 'package:domain/models/user_data_request.dart';
import 'package:domain/models/user_data_response.dart';
import 'package:domain/repository/auth_repository.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepository) : super(LoginInitial());
  final IAuthRepository _authRepository;

  Future<void> login({required String email, required String password}) async {
    emit(LoginLoading());
    final result = await _authRepository.login(
      UserDataRequest(email: email, password: password),
    );

    return switch (result) {
      Success(value: final userData) => emit(LoginLoaded(data: userData)),
      Failure(exception: final exception) => exception is ApiException
          ? emit(LoginError(msg: exception.apiMessage))
          : emit(LoginError(msg: exception.toString())),
    };
  }
}
