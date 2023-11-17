// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataResponseImpl _$$UserDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDataResponseImpl(
      tokens: json['tokens'] == null
          ? null
          : Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDataResponseImplToJson(
        _$UserDataResponseImpl instance) =>
    <String, dynamic>{
      'tokens': instance.tokens,
      'user': instance.user,
    };

_$TokensImpl _$$TokensImplFromJson(Map<String, dynamic> json) => _$TokensImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$TokensImplToJson(_$TokensImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int,
      email: json['email'] as String,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'nickname': instance.nickname,
    };
