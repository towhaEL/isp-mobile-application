// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginRequestModel {

 String get username; String get password;
/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequestModelCopyWith<LoginRequestModel> get copyWith => _$LoginRequestModelCopyWithImpl<LoginRequestModel>(this as LoginRequestModel, _$identity);

  /// Serializes this LoginRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequestModel&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginRequestModel(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginRequestModelCopyWith<$Res>  {
  factory $LoginRequestModelCopyWith(LoginRequestModel value, $Res Function(LoginRequestModel) _then) = _$LoginRequestModelCopyWithImpl;
@useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class _$LoginRequestModelCopyWithImpl<$Res>
    implements $LoginRequestModelCopyWith<$Res> {
  _$LoginRequestModelCopyWithImpl(this._self, this._then);

  final LoginRequestModel _self;
  final $Res Function(LoginRequestModel) _then;

/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginRequestModel].
extension LoginRequestModelPatterns on LoginRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
return $default(_that.username,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String password)  $default,) {final _that = this;
switch (_that) {
case _LoginRequestModel():
return $default(_that.username,_that.password);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String password)?  $default,) {final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
return $default(_that.username,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginRequestModel implements LoginRequestModel {
  const _LoginRequestModel({required this.username, required this.password});
  factory _LoginRequestModel.fromJson(Map<String, dynamic> json) => _$LoginRequestModelFromJson(json);

@override final  String username;
@override final  String password;

/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRequestModelCopyWith<_LoginRequestModel> get copyWith => __$LoginRequestModelCopyWithImpl<_LoginRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginRequestModel&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginRequestModel(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginRequestModelCopyWith<$Res> implements $LoginRequestModelCopyWith<$Res> {
  factory _$LoginRequestModelCopyWith(_LoginRequestModel value, $Res Function(_LoginRequestModel) _then) = __$LoginRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class __$LoginRequestModelCopyWithImpl<$Res>
    implements _$LoginRequestModelCopyWith<$Res> {
  __$LoginRequestModelCopyWithImpl(this._self, this._then);

  final _LoginRequestModel _self;
  final $Res Function(_LoginRequestModel) _then;

/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,}) {
  return _then(_LoginRequestModel(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RefreshRequestModel {

 String get refreshToken;
/// Create a copy of RefreshRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshRequestModelCopyWith<RefreshRequestModel> get copyWith => _$RefreshRequestModelCopyWithImpl<RefreshRequestModel>(this as RefreshRequestModel, _$identity);

  /// Serializes this RefreshRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshRequestModel&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refreshToken);

@override
String toString() {
  return 'RefreshRequestModel(refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class $RefreshRequestModelCopyWith<$Res>  {
  factory $RefreshRequestModelCopyWith(RefreshRequestModel value, $Res Function(RefreshRequestModel) _then) = _$RefreshRequestModelCopyWithImpl;
@useResult
$Res call({
 String refreshToken
});




}
/// @nodoc
class _$RefreshRequestModelCopyWithImpl<$Res>
    implements $RefreshRequestModelCopyWith<$Res> {
  _$RefreshRequestModelCopyWithImpl(this._self, this._then);

  final RefreshRequestModel _self;
  final $Res Function(RefreshRequestModel) _then;

/// Create a copy of RefreshRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? refreshToken = null,}) {
  return _then(_self.copyWith(
refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RefreshRequestModel].
extension RefreshRequestModelPatterns on RefreshRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefreshRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefreshRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefreshRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _RefreshRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefreshRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _RefreshRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String refreshToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefreshRequestModel() when $default != null:
return $default(_that.refreshToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String refreshToken)  $default,) {final _that = this;
switch (_that) {
case _RefreshRequestModel():
return $default(_that.refreshToken);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String refreshToken)?  $default,) {final _that = this;
switch (_that) {
case _RefreshRequestModel() when $default != null:
return $default(_that.refreshToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefreshRequestModel implements RefreshRequestModel {
  const _RefreshRequestModel({required this.refreshToken});
  factory _RefreshRequestModel.fromJson(Map<String, dynamic> json) => _$RefreshRequestModelFromJson(json);

@override final  String refreshToken;

/// Create a copy of RefreshRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefreshRequestModelCopyWith<_RefreshRequestModel> get copyWith => __$RefreshRequestModelCopyWithImpl<_RefreshRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefreshRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshRequestModel&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refreshToken);

@override
String toString() {
  return 'RefreshRequestModel(refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class _$RefreshRequestModelCopyWith<$Res> implements $RefreshRequestModelCopyWith<$Res> {
  factory _$RefreshRequestModelCopyWith(_RefreshRequestModel value, $Res Function(_RefreshRequestModel) _then) = __$RefreshRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String refreshToken
});




}
/// @nodoc
class __$RefreshRequestModelCopyWithImpl<$Res>
    implements _$RefreshRequestModelCopyWith<$Res> {
  __$RefreshRequestModelCopyWithImpl(this._self, this._then);

  final _RefreshRequestModel _self;
  final $Res Function(_RefreshRequestModel) _then;

/// Create a copy of RefreshRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? refreshToken = null,}) {
  return _then(_RefreshRequestModel(
refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AutopayRequestModel {

 bool get enabled; AutopayTiming get timing; List<int> get connectionIds; String? get paymentMethodId;
/// Create a copy of AutopayRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutopayRequestModelCopyWith<AutopayRequestModel> get copyWith => _$AutopayRequestModelCopyWithImpl<AutopayRequestModel>(this as AutopayRequestModel, _$identity);

  /// Serializes this AutopayRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutopayRequestModel&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.timing, timing) || other.timing == timing)&&const DeepCollectionEquality().equals(other.connectionIds, connectionIds)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,timing,const DeepCollectionEquality().hash(connectionIds),paymentMethodId);

@override
String toString() {
  return 'AutopayRequestModel(enabled: $enabled, timing: $timing, connectionIds: $connectionIds, paymentMethodId: $paymentMethodId)';
}


}

/// @nodoc
abstract mixin class $AutopayRequestModelCopyWith<$Res>  {
  factory $AutopayRequestModelCopyWith(AutopayRequestModel value, $Res Function(AutopayRequestModel) _then) = _$AutopayRequestModelCopyWithImpl;
@useResult
$Res call({
 bool enabled, AutopayTiming timing, List<int> connectionIds, String? paymentMethodId
});




}
/// @nodoc
class _$AutopayRequestModelCopyWithImpl<$Res>
    implements $AutopayRequestModelCopyWith<$Res> {
  _$AutopayRequestModelCopyWithImpl(this._self, this._then);

  final AutopayRequestModel _self;
  final $Res Function(AutopayRequestModel) _then;

/// Create a copy of AutopayRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,Object? timing = null,Object? connectionIds = null,Object? paymentMethodId = freezed,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,timing: null == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as AutopayTiming,connectionIds: null == connectionIds ? _self.connectionIds : connectionIds // ignore: cast_nullable_to_non_nullable
as List<int>,paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AutopayRequestModel].
extension AutopayRequestModelPatterns on AutopayRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AutopayRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AutopayRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AutopayRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _AutopayRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AutopayRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _AutopayRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled,  AutopayTiming timing,  List<int> connectionIds,  String? paymentMethodId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AutopayRequestModel() when $default != null:
return $default(_that.enabled,_that.timing,_that.connectionIds,_that.paymentMethodId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled,  AutopayTiming timing,  List<int> connectionIds,  String? paymentMethodId)  $default,) {final _that = this;
switch (_that) {
case _AutopayRequestModel():
return $default(_that.enabled,_that.timing,_that.connectionIds,_that.paymentMethodId);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled,  AutopayTiming timing,  List<int> connectionIds,  String? paymentMethodId)?  $default,) {final _that = this;
switch (_that) {
case _AutopayRequestModel() when $default != null:
return $default(_that.enabled,_that.timing,_that.connectionIds,_that.paymentMethodId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AutopayRequestModel implements AutopayRequestModel {
  const _AutopayRequestModel({required this.enabled, required this.timing, required final  List<int> connectionIds, this.paymentMethodId}): _connectionIds = connectionIds;
  factory _AutopayRequestModel.fromJson(Map<String, dynamic> json) => _$AutopayRequestModelFromJson(json);

@override final  bool enabled;
@override final  AutopayTiming timing;
 final  List<int> _connectionIds;
@override List<int> get connectionIds {
  if (_connectionIds is EqualUnmodifiableListView) return _connectionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_connectionIds);
}

@override final  String? paymentMethodId;

/// Create a copy of AutopayRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutopayRequestModelCopyWith<_AutopayRequestModel> get copyWith => __$AutopayRequestModelCopyWithImpl<_AutopayRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AutopayRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutopayRequestModel&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.timing, timing) || other.timing == timing)&&const DeepCollectionEquality().equals(other._connectionIds, _connectionIds)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,timing,const DeepCollectionEquality().hash(_connectionIds),paymentMethodId);

@override
String toString() {
  return 'AutopayRequestModel(enabled: $enabled, timing: $timing, connectionIds: $connectionIds, paymentMethodId: $paymentMethodId)';
}


}

/// @nodoc
abstract mixin class _$AutopayRequestModelCopyWith<$Res> implements $AutopayRequestModelCopyWith<$Res> {
  factory _$AutopayRequestModelCopyWith(_AutopayRequestModel value, $Res Function(_AutopayRequestModel) _then) = __$AutopayRequestModelCopyWithImpl;
@override @useResult
$Res call({
 bool enabled, AutopayTiming timing, List<int> connectionIds, String? paymentMethodId
});




}
/// @nodoc
class __$AutopayRequestModelCopyWithImpl<$Res>
    implements _$AutopayRequestModelCopyWith<$Res> {
  __$AutopayRequestModelCopyWithImpl(this._self, this._then);

  final _AutopayRequestModel _self;
  final $Res Function(_AutopayRequestModel) _then;

/// Create a copy of AutopayRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,Object? timing = null,Object? connectionIds = null,Object? paymentMethodId = freezed,}) {
  return _then(_AutopayRequestModel(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,timing: null == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as AutopayTiming,connectionIds: null == connectionIds ? _self._connectionIds : connectionIds // ignore: cast_nullable_to_non_nullable
as List<int>,paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChangePackageRequestModel {

 int get packageId;
/// Create a copy of ChangePackageRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePackageRequestModelCopyWith<ChangePackageRequestModel> get copyWith => _$ChangePackageRequestModelCopyWithImpl<ChangePackageRequestModel>(this as ChangePackageRequestModel, _$identity);

  /// Serializes this ChangePackageRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePackageRequestModel&&(identical(other.packageId, packageId) || other.packageId == packageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packageId);

@override
String toString() {
  return 'ChangePackageRequestModel(packageId: $packageId)';
}


}

/// @nodoc
abstract mixin class $ChangePackageRequestModelCopyWith<$Res>  {
  factory $ChangePackageRequestModelCopyWith(ChangePackageRequestModel value, $Res Function(ChangePackageRequestModel) _then) = _$ChangePackageRequestModelCopyWithImpl;
@useResult
$Res call({
 int packageId
});




}
/// @nodoc
class _$ChangePackageRequestModelCopyWithImpl<$Res>
    implements $ChangePackageRequestModelCopyWith<$Res> {
  _$ChangePackageRequestModelCopyWithImpl(this._self, this._then);

  final ChangePackageRequestModel _self;
  final $Res Function(ChangePackageRequestModel) _then;

/// Create a copy of ChangePackageRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packageId = null,}) {
  return _then(_self.copyWith(
packageId: null == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePackageRequestModel].
extension ChangePackageRequestModelPatterns on ChangePackageRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePackageRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePackageRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePackageRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ChangePackageRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePackageRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePackageRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int packageId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePackageRequestModel() when $default != null:
return $default(_that.packageId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int packageId)  $default,) {final _that = this;
switch (_that) {
case _ChangePackageRequestModel():
return $default(_that.packageId);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int packageId)?  $default,) {final _that = this;
switch (_that) {
case _ChangePackageRequestModel() when $default != null:
return $default(_that.packageId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangePackageRequestModel implements ChangePackageRequestModel {
  const _ChangePackageRequestModel({required this.packageId});
  factory _ChangePackageRequestModel.fromJson(Map<String, dynamic> json) => _$ChangePackageRequestModelFromJson(json);

@override final  int packageId;

/// Create a copy of ChangePackageRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePackageRequestModelCopyWith<_ChangePackageRequestModel> get copyWith => __$ChangePackageRequestModelCopyWithImpl<_ChangePackageRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangePackageRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePackageRequestModel&&(identical(other.packageId, packageId) || other.packageId == packageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packageId);

@override
String toString() {
  return 'ChangePackageRequestModel(packageId: $packageId)';
}


}

/// @nodoc
abstract mixin class _$ChangePackageRequestModelCopyWith<$Res> implements $ChangePackageRequestModelCopyWith<$Res> {
  factory _$ChangePackageRequestModelCopyWith(_ChangePackageRequestModel value, $Res Function(_ChangePackageRequestModel) _then) = __$ChangePackageRequestModelCopyWithImpl;
@override @useResult
$Res call({
 int packageId
});




}
/// @nodoc
class __$ChangePackageRequestModelCopyWithImpl<$Res>
    implements _$ChangePackageRequestModelCopyWith<$Res> {
  __$ChangePackageRequestModelCopyWithImpl(this._self, this._then);

  final _ChangePackageRequestModel _self;
  final $Res Function(_ChangePackageRequestModel) _then;

/// Create a copy of ChangePackageRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packageId = null,}) {
  return _then(_ChangePackageRequestModel(
packageId: null == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WifiSettingsRequestModel {

 String get ssid; String get password; WifiBand get band; bool get guestNetworkEnabled;
/// Create a copy of WifiSettingsRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WifiSettingsRequestModelCopyWith<WifiSettingsRequestModel> get copyWith => _$WifiSettingsRequestModelCopyWithImpl<WifiSettingsRequestModel>(this as WifiSettingsRequestModel, _$identity);

  /// Serializes this WifiSettingsRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WifiSettingsRequestModel&&(identical(other.ssid, ssid) || other.ssid == ssid)&&(identical(other.password, password) || other.password == password)&&(identical(other.band, band) || other.band == band)&&(identical(other.guestNetworkEnabled, guestNetworkEnabled) || other.guestNetworkEnabled == guestNetworkEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ssid,password,band,guestNetworkEnabled);

@override
String toString() {
  return 'WifiSettingsRequestModel(ssid: $ssid, password: $password, band: $band, guestNetworkEnabled: $guestNetworkEnabled)';
}


}

/// @nodoc
abstract mixin class $WifiSettingsRequestModelCopyWith<$Res>  {
  factory $WifiSettingsRequestModelCopyWith(WifiSettingsRequestModel value, $Res Function(WifiSettingsRequestModel) _then) = _$WifiSettingsRequestModelCopyWithImpl;
@useResult
$Res call({
 String ssid, String password, WifiBand band, bool guestNetworkEnabled
});




}
/// @nodoc
class _$WifiSettingsRequestModelCopyWithImpl<$Res>
    implements $WifiSettingsRequestModelCopyWith<$Res> {
  _$WifiSettingsRequestModelCopyWithImpl(this._self, this._then);

  final WifiSettingsRequestModel _self;
  final $Res Function(WifiSettingsRequestModel) _then;

/// Create a copy of WifiSettingsRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ssid = null,Object? password = null,Object? band = null,Object? guestNetworkEnabled = null,}) {
  return _then(_self.copyWith(
ssid: null == ssid ? _self.ssid : ssid // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,band: null == band ? _self.band : band // ignore: cast_nullable_to_non_nullable
as WifiBand,guestNetworkEnabled: null == guestNetworkEnabled ? _self.guestNetworkEnabled : guestNetworkEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WifiSettingsRequestModel].
extension WifiSettingsRequestModelPatterns on WifiSettingsRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WifiSettingsRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WifiSettingsRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WifiSettingsRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _WifiSettingsRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WifiSettingsRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _WifiSettingsRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ssid,  String password,  WifiBand band,  bool guestNetworkEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WifiSettingsRequestModel() when $default != null:
return $default(_that.ssid,_that.password,_that.band,_that.guestNetworkEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ssid,  String password,  WifiBand band,  bool guestNetworkEnabled)  $default,) {final _that = this;
switch (_that) {
case _WifiSettingsRequestModel():
return $default(_that.ssid,_that.password,_that.band,_that.guestNetworkEnabled);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ssid,  String password,  WifiBand band,  bool guestNetworkEnabled)?  $default,) {final _that = this;
switch (_that) {
case _WifiSettingsRequestModel() when $default != null:
return $default(_that.ssid,_that.password,_that.band,_that.guestNetworkEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WifiSettingsRequestModel implements WifiSettingsRequestModel {
  const _WifiSettingsRequestModel({required this.ssid, required this.password, required this.band, required this.guestNetworkEnabled});
  factory _WifiSettingsRequestModel.fromJson(Map<String, dynamic> json) => _$WifiSettingsRequestModelFromJson(json);

@override final  String ssid;
@override final  String password;
@override final  WifiBand band;
@override final  bool guestNetworkEnabled;

/// Create a copy of WifiSettingsRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WifiSettingsRequestModelCopyWith<_WifiSettingsRequestModel> get copyWith => __$WifiSettingsRequestModelCopyWithImpl<_WifiSettingsRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WifiSettingsRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WifiSettingsRequestModel&&(identical(other.ssid, ssid) || other.ssid == ssid)&&(identical(other.password, password) || other.password == password)&&(identical(other.band, band) || other.band == band)&&(identical(other.guestNetworkEnabled, guestNetworkEnabled) || other.guestNetworkEnabled == guestNetworkEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ssid,password,band,guestNetworkEnabled);

@override
String toString() {
  return 'WifiSettingsRequestModel(ssid: $ssid, password: $password, band: $band, guestNetworkEnabled: $guestNetworkEnabled)';
}


}

/// @nodoc
abstract mixin class _$WifiSettingsRequestModelCopyWith<$Res> implements $WifiSettingsRequestModelCopyWith<$Res> {
  factory _$WifiSettingsRequestModelCopyWith(_WifiSettingsRequestModel value, $Res Function(_WifiSettingsRequestModel) _then) = __$WifiSettingsRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String ssid, String password, WifiBand band, bool guestNetworkEnabled
});




}
/// @nodoc
class __$WifiSettingsRequestModelCopyWithImpl<$Res>
    implements _$WifiSettingsRequestModelCopyWith<$Res> {
  __$WifiSettingsRequestModelCopyWithImpl(this._self, this._then);

  final _WifiSettingsRequestModel _self;
  final $Res Function(_WifiSettingsRequestModel) _then;

/// Create a copy of WifiSettingsRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ssid = null,Object? password = null,Object? band = null,Object? guestNetworkEnabled = null,}) {
  return _then(_WifiSettingsRequestModel(
ssid: null == ssid ? _self.ssid : ssid // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,band: null == band ? _self.band : band // ignore: cast_nullable_to_non_nullable
as WifiBand,guestNetworkEnabled: null == guestNetworkEnabled ? _self.guestNetworkEnabled : guestNetworkEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CreateTicketRequestModel {

 int get connectionId; TicketIssueType get issueType; String get description; String? get preferredVisitTime;
/// Create a copy of CreateTicketRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTicketRequestModelCopyWith<CreateTicketRequestModel> get copyWith => _$CreateTicketRequestModelCopyWithImpl<CreateTicketRequestModel>(this as CreateTicketRequestModel, _$identity);

  /// Serializes this CreateTicketRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTicketRequestModel&&(identical(other.connectionId, connectionId) || other.connectionId == connectionId)&&(identical(other.issueType, issueType) || other.issueType == issueType)&&(identical(other.description, description) || other.description == description)&&(identical(other.preferredVisitTime, preferredVisitTime) || other.preferredVisitTime == preferredVisitTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,connectionId,issueType,description,preferredVisitTime);

@override
String toString() {
  return 'CreateTicketRequestModel(connectionId: $connectionId, issueType: $issueType, description: $description, preferredVisitTime: $preferredVisitTime)';
}


}

/// @nodoc
abstract mixin class $CreateTicketRequestModelCopyWith<$Res>  {
  factory $CreateTicketRequestModelCopyWith(CreateTicketRequestModel value, $Res Function(CreateTicketRequestModel) _then) = _$CreateTicketRequestModelCopyWithImpl;
@useResult
$Res call({
 int connectionId, TicketIssueType issueType, String description, String? preferredVisitTime
});




}
/// @nodoc
class _$CreateTicketRequestModelCopyWithImpl<$Res>
    implements $CreateTicketRequestModelCopyWith<$Res> {
  _$CreateTicketRequestModelCopyWithImpl(this._self, this._then);

  final CreateTicketRequestModel _self;
  final $Res Function(CreateTicketRequestModel) _then;

/// Create a copy of CreateTicketRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? connectionId = null,Object? issueType = null,Object? description = null,Object? preferredVisitTime = freezed,}) {
  return _then(_self.copyWith(
connectionId: null == connectionId ? _self.connectionId : connectionId // ignore: cast_nullable_to_non_nullable
as int,issueType: null == issueType ? _self.issueType : issueType // ignore: cast_nullable_to_non_nullable
as TicketIssueType,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,preferredVisitTime: freezed == preferredVisitTime ? _self.preferredVisitTime : preferredVisitTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateTicketRequestModel].
extension CreateTicketRequestModelPatterns on CreateTicketRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTicketRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTicketRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTicketRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateTicketRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTicketRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTicketRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int connectionId,  TicketIssueType issueType,  String description,  String? preferredVisitTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTicketRequestModel() when $default != null:
return $default(_that.connectionId,_that.issueType,_that.description,_that.preferredVisitTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int connectionId,  TicketIssueType issueType,  String description,  String? preferredVisitTime)  $default,) {final _that = this;
switch (_that) {
case _CreateTicketRequestModel():
return $default(_that.connectionId,_that.issueType,_that.description,_that.preferredVisitTime);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int connectionId,  TicketIssueType issueType,  String description,  String? preferredVisitTime)?  $default,) {final _that = this;
switch (_that) {
case _CreateTicketRequestModel() when $default != null:
return $default(_that.connectionId,_that.issueType,_that.description,_that.preferredVisitTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTicketRequestModel implements CreateTicketRequestModel {
  const _CreateTicketRequestModel({required this.connectionId, required this.issueType, required this.description, this.preferredVisitTime});
  factory _CreateTicketRequestModel.fromJson(Map<String, dynamic> json) => _$CreateTicketRequestModelFromJson(json);

@override final  int connectionId;
@override final  TicketIssueType issueType;
@override final  String description;
@override final  String? preferredVisitTime;

/// Create a copy of CreateTicketRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTicketRequestModelCopyWith<_CreateTicketRequestModel> get copyWith => __$CreateTicketRequestModelCopyWithImpl<_CreateTicketRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTicketRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTicketRequestModel&&(identical(other.connectionId, connectionId) || other.connectionId == connectionId)&&(identical(other.issueType, issueType) || other.issueType == issueType)&&(identical(other.description, description) || other.description == description)&&(identical(other.preferredVisitTime, preferredVisitTime) || other.preferredVisitTime == preferredVisitTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,connectionId,issueType,description,preferredVisitTime);

@override
String toString() {
  return 'CreateTicketRequestModel(connectionId: $connectionId, issueType: $issueType, description: $description, preferredVisitTime: $preferredVisitTime)';
}


}

/// @nodoc
abstract mixin class _$CreateTicketRequestModelCopyWith<$Res> implements $CreateTicketRequestModelCopyWith<$Res> {
  factory _$CreateTicketRequestModelCopyWith(_CreateTicketRequestModel value, $Res Function(_CreateTicketRequestModel) _then) = __$CreateTicketRequestModelCopyWithImpl;
@override @useResult
$Res call({
 int connectionId, TicketIssueType issueType, String description, String? preferredVisitTime
});




}
/// @nodoc
class __$CreateTicketRequestModelCopyWithImpl<$Res>
    implements _$CreateTicketRequestModelCopyWith<$Res> {
  __$CreateTicketRequestModelCopyWithImpl(this._self, this._then);

  final _CreateTicketRequestModel _self;
  final $Res Function(_CreateTicketRequestModel) _then;

/// Create a copy of CreateTicketRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? connectionId = null,Object? issueType = null,Object? description = null,Object? preferredVisitTime = freezed,}) {
  return _then(_CreateTicketRequestModel(
connectionId: null == connectionId ? _self.connectionId : connectionId // ignore: cast_nullable_to_non_nullable
as int,issueType: null == issueType ? _self.issueType : issueType // ignore: cast_nullable_to_non_nullable
as TicketIssueType,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,preferredVisitTime: freezed == preferredVisitTime ? _self.preferredVisitTime : preferredVisitTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TicketReplyRequestModel {

 String get body;
/// Create a copy of TicketReplyRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketReplyRequestModelCopyWith<TicketReplyRequestModel> get copyWith => _$TicketReplyRequestModelCopyWithImpl<TicketReplyRequestModel>(this as TicketReplyRequestModel, _$identity);

  /// Serializes this TicketReplyRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketReplyRequestModel&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'TicketReplyRequestModel(body: $body)';
}


}

/// @nodoc
abstract mixin class $TicketReplyRequestModelCopyWith<$Res>  {
  factory $TicketReplyRequestModelCopyWith(TicketReplyRequestModel value, $Res Function(TicketReplyRequestModel) _then) = _$TicketReplyRequestModelCopyWithImpl;
@useResult
$Res call({
 String body
});




}
/// @nodoc
class _$TicketReplyRequestModelCopyWithImpl<$Res>
    implements $TicketReplyRequestModelCopyWith<$Res> {
  _$TicketReplyRequestModelCopyWithImpl(this._self, this._then);

  final TicketReplyRequestModel _self;
  final $Res Function(TicketReplyRequestModel) _then;

/// Create a copy of TicketReplyRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = null,}) {
  return _then(_self.copyWith(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketReplyRequestModel].
extension TicketReplyRequestModelPatterns on TicketReplyRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketReplyRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketReplyRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketReplyRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _TicketReplyRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketReplyRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _TicketReplyRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketReplyRequestModel() when $default != null:
return $default(_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String body)  $default,) {final _that = this;
switch (_that) {
case _TicketReplyRequestModel():
return $default(_that.body);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String body)?  $default,) {final _that = this;
switch (_that) {
case _TicketReplyRequestModel() when $default != null:
return $default(_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketReplyRequestModel implements TicketReplyRequestModel {
  const _TicketReplyRequestModel({required this.body});
  factory _TicketReplyRequestModel.fromJson(Map<String, dynamic> json) => _$TicketReplyRequestModelFromJson(json);

@override final  String body;

/// Create a copy of TicketReplyRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketReplyRequestModelCopyWith<_TicketReplyRequestModel> get copyWith => __$TicketReplyRequestModelCopyWithImpl<_TicketReplyRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketReplyRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketReplyRequestModel&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'TicketReplyRequestModel(body: $body)';
}


}

/// @nodoc
abstract mixin class _$TicketReplyRequestModelCopyWith<$Res> implements $TicketReplyRequestModelCopyWith<$Res> {
  factory _$TicketReplyRequestModelCopyWith(_TicketReplyRequestModel value, $Res Function(_TicketReplyRequestModel) _then) = __$TicketReplyRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String body
});




}
/// @nodoc
class __$TicketReplyRequestModelCopyWithImpl<$Res>
    implements _$TicketReplyRequestModelCopyWith<$Res> {
  __$TicketReplyRequestModelCopyWithImpl(this._self, this._then);

  final _TicketReplyRequestModel _self;
  final $Res Function(_TicketReplyRequestModel) _then;

/// Create a copy of TicketReplyRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? body = null,}) {
  return _then(_TicketReplyRequestModel(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
