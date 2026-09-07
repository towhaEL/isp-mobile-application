// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {

 BaseStatus get loginStatus; AuthMode get mode; String get customerId; String get password; String get otp;/// Drives the inline "Enter your password to continue." banner. Distinct
/// from [loginStatus] failure: nothing was sent, so there is no
/// `ResponseError` to render.
 bool get showEmptyPasswordError; LoginEntity? get loginEntity;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.loginStatus, loginStatus) || other.loginStatus == loginStatus)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.password, password) || other.password == password)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.showEmptyPasswordError, showEmptyPasswordError) || other.showEmptyPasswordError == showEmptyPasswordError)&&(identical(other.loginEntity, loginEntity) || other.loginEntity == loginEntity));
}


@override
int get hashCode => Object.hash(runtimeType,loginStatus,mode,customerId,password,otp,showEmptyPasswordError,loginEntity);

@override
String toString() {
  return 'LoginState(loginStatus: $loginStatus, mode: $mode, customerId: $customerId, password: $password, otp: $otp, showEmptyPasswordError: $showEmptyPasswordError, loginEntity: $loginEntity)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus loginStatus, AuthMode mode, String customerId, String password, String otp, bool showEmptyPasswordError, LoginEntity? loginEntity
});


$BaseStatusCopyWith<$Res> get loginStatus;$LoginEntityCopyWith<$Res>? get loginEntity;

}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loginStatus = null,Object? mode = null,Object? customerId = null,Object? password = null,Object? otp = null,Object? showEmptyPasswordError = null,Object? loginEntity = freezed,}) {
  return _then(_self.copyWith(
loginStatus: null == loginStatus ? _self.loginStatus : loginStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as AuthMode,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,showEmptyPasswordError: null == showEmptyPasswordError ? _self.showEmptyPasswordError : showEmptyPasswordError // ignore: cast_nullable_to_non_nullable
as bool,loginEntity: freezed == loginEntity ? _self.loginEntity : loginEntity // ignore: cast_nullable_to_non_nullable
as LoginEntity?,
  ));
}
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get loginStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.loginStatus, (value) {
    return _then(_self.copyWith(loginStatus: value));
  });
}/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginEntityCopyWith<$Res>? get loginEntity {
    if (_self.loginEntity == null) {
    return null;
  }

  return $LoginEntityCopyWith<$Res>(_self.loginEntity!, (value) {
    return _then(_self.copyWith(loginEntity: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus loginStatus,  AuthMode mode,  String customerId,  String password,  String otp,  bool showEmptyPasswordError,  LoginEntity? loginEntity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.loginStatus,_that.mode,_that.customerId,_that.password,_that.otp,_that.showEmptyPasswordError,_that.loginEntity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus loginStatus,  AuthMode mode,  String customerId,  String password,  String otp,  bool showEmptyPasswordError,  LoginEntity? loginEntity)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.loginStatus,_that.mode,_that.customerId,_that.password,_that.otp,_that.showEmptyPasswordError,_that.loginEntity);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus loginStatus,  AuthMode mode,  String customerId,  String password,  String otp,  bool showEmptyPasswordError,  LoginEntity? loginEntity)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.loginStatus,_that.mode,_that.customerId,_that.password,_that.otp,_that.showEmptyPasswordError,_that.loginEntity);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState extends LoginState {
  const _LoginState({this.loginStatus = const BaseStatus.initial(), this.mode = AuthMode.password, this.customerId = '', this.password = '', this.otp = '', this.showEmptyPasswordError = false, this.loginEntity}): super._();
  

@override@JsonKey() final  BaseStatus loginStatus;
@override@JsonKey() final  AuthMode mode;
@override@JsonKey() final  String customerId;
@override@JsonKey() final  String password;
@override@JsonKey() final  String otp;
/// Drives the inline "Enter your password to continue." banner. Distinct
/// from [loginStatus] failure: nothing was sent, so there is no
/// `ResponseError` to render.
@override@JsonKey() final  bool showEmptyPasswordError;
@override final  LoginEntity? loginEntity;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.loginStatus, loginStatus) || other.loginStatus == loginStatus)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.password, password) || other.password == password)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.showEmptyPasswordError, showEmptyPasswordError) || other.showEmptyPasswordError == showEmptyPasswordError)&&(identical(other.loginEntity, loginEntity) || other.loginEntity == loginEntity));
}


@override
int get hashCode => Object.hash(runtimeType,loginStatus,mode,customerId,password,otp,showEmptyPasswordError,loginEntity);

@override
String toString() {
  return 'LoginState(loginStatus: $loginStatus, mode: $mode, customerId: $customerId, password: $password, otp: $otp, showEmptyPasswordError: $showEmptyPasswordError, loginEntity: $loginEntity)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus loginStatus, AuthMode mode, String customerId, String password, String otp, bool showEmptyPasswordError, LoginEntity? loginEntity
});


@override $BaseStatusCopyWith<$Res> get loginStatus;@override $LoginEntityCopyWith<$Res>? get loginEntity;

}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loginStatus = null,Object? mode = null,Object? customerId = null,Object? password = null,Object? otp = null,Object? showEmptyPasswordError = null,Object? loginEntity = freezed,}) {
  return _then(_LoginState(
loginStatus: null == loginStatus ? _self.loginStatus : loginStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as AuthMode,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,showEmptyPasswordError: null == showEmptyPasswordError ? _self.showEmptyPasswordError : showEmptyPasswordError // ignore: cast_nullable_to_non_nullable
as bool,loginEntity: freezed == loginEntity ? _self.loginEntity : loginEntity // ignore: cast_nullable_to_non_nullable
as LoginEntity?,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get loginStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.loginStatus, (value) {
    return _then(_self.copyWith(loginStatus: value));
  });
}/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginEntityCopyWith<$Res>? get loginEntity {
    if (_self.loginEntity == null) {
    return null;
  }

  return $LoginEntityCopyWith<$Res>(_self.loginEntity!, (value) {
    return _then(_self.copyWith(loginEntity: value));
  });
}
}

// dart format on
