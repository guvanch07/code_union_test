import 'package:domain/core/error_handler.dart';
import 'package:domain/models/user_data_request.dart';
import 'package:domain/models/user_data_response.dart';

abstract class IAuthRepository {
  Future<Result<UserDataResponse, Exception>> login(UserDataRequest data);
}
