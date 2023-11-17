// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDataRequest _$UserDataRequestFromJson(Map<String, dynamic> json) {
  return _UserDataRequest.fromJson(json);
}

/// @nodoc
mixin _$UserDataRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataRequestCopyWith<UserDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataRequestCopyWith<$Res> {
  factory $UserDataRequestCopyWith(
          UserDataRequest value, $Res Function(UserDataRequest) then) =
      _$UserDataRequestCopyWithImpl<$Res, UserDataRequest>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$UserDataRequestCopyWithImpl<$Res, $Val extends UserDataRequest>
    implements $UserDataRequestCopyWith<$Res> {
  _$UserDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataRequestImplCopyWith<$Res>
    implements $UserDataRequestCopyWith<$Res> {
  factory _$$UserDataRequestImplCopyWith(_$UserDataRequestImpl value,
          $Res Function(_$UserDataRequestImpl) then) =
      __$$UserDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserDataRequestImplCopyWithImpl<$Res>
    extends _$UserDataRequestCopyWithImpl<$Res, _$UserDataRequestImpl>
    implements _$$UserDataRequestImplCopyWith<$Res> {
  __$$UserDataRequestImplCopyWithImpl(
      _$UserDataRequestImpl _value, $Res Function(_$UserDataRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserDataRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataRequestImpl implements _UserDataRequest {
  _$UserDataRequestImpl({required this.email, required this.password});

  factory _$UserDataRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserDataRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataRequestImplCopyWith<_$UserDataRequestImpl> get copyWith =>
      __$$UserDataRequestImplCopyWithImpl<_$UserDataRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataRequestImplToJson(
      this,
    );
  }
}

abstract class _UserDataRequest implements UserDataRequest {
  factory _UserDataRequest(
      {required final String email,
      required final String password}) = _$UserDataRequestImpl;

  factory _UserDataRequest.fromJson(Map<String, dynamic> json) =
      _$UserDataRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserDataRequestImplCopyWith<_$UserDataRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
