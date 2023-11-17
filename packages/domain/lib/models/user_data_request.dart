import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_request.freezed.dart';
part 'user_data_request.g.dart';

@freezed
class UserDataRequest with _$UserDataRequest {
  factory UserDataRequest({
    required String email,
    required String password,
  }) = _UserDataRequest;

  factory UserDataRequest.fromJson(Map<String, dynamic> json) =>
      _$UserDataRequestFromJson(json);
}
