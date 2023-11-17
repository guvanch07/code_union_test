import 'dart:developer';

import 'package:data/services/dio_builder.dart';
import 'package:dio/dio.dart';
import 'package:domain/core/error_handler.dart';
import 'package:domain/models/user_data_request.dart';
import 'package:domain/models/user_data_response.dart';
import 'package:domain/repository/auth_repository.dart';

const _baseUrl = 'http://45.10.110.181:8080/';

class AuthRepository extends IAuthRepository {
  late final Dio _dio;

  AuthRepository() {
    _dio = dioBuilder(_baseUrl); //usally handle it with DI
  }
  @override
  Future<Result<UserDataResponse, Exception>> login(
      UserDataRequest data) async {
    try {
      final request =
          await _dio.post('${_baseUrl}api/v1/auth/login', data: data.toJson());
      if (request.statusCode.inRange(200, 299)) {
        return Success(UserDataResponse.fromJson(request.data));
      } else {
        return Failure(ApiException(request.statusCode));
      }
    } on DioException catch (e) {
      log(e.error.toString());
      return Failure(ApiException(e.response?.statusCode));
    } catch (e) {
      return Failure(Exception(e));
    }
  }
}

extension Range on num? {
  bool inRange(num from, num to) =>
      this == null ? false : from <= this! && this! <= to;
}
