import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_response.freezed.dart';
part 'user_data_response.g.dart';

@freezed
class UserDataResponse with _$UserDataResponse {
  const factory UserDataResponse({
    Tokens? tokens,
    User? user,
  }) = _UserDataResponse;

  factory UserDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDataResponseFromJson(json);
}

@freezed
class Tokens with _$Tokens {
  const factory Tokens({
    required String accessToken,
    required String refreshToken,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    required String nickname,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
