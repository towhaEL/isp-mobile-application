// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthTokenResponseModel {

 String? get accessToken; String? get refreshToken; String? get tokenType; int? get expiresIn;
/// Create a copy of AuthTokenResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthTokenResponseModelCopyWith<AuthTokenResponseModel> get copyWith => _$AuthTokenResponseModelCopyWithImpl<AuthTokenResponseModel>(this as AuthTokenResponseModel, _$identity);

  /// Serializes this AuthTokenResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthTokenResponseModel&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,tokenType,expiresIn);

@override
String toString() {
  return 'AuthTokenResponseModel(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class $AuthTokenResponseModelCopyWith<$Res>  {
  factory $AuthTokenResponseModelCopyWith(AuthTokenResponseModel value, $Res Function(AuthTokenResponseModel) _then) = _$AuthTokenResponseModelCopyWithImpl;
@useResult
$Res call({
 String? accessToken, String? refreshToken, String? tokenType, int? expiresIn
});




}
/// @nodoc
class _$AuthTokenResponseModelCopyWithImpl<$Res>
    implements $AuthTokenResponseModelCopyWith<$Res> {
  _$AuthTokenResponseModelCopyWithImpl(this._self, this._then);

  final AuthTokenResponseModel _self;
  final $Res Function(AuthTokenResponseModel) _then;

/// Create a copy of AuthTokenResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = freezed,Object? refreshToken = freezed,Object? tokenType = freezed,Object? expiresIn = freezed,}) {
  return _then(_self.copyWith(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: freezed == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthTokenResponseModel].
extension AuthTokenResponseModelPatterns on AuthTokenResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthTokenResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthTokenResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthTokenResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthTokenResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthTokenResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthTokenResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? accessToken,  String? refreshToken,  String? tokenType,  int? expiresIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthTokenResponseModel() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresIn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? accessToken,  String? refreshToken,  String? tokenType,  int? expiresIn)  $default,) {final _that = this;
switch (_that) {
case _AuthTokenResponseModel():
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresIn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? accessToken,  String? refreshToken,  String? tokenType,  int? expiresIn)?  $default,) {final _that = this;
switch (_that) {
case _AuthTokenResponseModel() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresIn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthTokenResponseModel implements AuthTokenResponseModel {
  const _AuthTokenResponseModel({this.accessToken, this.refreshToken, this.tokenType, this.expiresIn});
  factory _AuthTokenResponseModel.fromJson(Map<String, dynamic> json) => _$AuthTokenResponseModelFromJson(json);

@override final  String? accessToken;
@override final  String? refreshToken;
@override final  String? tokenType;
@override final  int? expiresIn;

/// Create a copy of AuthTokenResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthTokenResponseModelCopyWith<_AuthTokenResponseModel> get copyWith => __$AuthTokenResponseModelCopyWithImpl<_AuthTokenResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthTokenResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthTokenResponseModel&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,tokenType,expiresIn);

@override
String toString() {
  return 'AuthTokenResponseModel(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class _$AuthTokenResponseModelCopyWith<$Res> implements $AuthTokenResponseModelCopyWith<$Res> {
  factory _$AuthTokenResponseModelCopyWith(_AuthTokenResponseModel value, $Res Function(_AuthTokenResponseModel) _then) = __$AuthTokenResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? accessToken, String? refreshToken, String? tokenType, int? expiresIn
});




}
/// @nodoc
class __$AuthTokenResponseModelCopyWithImpl<$Res>
    implements _$AuthTokenResponseModelCopyWith<$Res> {
  __$AuthTokenResponseModelCopyWithImpl(this._self, this._then);

  final _AuthTokenResponseModel _self;
  final $Res Function(_AuthTokenResponseModel) _then;

/// Create a copy of AuthTokenResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = freezed,Object? refreshToken = freezed,Object? tokenType = freezed,Object? expiresIn = freezed,}) {
  return _then(_AuthTokenResponseModel(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: freezed == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AccountSummaryResponseModel {

 int? get customerId;@NullableDecimalConverter() double? get outstandingAmount;@NullableDecimalConverter() double? get creditBalance; String? get currency; int? get overdueInvoiceCount; DateTime? get nextDueDate;
/// Create a copy of AccountSummaryResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountSummaryResponseModelCopyWith<AccountSummaryResponseModel> get copyWith => _$AccountSummaryResponseModelCopyWithImpl<AccountSummaryResponseModel>(this as AccountSummaryResponseModel, _$identity);

  /// Serializes this AccountSummaryResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountSummaryResponseModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.outstandingAmount, outstandingAmount) || other.outstandingAmount == outstandingAmount)&&(identical(other.creditBalance, creditBalance) || other.creditBalance == creditBalance)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.overdueInvoiceCount, overdueInvoiceCount) || other.overdueInvoiceCount == overdueInvoiceCount)&&(identical(other.nextDueDate, nextDueDate) || other.nextDueDate == nextDueDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,outstandingAmount,creditBalance,currency,overdueInvoiceCount,nextDueDate);

@override
String toString() {
  return 'AccountSummaryResponseModel(customerId: $customerId, outstandingAmount: $outstandingAmount, creditBalance: $creditBalance, currency: $currency, overdueInvoiceCount: $overdueInvoiceCount, nextDueDate: $nextDueDate)';
}


}

/// @nodoc
abstract mixin class $AccountSummaryResponseModelCopyWith<$Res>  {
  factory $AccountSummaryResponseModelCopyWith(AccountSummaryResponseModel value, $Res Function(AccountSummaryResponseModel) _then) = _$AccountSummaryResponseModelCopyWithImpl;
@useResult
$Res call({
 int? customerId,@NullableDecimalConverter() double? outstandingAmount,@NullableDecimalConverter() double? creditBalance, String? currency, int? overdueInvoiceCount, DateTime? nextDueDate
});




}
/// @nodoc
class _$AccountSummaryResponseModelCopyWithImpl<$Res>
    implements $AccountSummaryResponseModelCopyWith<$Res> {
  _$AccountSummaryResponseModelCopyWithImpl(this._self, this._then);

  final AccountSummaryResponseModel _self;
  final $Res Function(AccountSummaryResponseModel) _then;

/// Create a copy of AccountSummaryResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = freezed,Object? outstandingAmount = freezed,Object? creditBalance = freezed,Object? currency = freezed,Object? overdueInvoiceCount = freezed,Object? nextDueDate = freezed,}) {
  return _then(_self.copyWith(
customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,outstandingAmount: freezed == outstandingAmount ? _self.outstandingAmount : outstandingAmount // ignore: cast_nullable_to_non_nullable
as double?,creditBalance: freezed == creditBalance ? _self.creditBalance : creditBalance // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,overdueInvoiceCount: freezed == overdueInvoiceCount ? _self.overdueInvoiceCount : overdueInvoiceCount // ignore: cast_nullable_to_non_nullable
as int?,nextDueDate: freezed == nextDueDate ? _self.nextDueDate : nextDueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountSummaryResponseModel].
extension AccountSummaryResponseModelPatterns on AccountSummaryResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountSummaryResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountSummaryResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountSummaryResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AccountSummaryResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountSummaryResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AccountSummaryResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? customerId, @NullableDecimalConverter()  double? outstandingAmount, @NullableDecimalConverter()  double? creditBalance,  String? currency,  int? overdueInvoiceCount,  DateTime? nextDueDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountSummaryResponseModel() when $default != null:
return $default(_that.customerId,_that.outstandingAmount,_that.creditBalance,_that.currency,_that.overdueInvoiceCount,_that.nextDueDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? customerId, @NullableDecimalConverter()  double? outstandingAmount, @NullableDecimalConverter()  double? creditBalance,  String? currency,  int? overdueInvoiceCount,  DateTime? nextDueDate)  $default,) {final _that = this;
switch (_that) {
case _AccountSummaryResponseModel():
return $default(_that.customerId,_that.outstandingAmount,_that.creditBalance,_that.currency,_that.overdueInvoiceCount,_that.nextDueDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? customerId, @NullableDecimalConverter()  double? outstandingAmount, @NullableDecimalConverter()  double? creditBalance,  String? currency,  int? overdueInvoiceCount,  DateTime? nextDueDate)?  $default,) {final _that = this;
switch (_that) {
case _AccountSummaryResponseModel() when $default != null:
return $default(_that.customerId,_that.outstandingAmount,_that.creditBalance,_that.currency,_that.overdueInvoiceCount,_that.nextDueDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountSummaryResponseModel implements AccountSummaryResponseModel {
  const _AccountSummaryResponseModel({this.customerId, @NullableDecimalConverter() this.outstandingAmount, @NullableDecimalConverter() this.creditBalance, this.currency, this.overdueInvoiceCount, this.nextDueDate});
  factory _AccountSummaryResponseModel.fromJson(Map<String, dynamic> json) => _$AccountSummaryResponseModelFromJson(json);

@override final  int? customerId;
@override@NullableDecimalConverter() final  double? outstandingAmount;
@override@NullableDecimalConverter() final  double? creditBalance;
@override final  String? currency;
@override final  int? overdueInvoiceCount;
@override final  DateTime? nextDueDate;

/// Create a copy of AccountSummaryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountSummaryResponseModelCopyWith<_AccountSummaryResponseModel> get copyWith => __$AccountSummaryResponseModelCopyWithImpl<_AccountSummaryResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountSummaryResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountSummaryResponseModel&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.outstandingAmount, outstandingAmount) || other.outstandingAmount == outstandingAmount)&&(identical(other.creditBalance, creditBalance) || other.creditBalance == creditBalance)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.overdueInvoiceCount, overdueInvoiceCount) || other.overdueInvoiceCount == overdueInvoiceCount)&&(identical(other.nextDueDate, nextDueDate) || other.nextDueDate == nextDueDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,outstandingAmount,creditBalance,currency,overdueInvoiceCount,nextDueDate);

@override
String toString() {
  return 'AccountSummaryResponseModel(customerId: $customerId, outstandingAmount: $outstandingAmount, creditBalance: $creditBalance, currency: $currency, overdueInvoiceCount: $overdueInvoiceCount, nextDueDate: $nextDueDate)';
}


}

/// @nodoc
abstract mixin class _$AccountSummaryResponseModelCopyWith<$Res> implements $AccountSummaryResponseModelCopyWith<$Res> {
  factory _$AccountSummaryResponseModelCopyWith(_AccountSummaryResponseModel value, $Res Function(_AccountSummaryResponseModel) _then) = __$AccountSummaryResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int? customerId,@NullableDecimalConverter() double? outstandingAmount,@NullableDecimalConverter() double? creditBalance, String? currency, int? overdueInvoiceCount, DateTime? nextDueDate
});




}
/// @nodoc
class __$AccountSummaryResponseModelCopyWithImpl<$Res>
    implements _$AccountSummaryResponseModelCopyWith<$Res> {
  __$AccountSummaryResponseModelCopyWithImpl(this._self, this._then);

  final _AccountSummaryResponseModel _self;
  final $Res Function(_AccountSummaryResponseModel) _then;

/// Create a copy of AccountSummaryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = freezed,Object? outstandingAmount = freezed,Object? creditBalance = freezed,Object? currency = freezed,Object? overdueInvoiceCount = freezed,Object? nextDueDate = freezed,}) {
  return _then(_AccountSummaryResponseModel(
customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,outstandingAmount: freezed == outstandingAmount ? _self.outstandingAmount : outstandingAmount // ignore: cast_nullable_to_non_nullable
as double?,creditBalance: freezed == creditBalance ? _self.creditBalance : creditBalance // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,overdueInvoiceCount: freezed == overdueInvoiceCount ? _self.overdueInvoiceCount : overdueInvoiceCount // ignore: cast_nullable_to_non_nullable
as int?,nextDueDate: freezed == nextDueDate ? _self.nextDueDate : nextDueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$PaymentMethodResponseModel {

 String? get id; String? get name; PaymentMethodKind? get kind; String? get maskedAccount;
/// Create a copy of PaymentMethodResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodResponseModelCopyWith<PaymentMethodResponseModel> get copyWith => _$PaymentMethodResponseModelCopyWithImpl<PaymentMethodResponseModel>(this as PaymentMethodResponseModel, _$identity);

  /// Serializes this PaymentMethodResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethodResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.maskedAccount, maskedAccount) || other.maskedAccount == maskedAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kind,maskedAccount);

@override
String toString() {
  return 'PaymentMethodResponseModel(id: $id, name: $name, kind: $kind, maskedAccount: $maskedAccount)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodResponseModelCopyWith<$Res>  {
  factory $PaymentMethodResponseModelCopyWith(PaymentMethodResponseModel value, $Res Function(PaymentMethodResponseModel) _then) = _$PaymentMethodResponseModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, PaymentMethodKind? kind, String? maskedAccount
});




}
/// @nodoc
class _$PaymentMethodResponseModelCopyWithImpl<$Res>
    implements $PaymentMethodResponseModelCopyWith<$Res> {
  _$PaymentMethodResponseModelCopyWithImpl(this._self, this._then);

  final PaymentMethodResponseModel _self;
  final $Res Function(PaymentMethodResponseModel) _then;

/// Create a copy of PaymentMethodResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? kind = freezed,Object? maskedAccount = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as PaymentMethodKind?,maskedAccount: freezed == maskedAccount ? _self.maskedAccount : maskedAccount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentMethodResponseModel].
extension PaymentMethodResponseModelPatterns on PaymentMethodResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethodResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethodResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethodResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethodResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  PaymentMethodKind? kind,  String? maskedAccount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethodResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.maskedAccount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  PaymentMethodKind? kind,  String? maskedAccount)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodResponseModel():
return $default(_that.id,_that.name,_that.kind,_that.maskedAccount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  PaymentMethodKind? kind,  String? maskedAccount)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.maskedAccount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentMethodResponseModel implements PaymentMethodResponseModel {
  const _PaymentMethodResponseModel({this.id, this.name, this.kind, this.maskedAccount});
  factory _PaymentMethodResponseModel.fromJson(Map<String, dynamic> json) => _$PaymentMethodResponseModelFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  PaymentMethodKind? kind;
@override final  String? maskedAccount;

/// Create a copy of PaymentMethodResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodResponseModelCopyWith<_PaymentMethodResponseModel> get copyWith => __$PaymentMethodResponseModelCopyWithImpl<_PaymentMethodResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethodResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.maskedAccount, maskedAccount) || other.maskedAccount == maskedAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kind,maskedAccount);

@override
String toString() {
  return 'PaymentMethodResponseModel(id: $id, name: $name, kind: $kind, maskedAccount: $maskedAccount)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodResponseModelCopyWith<$Res> implements $PaymentMethodResponseModelCopyWith<$Res> {
  factory _$PaymentMethodResponseModelCopyWith(_PaymentMethodResponseModel value, $Res Function(_PaymentMethodResponseModel) _then) = __$PaymentMethodResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, PaymentMethodKind? kind, String? maskedAccount
});




}
/// @nodoc
class __$PaymentMethodResponseModelCopyWithImpl<$Res>
    implements _$PaymentMethodResponseModelCopyWith<$Res> {
  __$PaymentMethodResponseModelCopyWithImpl(this._self, this._then);

  final _PaymentMethodResponseModel _self;
  final $Res Function(_PaymentMethodResponseModel) _then;

/// Create a copy of PaymentMethodResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? kind = freezed,Object? maskedAccount = freezed,}) {
  return _then(_PaymentMethodResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as PaymentMethodKind?,maskedAccount: freezed == maskedAccount ? _self.maskedAccount : maskedAccount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AutopayResponseModel {

 bool? get enabled; AutopayTiming? get timing; List<int> get connectionIds; PaymentMethodResponseModel? get source;
/// Create a copy of AutopayResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutopayResponseModelCopyWith<AutopayResponseModel> get copyWith => _$AutopayResponseModelCopyWithImpl<AutopayResponseModel>(this as AutopayResponseModel, _$identity);

  /// Serializes this AutopayResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutopayResponseModel&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.timing, timing) || other.timing == timing)&&const DeepCollectionEquality().equals(other.connectionIds, connectionIds)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,timing,const DeepCollectionEquality().hash(connectionIds),source);

@override
String toString() {
  return 'AutopayResponseModel(enabled: $enabled, timing: $timing, connectionIds: $connectionIds, source: $source)';
}


}

/// @nodoc
abstract mixin class $AutopayResponseModelCopyWith<$Res>  {
  factory $AutopayResponseModelCopyWith(AutopayResponseModel value, $Res Function(AutopayResponseModel) _then) = _$AutopayResponseModelCopyWithImpl;
@useResult
$Res call({
 bool? enabled, AutopayTiming? timing, List<int> connectionIds, PaymentMethodResponseModel? source
});


$PaymentMethodResponseModelCopyWith<$Res>? get source;

}
/// @nodoc
class _$AutopayResponseModelCopyWithImpl<$Res>
    implements $AutopayResponseModelCopyWith<$Res> {
  _$AutopayResponseModelCopyWithImpl(this._self, this._then);

  final AutopayResponseModel _self;
  final $Res Function(AutopayResponseModel) _then;

/// Create a copy of AutopayResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = freezed,Object? timing = freezed,Object? connectionIds = null,Object? source = freezed,}) {
  return _then(_self.copyWith(
enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,timing: freezed == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as AutopayTiming?,connectionIds: null == connectionIds ? _self.connectionIds : connectionIds // ignore: cast_nullable_to_non_nullable
as List<int>,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as PaymentMethodResponseModel?,
  ));
}
/// Create a copy of AutopayResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodResponseModelCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $PaymentMethodResponseModelCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// Adds pattern-matching-related methods to [AutopayResponseModel].
extension AutopayResponseModelPatterns on AutopayResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AutopayResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AutopayResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AutopayResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AutopayResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AutopayResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AutopayResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? enabled,  AutopayTiming? timing,  List<int> connectionIds,  PaymentMethodResponseModel? source)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AutopayResponseModel() when $default != null:
return $default(_that.enabled,_that.timing,_that.connectionIds,_that.source);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? enabled,  AutopayTiming? timing,  List<int> connectionIds,  PaymentMethodResponseModel? source)  $default,) {final _that = this;
switch (_that) {
case _AutopayResponseModel():
return $default(_that.enabled,_that.timing,_that.connectionIds,_that.source);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? enabled,  AutopayTiming? timing,  List<int> connectionIds,  PaymentMethodResponseModel? source)?  $default,) {final _that = this;
switch (_that) {
case _AutopayResponseModel() when $default != null:
return $default(_that.enabled,_that.timing,_that.connectionIds,_that.source);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AutopayResponseModel implements AutopayResponseModel {
  const _AutopayResponseModel({this.enabled, this.timing, final  List<int> connectionIds = const <int>[], this.source}): _connectionIds = connectionIds;
  factory _AutopayResponseModel.fromJson(Map<String, dynamic> json) => _$AutopayResponseModelFromJson(json);

@override final  bool? enabled;
@override final  AutopayTiming? timing;
 final  List<int> _connectionIds;
@override@JsonKey() List<int> get connectionIds {
  if (_connectionIds is EqualUnmodifiableListView) return _connectionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_connectionIds);
}

@override final  PaymentMethodResponseModel? source;

/// Create a copy of AutopayResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutopayResponseModelCopyWith<_AutopayResponseModel> get copyWith => __$AutopayResponseModelCopyWithImpl<_AutopayResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AutopayResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutopayResponseModel&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.timing, timing) || other.timing == timing)&&const DeepCollectionEquality().equals(other._connectionIds, _connectionIds)&&(identical(other.source, source) || other.source == source));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,enabled,timing,const DeepCollectionEquality().hash(_connectionIds),source);

@override
String toString() {
  return 'AutopayResponseModel(enabled: $enabled, timing: $timing, connectionIds: $connectionIds, source: $source)';
}


}

/// @nodoc
abstract mixin class _$AutopayResponseModelCopyWith<$Res> implements $AutopayResponseModelCopyWith<$Res> {
  factory _$AutopayResponseModelCopyWith(_AutopayResponseModel value, $Res Function(_AutopayResponseModel) _then) = __$AutopayResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool? enabled, AutopayTiming? timing, List<int> connectionIds, PaymentMethodResponseModel? source
});


@override $PaymentMethodResponseModelCopyWith<$Res>? get source;

}
/// @nodoc
class __$AutopayResponseModelCopyWithImpl<$Res>
    implements _$AutopayResponseModelCopyWith<$Res> {
  __$AutopayResponseModelCopyWithImpl(this._self, this._then);

  final _AutopayResponseModel _self;
  final $Res Function(_AutopayResponseModel) _then;

/// Create a copy of AutopayResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = freezed,Object? timing = freezed,Object? connectionIds = null,Object? source = freezed,}) {
  return _then(_AutopayResponseModel(
enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,timing: freezed == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as AutopayTiming?,connectionIds: null == connectionIds ? _self._connectionIds : connectionIds // ignore: cast_nullable_to_non_nullable
as List<int>,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as PaymentMethodResponseModel?,
  ));
}

/// Create a copy of AutopayResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodResponseModelCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $PaymentMethodResponseModelCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// @nodoc
mixin _$ProrationQuoteResponseModel {

 int? get daysLeftInCycle;@NullableDecimalConverter() double? get creditForUnusedDays;@NullableDecimalConverter() double? get newPlanRemainder;@NullableDecimalConverter() double? get dueToday;@NullableDecimalConverter() double? get nextCycleAmount; String? get currency;
/// Create a copy of ProrationQuoteResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProrationQuoteResponseModelCopyWith<ProrationQuoteResponseModel> get copyWith => _$ProrationQuoteResponseModelCopyWithImpl<ProrationQuoteResponseModel>(this as ProrationQuoteResponseModel, _$identity);

  /// Serializes this ProrationQuoteResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProrationQuoteResponseModel&&(identical(other.daysLeftInCycle, daysLeftInCycle) || other.daysLeftInCycle == daysLeftInCycle)&&(identical(other.creditForUnusedDays, creditForUnusedDays) || other.creditForUnusedDays == creditForUnusedDays)&&(identical(other.newPlanRemainder, newPlanRemainder) || other.newPlanRemainder == newPlanRemainder)&&(identical(other.dueToday, dueToday) || other.dueToday == dueToday)&&(identical(other.nextCycleAmount, nextCycleAmount) || other.nextCycleAmount == nextCycleAmount)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,daysLeftInCycle,creditForUnusedDays,newPlanRemainder,dueToday,nextCycleAmount,currency);

@override
String toString() {
  return 'ProrationQuoteResponseModel(daysLeftInCycle: $daysLeftInCycle, creditForUnusedDays: $creditForUnusedDays, newPlanRemainder: $newPlanRemainder, dueToday: $dueToday, nextCycleAmount: $nextCycleAmount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $ProrationQuoteResponseModelCopyWith<$Res>  {
  factory $ProrationQuoteResponseModelCopyWith(ProrationQuoteResponseModel value, $Res Function(ProrationQuoteResponseModel) _then) = _$ProrationQuoteResponseModelCopyWithImpl;
@useResult
$Res call({
 int? daysLeftInCycle,@NullableDecimalConverter() double? creditForUnusedDays,@NullableDecimalConverter() double? newPlanRemainder,@NullableDecimalConverter() double? dueToday,@NullableDecimalConverter() double? nextCycleAmount, String? currency
});




}
/// @nodoc
class _$ProrationQuoteResponseModelCopyWithImpl<$Res>
    implements $ProrationQuoteResponseModelCopyWith<$Res> {
  _$ProrationQuoteResponseModelCopyWithImpl(this._self, this._then);

  final ProrationQuoteResponseModel _self;
  final $Res Function(ProrationQuoteResponseModel) _then;

/// Create a copy of ProrationQuoteResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? daysLeftInCycle = freezed,Object? creditForUnusedDays = freezed,Object? newPlanRemainder = freezed,Object? dueToday = freezed,Object? nextCycleAmount = freezed,Object? currency = freezed,}) {
  return _then(_self.copyWith(
daysLeftInCycle: freezed == daysLeftInCycle ? _self.daysLeftInCycle : daysLeftInCycle // ignore: cast_nullable_to_non_nullable
as int?,creditForUnusedDays: freezed == creditForUnusedDays ? _self.creditForUnusedDays : creditForUnusedDays // ignore: cast_nullable_to_non_nullable
as double?,newPlanRemainder: freezed == newPlanRemainder ? _self.newPlanRemainder : newPlanRemainder // ignore: cast_nullable_to_non_nullable
as double?,dueToday: freezed == dueToday ? _self.dueToday : dueToday // ignore: cast_nullable_to_non_nullable
as double?,nextCycleAmount: freezed == nextCycleAmount ? _self.nextCycleAmount : nextCycleAmount // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProrationQuoteResponseModel].
extension ProrationQuoteResponseModelPatterns on ProrationQuoteResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProrationQuoteResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProrationQuoteResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProrationQuoteResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ProrationQuoteResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProrationQuoteResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProrationQuoteResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? daysLeftInCycle, @NullableDecimalConverter()  double? creditForUnusedDays, @NullableDecimalConverter()  double? newPlanRemainder, @NullableDecimalConverter()  double? dueToday, @NullableDecimalConverter()  double? nextCycleAmount,  String? currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProrationQuoteResponseModel() when $default != null:
return $default(_that.daysLeftInCycle,_that.creditForUnusedDays,_that.newPlanRemainder,_that.dueToday,_that.nextCycleAmount,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? daysLeftInCycle, @NullableDecimalConverter()  double? creditForUnusedDays, @NullableDecimalConverter()  double? newPlanRemainder, @NullableDecimalConverter()  double? dueToday, @NullableDecimalConverter()  double? nextCycleAmount,  String? currency)  $default,) {final _that = this;
switch (_that) {
case _ProrationQuoteResponseModel():
return $default(_that.daysLeftInCycle,_that.creditForUnusedDays,_that.newPlanRemainder,_that.dueToday,_that.nextCycleAmount,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? daysLeftInCycle, @NullableDecimalConverter()  double? creditForUnusedDays, @NullableDecimalConverter()  double? newPlanRemainder, @NullableDecimalConverter()  double? dueToday, @NullableDecimalConverter()  double? nextCycleAmount,  String? currency)?  $default,) {final _that = this;
switch (_that) {
case _ProrationQuoteResponseModel() when $default != null:
return $default(_that.daysLeftInCycle,_that.creditForUnusedDays,_that.newPlanRemainder,_that.dueToday,_that.nextCycleAmount,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProrationQuoteResponseModel implements ProrationQuoteResponseModel {
  const _ProrationQuoteResponseModel({this.daysLeftInCycle, @NullableDecimalConverter() this.creditForUnusedDays, @NullableDecimalConverter() this.newPlanRemainder, @NullableDecimalConverter() this.dueToday, @NullableDecimalConverter() this.nextCycleAmount, this.currency});
  factory _ProrationQuoteResponseModel.fromJson(Map<String, dynamic> json) => _$ProrationQuoteResponseModelFromJson(json);

@override final  int? daysLeftInCycle;
@override@NullableDecimalConverter() final  double? creditForUnusedDays;
@override@NullableDecimalConverter() final  double? newPlanRemainder;
@override@NullableDecimalConverter() final  double? dueToday;
@override@NullableDecimalConverter() final  double? nextCycleAmount;
@override final  String? currency;

/// Create a copy of ProrationQuoteResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProrationQuoteResponseModelCopyWith<_ProrationQuoteResponseModel> get copyWith => __$ProrationQuoteResponseModelCopyWithImpl<_ProrationQuoteResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProrationQuoteResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProrationQuoteResponseModel&&(identical(other.daysLeftInCycle, daysLeftInCycle) || other.daysLeftInCycle == daysLeftInCycle)&&(identical(other.creditForUnusedDays, creditForUnusedDays) || other.creditForUnusedDays == creditForUnusedDays)&&(identical(other.newPlanRemainder, newPlanRemainder) || other.newPlanRemainder == newPlanRemainder)&&(identical(other.dueToday, dueToday) || other.dueToday == dueToday)&&(identical(other.nextCycleAmount, nextCycleAmount) || other.nextCycleAmount == nextCycleAmount)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,daysLeftInCycle,creditForUnusedDays,newPlanRemainder,dueToday,nextCycleAmount,currency);

@override
String toString() {
  return 'ProrationQuoteResponseModel(daysLeftInCycle: $daysLeftInCycle, creditForUnusedDays: $creditForUnusedDays, newPlanRemainder: $newPlanRemainder, dueToday: $dueToday, nextCycleAmount: $nextCycleAmount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$ProrationQuoteResponseModelCopyWith<$Res> implements $ProrationQuoteResponseModelCopyWith<$Res> {
  factory _$ProrationQuoteResponseModelCopyWith(_ProrationQuoteResponseModel value, $Res Function(_ProrationQuoteResponseModel) _then) = __$ProrationQuoteResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int? daysLeftInCycle,@NullableDecimalConverter() double? creditForUnusedDays,@NullableDecimalConverter() double? newPlanRemainder,@NullableDecimalConverter() double? dueToday,@NullableDecimalConverter() double? nextCycleAmount, String? currency
});




}
/// @nodoc
class __$ProrationQuoteResponseModelCopyWithImpl<$Res>
    implements _$ProrationQuoteResponseModelCopyWith<$Res> {
  __$ProrationQuoteResponseModelCopyWithImpl(this._self, this._then);

  final _ProrationQuoteResponseModel _self;
  final $Res Function(_ProrationQuoteResponseModel) _then;

/// Create a copy of ProrationQuoteResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? daysLeftInCycle = freezed,Object? creditForUnusedDays = freezed,Object? newPlanRemainder = freezed,Object? dueToday = freezed,Object? nextCycleAmount = freezed,Object? currency = freezed,}) {
  return _then(_ProrationQuoteResponseModel(
daysLeftInCycle: freezed == daysLeftInCycle ? _self.daysLeftInCycle : daysLeftInCycle // ignore: cast_nullable_to_non_nullable
as int?,creditForUnusedDays: freezed == creditForUnusedDays ? _self.creditForUnusedDays : creditForUnusedDays // ignore: cast_nullable_to_non_nullable
as double?,newPlanRemainder: freezed == newPlanRemainder ? _self.newPlanRemainder : newPlanRemainder // ignore: cast_nullable_to_non_nullable
as double?,dueToday: freezed == dueToday ? _self.dueToday : dueToday // ignore: cast_nullable_to_non_nullable
as double?,nextCycleAmount: freezed == nextCycleAmount ? _self.nextCycleAmount : nextCycleAmount // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PaymentReceiptResponseModel {

 String? get receiptNumber;@NullableDecimalConverter() double? get amount; String? get currency; String? get channel; String? get connectionLabel; DateTime? get paidAt; DateTime? get serviceRunsTo;
/// Create a copy of PaymentReceiptResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentReceiptResponseModelCopyWith<PaymentReceiptResponseModel> get copyWith => _$PaymentReceiptResponseModelCopyWithImpl<PaymentReceiptResponseModel>(this as PaymentReceiptResponseModel, _$identity);

  /// Serializes this PaymentReceiptResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentReceiptResponseModel&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.connectionLabel, connectionLabel) || other.connectionLabel == connectionLabel)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.serviceRunsTo, serviceRunsTo) || other.serviceRunsTo == serviceRunsTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiptNumber,amount,currency,channel,connectionLabel,paidAt,serviceRunsTo);

@override
String toString() {
  return 'PaymentReceiptResponseModel(receiptNumber: $receiptNumber, amount: $amount, currency: $currency, channel: $channel, connectionLabel: $connectionLabel, paidAt: $paidAt, serviceRunsTo: $serviceRunsTo)';
}


}

/// @nodoc
abstract mixin class $PaymentReceiptResponseModelCopyWith<$Res>  {
  factory $PaymentReceiptResponseModelCopyWith(PaymentReceiptResponseModel value, $Res Function(PaymentReceiptResponseModel) _then) = _$PaymentReceiptResponseModelCopyWithImpl;
@useResult
$Res call({
 String? receiptNumber,@NullableDecimalConverter() double? amount, String? currency, String? channel, String? connectionLabel, DateTime? paidAt, DateTime? serviceRunsTo
});




}
/// @nodoc
class _$PaymentReceiptResponseModelCopyWithImpl<$Res>
    implements $PaymentReceiptResponseModelCopyWith<$Res> {
  _$PaymentReceiptResponseModelCopyWithImpl(this._self, this._then);

  final PaymentReceiptResponseModel _self;
  final $Res Function(PaymentReceiptResponseModel) _then;

/// Create a copy of PaymentReceiptResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiptNumber = freezed,Object? amount = freezed,Object? currency = freezed,Object? channel = freezed,Object? connectionLabel = freezed,Object? paidAt = freezed,Object? serviceRunsTo = freezed,}) {
  return _then(_self.copyWith(
receiptNumber: freezed == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String?,connectionLabel: freezed == connectionLabel ? _self.connectionLabel : connectionLabel // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,serviceRunsTo: freezed == serviceRunsTo ? _self.serviceRunsTo : serviceRunsTo // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentReceiptResponseModel].
extension PaymentReceiptResponseModelPatterns on PaymentReceiptResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentReceiptResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentReceiptResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentReceiptResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentReceiptResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentReceiptResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentReceiptResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? receiptNumber, @NullableDecimalConverter()  double? amount,  String? currency,  String? channel,  String? connectionLabel,  DateTime? paidAt,  DateTime? serviceRunsTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentReceiptResponseModel() when $default != null:
return $default(_that.receiptNumber,_that.amount,_that.currency,_that.channel,_that.connectionLabel,_that.paidAt,_that.serviceRunsTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? receiptNumber, @NullableDecimalConverter()  double? amount,  String? currency,  String? channel,  String? connectionLabel,  DateTime? paidAt,  DateTime? serviceRunsTo)  $default,) {final _that = this;
switch (_that) {
case _PaymentReceiptResponseModel():
return $default(_that.receiptNumber,_that.amount,_that.currency,_that.channel,_that.connectionLabel,_that.paidAt,_that.serviceRunsTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? receiptNumber, @NullableDecimalConverter()  double? amount,  String? currency,  String? channel,  String? connectionLabel,  DateTime? paidAt,  DateTime? serviceRunsTo)?  $default,) {final _that = this;
switch (_that) {
case _PaymentReceiptResponseModel() when $default != null:
return $default(_that.receiptNumber,_that.amount,_that.currency,_that.channel,_that.connectionLabel,_that.paidAt,_that.serviceRunsTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentReceiptResponseModel implements PaymentReceiptResponseModel {
  const _PaymentReceiptResponseModel({this.receiptNumber, @NullableDecimalConverter() this.amount, this.currency, this.channel, this.connectionLabel, this.paidAt, this.serviceRunsTo});
  factory _PaymentReceiptResponseModel.fromJson(Map<String, dynamic> json) => _$PaymentReceiptResponseModelFromJson(json);

@override final  String? receiptNumber;
@override@NullableDecimalConverter() final  double? amount;
@override final  String? currency;
@override final  String? channel;
@override final  String? connectionLabel;
@override final  DateTime? paidAt;
@override final  DateTime? serviceRunsTo;

/// Create a copy of PaymentReceiptResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentReceiptResponseModelCopyWith<_PaymentReceiptResponseModel> get copyWith => __$PaymentReceiptResponseModelCopyWithImpl<_PaymentReceiptResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentReceiptResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentReceiptResponseModel&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.connectionLabel, connectionLabel) || other.connectionLabel == connectionLabel)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.serviceRunsTo, serviceRunsTo) || other.serviceRunsTo == serviceRunsTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiptNumber,amount,currency,channel,connectionLabel,paidAt,serviceRunsTo);

@override
String toString() {
  return 'PaymentReceiptResponseModel(receiptNumber: $receiptNumber, amount: $amount, currency: $currency, channel: $channel, connectionLabel: $connectionLabel, paidAt: $paidAt, serviceRunsTo: $serviceRunsTo)';
}


}

/// @nodoc
abstract mixin class _$PaymentReceiptResponseModelCopyWith<$Res> implements $PaymentReceiptResponseModelCopyWith<$Res> {
  factory _$PaymentReceiptResponseModelCopyWith(_PaymentReceiptResponseModel value, $Res Function(_PaymentReceiptResponseModel) _then) = __$PaymentReceiptResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? receiptNumber,@NullableDecimalConverter() double? amount, String? currency, String? channel, String? connectionLabel, DateTime? paidAt, DateTime? serviceRunsTo
});




}
/// @nodoc
class __$PaymentReceiptResponseModelCopyWithImpl<$Res>
    implements _$PaymentReceiptResponseModelCopyWith<$Res> {
  __$PaymentReceiptResponseModelCopyWithImpl(this._self, this._then);

  final _PaymentReceiptResponseModel _self;
  final $Res Function(_PaymentReceiptResponseModel) _then;

/// Create a copy of PaymentReceiptResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiptNumber = freezed,Object? amount = freezed,Object? currency = freezed,Object? channel = freezed,Object? connectionLabel = freezed,Object? paidAt = freezed,Object? serviceRunsTo = freezed,}) {
  return _then(_PaymentReceiptResponseModel(
receiptNumber: freezed == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String?,connectionLabel: freezed == connectionLabel ? _self.connectionLabel : connectionLabel // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,serviceRunsTo: freezed == serviceRunsTo ? _self.serviceRunsTo : serviceRunsTo // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$InvoiceResponseModel {

 int? get id; String? get invoiceCode; int? get connectionId; int? get customerId; InvoiceType? get invoiceType; InvoiceStatus? get status; DateTime? get servicePeriodStart; DateTime? get servicePeriodEnd; DateTime? get invoiceDate; DateTime? get dueDate;@NullableDecimalConverter() double? get amount;@NullableDecimalConverter() double? get paidAmount;@NullableDecimalConverter() double? get creditAppliedAmount; String? get currency; DateTime? get paidAt; String? get notes; List<InvoiceLineResponseModel> get lines;
/// Create a copy of InvoiceResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceResponseModelCopyWith<InvoiceResponseModel> get copyWith => _$InvoiceResponseModelCopyWithImpl<InvoiceResponseModel>(this as InvoiceResponseModel, _$identity);

  /// Serializes this InvoiceResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceCode, invoiceCode) || other.invoiceCode == invoiceCode)&&(identical(other.connectionId, connectionId) || other.connectionId == connectionId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.invoiceType, invoiceType) || other.invoiceType == invoiceType)&&(identical(other.status, status) || other.status == status)&&(identical(other.servicePeriodStart, servicePeriodStart) || other.servicePeriodStart == servicePeriodStart)&&(identical(other.servicePeriodEnd, servicePeriodEnd) || other.servicePeriodEnd == servicePeriodEnd)&&(identical(other.invoiceDate, invoiceDate) || other.invoiceDate == invoiceDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.creditAppliedAmount, creditAppliedAmount) || other.creditAppliedAmount == creditAppliedAmount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.lines, lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceCode,connectionId,customerId,invoiceType,status,servicePeriodStart,servicePeriodEnd,invoiceDate,dueDate,amount,paidAmount,creditAppliedAmount,currency,paidAt,notes,const DeepCollectionEquality().hash(lines));

@override
String toString() {
  return 'InvoiceResponseModel(id: $id, invoiceCode: $invoiceCode, connectionId: $connectionId, customerId: $customerId, invoiceType: $invoiceType, status: $status, servicePeriodStart: $servicePeriodStart, servicePeriodEnd: $servicePeriodEnd, invoiceDate: $invoiceDate, dueDate: $dueDate, amount: $amount, paidAmount: $paidAmount, creditAppliedAmount: $creditAppliedAmount, currency: $currency, paidAt: $paidAt, notes: $notes, lines: $lines)';
}


}

/// @nodoc
abstract mixin class $InvoiceResponseModelCopyWith<$Res>  {
  factory $InvoiceResponseModelCopyWith(InvoiceResponseModel value, $Res Function(InvoiceResponseModel) _then) = _$InvoiceResponseModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? invoiceCode, int? connectionId, int? customerId, InvoiceType? invoiceType, InvoiceStatus? status, DateTime? servicePeriodStart, DateTime? servicePeriodEnd, DateTime? invoiceDate, DateTime? dueDate,@NullableDecimalConverter() double? amount,@NullableDecimalConverter() double? paidAmount,@NullableDecimalConverter() double? creditAppliedAmount, String? currency, DateTime? paidAt, String? notes, List<InvoiceLineResponseModel> lines
});




}
/// @nodoc
class _$InvoiceResponseModelCopyWithImpl<$Res>
    implements $InvoiceResponseModelCopyWith<$Res> {
  _$InvoiceResponseModelCopyWithImpl(this._self, this._then);

  final InvoiceResponseModel _self;
  final $Res Function(InvoiceResponseModel) _then;

/// Create a copy of InvoiceResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? invoiceCode = freezed,Object? connectionId = freezed,Object? customerId = freezed,Object? invoiceType = freezed,Object? status = freezed,Object? servicePeriodStart = freezed,Object? servicePeriodEnd = freezed,Object? invoiceDate = freezed,Object? dueDate = freezed,Object? amount = freezed,Object? paidAmount = freezed,Object? creditAppliedAmount = freezed,Object? currency = freezed,Object? paidAt = freezed,Object? notes = freezed,Object? lines = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,invoiceCode: freezed == invoiceCode ? _self.invoiceCode : invoiceCode // ignore: cast_nullable_to_non_nullable
as String?,connectionId: freezed == connectionId ? _self.connectionId : connectionId // ignore: cast_nullable_to_non_nullable
as int?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,invoiceType: freezed == invoiceType ? _self.invoiceType : invoiceType // ignore: cast_nullable_to_non_nullable
as InvoiceType?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InvoiceStatus?,servicePeriodStart: freezed == servicePeriodStart ? _self.servicePeriodStart : servicePeriodStart // ignore: cast_nullable_to_non_nullable
as DateTime?,servicePeriodEnd: freezed == servicePeriodEnd ? _self.servicePeriodEnd : servicePeriodEnd // ignore: cast_nullable_to_non_nullable
as DateTime?,invoiceDate: freezed == invoiceDate ? _self.invoiceDate : invoiceDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as double?,creditAppliedAmount: freezed == creditAppliedAmount ? _self.creditAppliedAmount : creditAppliedAmount // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<InvoiceLineResponseModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceResponseModel].
extension InvoiceResponseModelPatterns on InvoiceResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? invoiceCode,  int? connectionId,  int? customerId,  InvoiceType? invoiceType,  InvoiceStatus? status,  DateTime? servicePeriodStart,  DateTime? servicePeriodEnd,  DateTime? invoiceDate,  DateTime? dueDate, @NullableDecimalConverter()  double? amount, @NullableDecimalConverter()  double? paidAmount, @NullableDecimalConverter()  double? creditAppliedAmount,  String? currency,  DateTime? paidAt,  String? notes,  List<InvoiceLineResponseModel> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceResponseModel() when $default != null:
return $default(_that.id,_that.invoiceCode,_that.connectionId,_that.customerId,_that.invoiceType,_that.status,_that.servicePeriodStart,_that.servicePeriodEnd,_that.invoiceDate,_that.dueDate,_that.amount,_that.paidAmount,_that.creditAppliedAmount,_that.currency,_that.paidAt,_that.notes,_that.lines);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? invoiceCode,  int? connectionId,  int? customerId,  InvoiceType? invoiceType,  InvoiceStatus? status,  DateTime? servicePeriodStart,  DateTime? servicePeriodEnd,  DateTime? invoiceDate,  DateTime? dueDate, @NullableDecimalConverter()  double? amount, @NullableDecimalConverter()  double? paidAmount, @NullableDecimalConverter()  double? creditAppliedAmount,  String? currency,  DateTime? paidAt,  String? notes,  List<InvoiceLineResponseModel> lines)  $default,) {final _that = this;
switch (_that) {
case _InvoiceResponseModel():
return $default(_that.id,_that.invoiceCode,_that.connectionId,_that.customerId,_that.invoiceType,_that.status,_that.servicePeriodStart,_that.servicePeriodEnd,_that.invoiceDate,_that.dueDate,_that.amount,_that.paidAmount,_that.creditAppliedAmount,_that.currency,_that.paidAt,_that.notes,_that.lines);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? invoiceCode,  int? connectionId,  int? customerId,  InvoiceType? invoiceType,  InvoiceStatus? status,  DateTime? servicePeriodStart,  DateTime? servicePeriodEnd,  DateTime? invoiceDate,  DateTime? dueDate, @NullableDecimalConverter()  double? amount, @NullableDecimalConverter()  double? paidAmount, @NullableDecimalConverter()  double? creditAppliedAmount,  String? currency,  DateTime? paidAt,  String? notes,  List<InvoiceLineResponseModel> lines)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceResponseModel() when $default != null:
return $default(_that.id,_that.invoiceCode,_that.connectionId,_that.customerId,_that.invoiceType,_that.status,_that.servicePeriodStart,_that.servicePeriodEnd,_that.invoiceDate,_that.dueDate,_that.amount,_that.paidAmount,_that.creditAppliedAmount,_that.currency,_that.paidAt,_that.notes,_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvoiceResponseModel implements InvoiceResponseModel {
  const _InvoiceResponseModel({this.id, this.invoiceCode, this.connectionId, this.customerId, this.invoiceType, this.status, this.servicePeriodStart, this.servicePeriodEnd, this.invoiceDate, this.dueDate, @NullableDecimalConverter() this.amount, @NullableDecimalConverter() this.paidAmount, @NullableDecimalConverter() this.creditAppliedAmount, this.currency, this.paidAt, this.notes, final  List<InvoiceLineResponseModel> lines = const <InvoiceLineResponseModel>[]}): _lines = lines;
  factory _InvoiceResponseModel.fromJson(Map<String, dynamic> json) => _$InvoiceResponseModelFromJson(json);

@override final  int? id;
@override final  String? invoiceCode;
@override final  int? connectionId;
@override final  int? customerId;
@override final  InvoiceType? invoiceType;
@override final  InvoiceStatus? status;
@override final  DateTime? servicePeriodStart;
@override final  DateTime? servicePeriodEnd;
@override final  DateTime? invoiceDate;
@override final  DateTime? dueDate;
@override@NullableDecimalConverter() final  double? amount;
@override@NullableDecimalConverter() final  double? paidAmount;
@override@NullableDecimalConverter() final  double? creditAppliedAmount;
@override final  String? currency;
@override final  DateTime? paidAt;
@override final  String? notes;
 final  List<InvoiceLineResponseModel> _lines;
@override@JsonKey() List<InvoiceLineResponseModel> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of InvoiceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceResponseModelCopyWith<_InvoiceResponseModel> get copyWith => __$InvoiceResponseModelCopyWithImpl<_InvoiceResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoiceResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceCode, invoiceCode) || other.invoiceCode == invoiceCode)&&(identical(other.connectionId, connectionId) || other.connectionId == connectionId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.invoiceType, invoiceType) || other.invoiceType == invoiceType)&&(identical(other.status, status) || other.status == status)&&(identical(other.servicePeriodStart, servicePeriodStart) || other.servicePeriodStart == servicePeriodStart)&&(identical(other.servicePeriodEnd, servicePeriodEnd) || other.servicePeriodEnd == servicePeriodEnd)&&(identical(other.invoiceDate, invoiceDate) || other.invoiceDate == invoiceDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.creditAppliedAmount, creditAppliedAmount) || other.creditAppliedAmount == creditAppliedAmount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other._lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceCode,connectionId,customerId,invoiceType,status,servicePeriodStart,servicePeriodEnd,invoiceDate,dueDate,amount,paidAmount,creditAppliedAmount,currency,paidAt,notes,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'InvoiceResponseModel(id: $id, invoiceCode: $invoiceCode, connectionId: $connectionId, customerId: $customerId, invoiceType: $invoiceType, status: $status, servicePeriodStart: $servicePeriodStart, servicePeriodEnd: $servicePeriodEnd, invoiceDate: $invoiceDate, dueDate: $dueDate, amount: $amount, paidAmount: $paidAmount, creditAppliedAmount: $creditAppliedAmount, currency: $currency, paidAt: $paidAt, notes: $notes, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$InvoiceResponseModelCopyWith<$Res> implements $InvoiceResponseModelCopyWith<$Res> {
  factory _$InvoiceResponseModelCopyWith(_InvoiceResponseModel value, $Res Function(_InvoiceResponseModel) _then) = __$InvoiceResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? invoiceCode, int? connectionId, int? customerId, InvoiceType? invoiceType, InvoiceStatus? status, DateTime? servicePeriodStart, DateTime? servicePeriodEnd, DateTime? invoiceDate, DateTime? dueDate,@NullableDecimalConverter() double? amount,@NullableDecimalConverter() double? paidAmount,@NullableDecimalConverter() double? creditAppliedAmount, String? currency, DateTime? paidAt, String? notes, List<InvoiceLineResponseModel> lines
});




}
/// @nodoc
class __$InvoiceResponseModelCopyWithImpl<$Res>
    implements _$InvoiceResponseModelCopyWith<$Res> {
  __$InvoiceResponseModelCopyWithImpl(this._self, this._then);

  final _InvoiceResponseModel _self;
  final $Res Function(_InvoiceResponseModel) _then;

/// Create a copy of InvoiceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? invoiceCode = freezed,Object? connectionId = freezed,Object? customerId = freezed,Object? invoiceType = freezed,Object? status = freezed,Object? servicePeriodStart = freezed,Object? servicePeriodEnd = freezed,Object? invoiceDate = freezed,Object? dueDate = freezed,Object? amount = freezed,Object? paidAmount = freezed,Object? creditAppliedAmount = freezed,Object? currency = freezed,Object? paidAt = freezed,Object? notes = freezed,Object? lines = null,}) {
  return _then(_InvoiceResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,invoiceCode: freezed == invoiceCode ? _self.invoiceCode : invoiceCode // ignore: cast_nullable_to_non_nullable
as String?,connectionId: freezed == connectionId ? _self.connectionId : connectionId // ignore: cast_nullable_to_non_nullable
as int?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,invoiceType: freezed == invoiceType ? _self.invoiceType : invoiceType // ignore: cast_nullable_to_non_nullable
as InvoiceType?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InvoiceStatus?,servicePeriodStart: freezed == servicePeriodStart ? _self.servicePeriodStart : servicePeriodStart // ignore: cast_nullable_to_non_nullable
as DateTime?,servicePeriodEnd: freezed == servicePeriodEnd ? _self.servicePeriodEnd : servicePeriodEnd // ignore: cast_nullable_to_non_nullable
as DateTime?,invoiceDate: freezed == invoiceDate ? _self.invoiceDate : invoiceDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as double?,creditAppliedAmount: freezed == creditAppliedAmount ? _self.creditAppliedAmount : creditAppliedAmount // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<InvoiceLineResponseModel>,
  ));
}


}


/// @nodoc
mixin _$InvoiceLineResponseModel {

 int? get id; InvoiceLineType? get lineType; String? get description;@NullableDecimalConverter() double? get quantity;@NullableDecimalConverter() double? get unitAmount;@NullableDecimalConverter() double? get amount; String? get reason;
/// Create a copy of InvoiceLineResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceLineResponseModelCopyWith<InvoiceLineResponseModel> get copyWith => _$InvoiceLineResponseModelCopyWithImpl<InvoiceLineResponseModel>(this as InvoiceLineResponseModel, _$identity);

  /// Serializes this InvoiceLineResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceLineResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.lineType, lineType) || other.lineType == lineType)&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitAmount, unitAmount) || other.unitAmount == unitAmount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lineType,description,quantity,unitAmount,amount,reason);

@override
String toString() {
  return 'InvoiceLineResponseModel(id: $id, lineType: $lineType, description: $description, quantity: $quantity, unitAmount: $unitAmount, amount: $amount, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $InvoiceLineResponseModelCopyWith<$Res>  {
  factory $InvoiceLineResponseModelCopyWith(InvoiceLineResponseModel value, $Res Function(InvoiceLineResponseModel) _then) = _$InvoiceLineResponseModelCopyWithImpl;
@useResult
$Res call({
 int? id, InvoiceLineType? lineType, String? description,@NullableDecimalConverter() double? quantity,@NullableDecimalConverter() double? unitAmount,@NullableDecimalConverter() double? amount, String? reason
});




}
/// @nodoc
class _$InvoiceLineResponseModelCopyWithImpl<$Res>
    implements $InvoiceLineResponseModelCopyWith<$Res> {
  _$InvoiceLineResponseModelCopyWithImpl(this._self, this._then);

  final InvoiceLineResponseModel _self;
  final $Res Function(InvoiceLineResponseModel) _then;

/// Create a copy of InvoiceLineResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? lineType = freezed,Object? description = freezed,Object? quantity = freezed,Object? unitAmount = freezed,Object? amount = freezed,Object? reason = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,lineType: freezed == lineType ? _self.lineType : lineType // ignore: cast_nullable_to_non_nullable
as InvoiceLineType?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,unitAmount: freezed == unitAmount ? _self.unitAmount : unitAmount // ignore: cast_nullable_to_non_nullable
as double?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceLineResponseModel].
extension InvoiceLineResponseModelPatterns on InvoiceLineResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceLineResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceLineResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceLineResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceLineResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceLineResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceLineResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  InvoiceLineType? lineType,  String? description, @NullableDecimalConverter()  double? quantity, @NullableDecimalConverter()  double? unitAmount, @NullableDecimalConverter()  double? amount,  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceLineResponseModel() when $default != null:
return $default(_that.id,_that.lineType,_that.description,_that.quantity,_that.unitAmount,_that.amount,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  InvoiceLineType? lineType,  String? description, @NullableDecimalConverter()  double? quantity, @NullableDecimalConverter()  double? unitAmount, @NullableDecimalConverter()  double? amount,  String? reason)  $default,) {final _that = this;
switch (_that) {
case _InvoiceLineResponseModel():
return $default(_that.id,_that.lineType,_that.description,_that.quantity,_that.unitAmount,_that.amount,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  InvoiceLineType? lineType,  String? description, @NullableDecimalConverter()  double? quantity, @NullableDecimalConverter()  double? unitAmount, @NullableDecimalConverter()  double? amount,  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceLineResponseModel() when $default != null:
return $default(_that.id,_that.lineType,_that.description,_that.quantity,_that.unitAmount,_that.amount,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvoiceLineResponseModel implements InvoiceLineResponseModel {
  const _InvoiceLineResponseModel({this.id, this.lineType, this.description, @NullableDecimalConverter() this.quantity, @NullableDecimalConverter() this.unitAmount, @NullableDecimalConverter() this.amount, this.reason});
  factory _InvoiceLineResponseModel.fromJson(Map<String, dynamic> json) => _$InvoiceLineResponseModelFromJson(json);

@override final  int? id;
@override final  InvoiceLineType? lineType;
@override final  String? description;
@override@NullableDecimalConverter() final  double? quantity;
@override@NullableDecimalConverter() final  double? unitAmount;
@override@NullableDecimalConverter() final  double? amount;
@override final  String? reason;

/// Create a copy of InvoiceLineResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceLineResponseModelCopyWith<_InvoiceLineResponseModel> get copyWith => __$InvoiceLineResponseModelCopyWithImpl<_InvoiceLineResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoiceLineResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceLineResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.lineType, lineType) || other.lineType == lineType)&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitAmount, unitAmount) || other.unitAmount == unitAmount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lineType,description,quantity,unitAmount,amount,reason);

@override
String toString() {
  return 'InvoiceLineResponseModel(id: $id, lineType: $lineType, description: $description, quantity: $quantity, unitAmount: $unitAmount, amount: $amount, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$InvoiceLineResponseModelCopyWith<$Res> implements $InvoiceLineResponseModelCopyWith<$Res> {
  factory _$InvoiceLineResponseModelCopyWith(_InvoiceLineResponseModel value, $Res Function(_InvoiceLineResponseModel) _then) = __$InvoiceLineResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, InvoiceLineType? lineType, String? description,@NullableDecimalConverter() double? quantity,@NullableDecimalConverter() double? unitAmount,@NullableDecimalConverter() double? amount, String? reason
});




}
/// @nodoc
class __$InvoiceLineResponseModelCopyWithImpl<$Res>
    implements _$InvoiceLineResponseModelCopyWith<$Res> {
  __$InvoiceLineResponseModelCopyWithImpl(this._self, this._then);

  final _InvoiceLineResponseModel _self;
  final $Res Function(_InvoiceLineResponseModel) _then;

/// Create a copy of InvoiceLineResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? lineType = freezed,Object? description = freezed,Object? quantity = freezed,Object? unitAmount = freezed,Object? amount = freezed,Object? reason = freezed,}) {
  return _then(_InvoiceLineResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,lineType: freezed == lineType ? _self.lineType : lineType // ignore: cast_nullable_to_non_nullable
as InvoiceLineType?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double?,unitAmount: freezed == unitAmount ? _self.unitAmount : unitAmount // ignore: cast_nullable_to_non_nullable
as double?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PaymentResponseModel {

 int? get id; int? get invoiceId; String? get invoiceCode;@NullableDecimalConverter() double? get amount; String? get currency; DateTime? get paidAt; String? get reference; String? get method; String? get note;
/// Create a copy of PaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentResponseModelCopyWith<PaymentResponseModel> get copyWith => _$PaymentResponseModelCopyWithImpl<PaymentResponseModel>(this as PaymentResponseModel, _$identity);

  /// Serializes this PaymentResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId)&&(identical(other.invoiceCode, invoiceCode) || other.invoiceCode == invoiceCode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.method, method) || other.method == method)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceId,invoiceCode,amount,currency,paidAt,reference,method,note);

@override
String toString() {
  return 'PaymentResponseModel(id: $id, invoiceId: $invoiceId, invoiceCode: $invoiceCode, amount: $amount, currency: $currency, paidAt: $paidAt, reference: $reference, method: $method, note: $note)';
}


}

/// @nodoc
abstract mixin class $PaymentResponseModelCopyWith<$Res>  {
  factory $PaymentResponseModelCopyWith(PaymentResponseModel value, $Res Function(PaymentResponseModel) _then) = _$PaymentResponseModelCopyWithImpl;
@useResult
$Res call({
 int? id, int? invoiceId, String? invoiceCode,@NullableDecimalConverter() double? amount, String? currency, DateTime? paidAt, String? reference, String? method, String? note
});




}
/// @nodoc
class _$PaymentResponseModelCopyWithImpl<$Res>
    implements $PaymentResponseModelCopyWith<$Res> {
  _$PaymentResponseModelCopyWithImpl(this._self, this._then);

  final PaymentResponseModel _self;
  final $Res Function(PaymentResponseModel) _then;

/// Create a copy of PaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? invoiceId = freezed,Object? invoiceCode = freezed,Object? amount = freezed,Object? currency = freezed,Object? paidAt = freezed,Object? reference = freezed,Object? method = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,invoiceId: freezed == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as int?,invoiceCode: freezed == invoiceCode ? _self.invoiceCode : invoiceCode // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentResponseModel].
extension PaymentResponseModelPatterns on PaymentResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? invoiceId,  String? invoiceCode, @NullableDecimalConverter()  double? amount,  String? currency,  DateTime? paidAt,  String? reference,  String? method,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentResponseModel() when $default != null:
return $default(_that.id,_that.invoiceId,_that.invoiceCode,_that.amount,_that.currency,_that.paidAt,_that.reference,_that.method,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? invoiceId,  String? invoiceCode, @NullableDecimalConverter()  double? amount,  String? currency,  DateTime? paidAt,  String? reference,  String? method,  String? note)  $default,) {final _that = this;
switch (_that) {
case _PaymentResponseModel():
return $default(_that.id,_that.invoiceId,_that.invoiceCode,_that.amount,_that.currency,_that.paidAt,_that.reference,_that.method,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? invoiceId,  String? invoiceCode, @NullableDecimalConverter()  double? amount,  String? currency,  DateTime? paidAt,  String? reference,  String? method,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _PaymentResponseModel() when $default != null:
return $default(_that.id,_that.invoiceId,_that.invoiceCode,_that.amount,_that.currency,_that.paidAt,_that.reference,_that.method,_that.note);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentResponseModel implements PaymentResponseModel {
  const _PaymentResponseModel({this.id, this.invoiceId, this.invoiceCode, @NullableDecimalConverter() this.amount, this.currency, this.paidAt, this.reference, this.method, this.note});
  factory _PaymentResponseModel.fromJson(Map<String, dynamic> json) => _$PaymentResponseModelFromJson(json);

@override final  int? id;
@override final  int? invoiceId;
@override final  String? invoiceCode;
@override@NullableDecimalConverter() final  double? amount;
@override final  String? currency;
@override final  DateTime? paidAt;
@override final  String? reference;
@override final  String? method;
@override final  String? note;

/// Create a copy of PaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentResponseModelCopyWith<_PaymentResponseModel> get copyWith => __$PaymentResponseModelCopyWithImpl<_PaymentResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId)&&(identical(other.invoiceCode, invoiceCode) || other.invoiceCode == invoiceCode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.method, method) || other.method == method)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceId,invoiceCode,amount,currency,paidAt,reference,method,note);

@override
String toString() {
  return 'PaymentResponseModel(id: $id, invoiceId: $invoiceId, invoiceCode: $invoiceCode, amount: $amount, currency: $currency, paidAt: $paidAt, reference: $reference, method: $method, note: $note)';
}


}

/// @nodoc
abstract mixin class _$PaymentResponseModelCopyWith<$Res> implements $PaymentResponseModelCopyWith<$Res> {
  factory _$PaymentResponseModelCopyWith(_PaymentResponseModel value, $Res Function(_PaymentResponseModel) _then) = __$PaymentResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? invoiceId, String? invoiceCode,@NullableDecimalConverter() double? amount, String? currency, DateTime? paidAt, String? reference, String? method, String? note
});




}
/// @nodoc
class __$PaymentResponseModelCopyWithImpl<$Res>
    implements _$PaymentResponseModelCopyWith<$Res> {
  __$PaymentResponseModelCopyWithImpl(this._self, this._then);

  final _PaymentResponseModel _self;
  final $Res Function(_PaymentResponseModel) _then;

/// Create a copy of PaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? invoiceId = freezed,Object? invoiceCode = freezed,Object? amount = freezed,Object? currency = freezed,Object? paidAt = freezed,Object? reference = freezed,Object? method = freezed,Object? note = freezed,}) {
  return _then(_PaymentResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,invoiceId: freezed == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as int?,invoiceCode: freezed == invoiceCode ? _self.invoiceCode : invoiceCode // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ConnectionResponseModel {

 int? get id; String? get code; int? get customerId; String? get username; int? get packageId; String? get title; ConnectionStatus? get status; BillingType? get billingType; ConnectivityType? get connectivityType; ClientType? get clientType; String? get distributionPoint; String? get macAddress; String? get addressLine; DateTime? get connectionDate; DateTime? get expiresAt; PackageResponseModel? get package;
/// Create a copy of ConnectionResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionResponseModelCopyWith<ConnectionResponseModel> get copyWith => _$ConnectionResponseModelCopyWithImpl<ConnectionResponseModel>(this as ConnectionResponseModel, _$identity);

  /// Serializes this ConnectionResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.username, username) || other.username == username)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.billingType, billingType) || other.billingType == billingType)&&(identical(other.connectivityType, connectivityType) || other.connectivityType == connectivityType)&&(identical(other.clientType, clientType) || other.clientType == clientType)&&(identical(other.distributionPoint, distributionPoint) || other.distributionPoint == distributionPoint)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.connectionDate, connectionDate) || other.connectionDate == connectionDate)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.package, package) || other.package == package));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,customerId,username,packageId,title,status,billingType,connectivityType,clientType,distributionPoint,macAddress,addressLine,connectionDate,expiresAt,package);

@override
String toString() {
  return 'ConnectionResponseModel(id: $id, code: $code, customerId: $customerId, username: $username, packageId: $packageId, title: $title, status: $status, billingType: $billingType, connectivityType: $connectivityType, clientType: $clientType, distributionPoint: $distributionPoint, macAddress: $macAddress, addressLine: $addressLine, connectionDate: $connectionDate, expiresAt: $expiresAt, package: $package)';
}


}

/// @nodoc
abstract mixin class $ConnectionResponseModelCopyWith<$Res>  {
  factory $ConnectionResponseModelCopyWith(ConnectionResponseModel value, $Res Function(ConnectionResponseModel) _then) = _$ConnectionResponseModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? code, int? customerId, String? username, int? packageId, String? title, ConnectionStatus? status, BillingType? billingType, ConnectivityType? connectivityType, ClientType? clientType, String? distributionPoint, String? macAddress, String? addressLine, DateTime? connectionDate, DateTime? expiresAt, PackageResponseModel? package
});


$PackageResponseModelCopyWith<$Res>? get package;

}
/// @nodoc
class _$ConnectionResponseModelCopyWithImpl<$Res>
    implements $ConnectionResponseModelCopyWith<$Res> {
  _$ConnectionResponseModelCopyWithImpl(this._self, this._then);

  final ConnectionResponseModel _self;
  final $Res Function(ConnectionResponseModel) _then;

/// Create a copy of ConnectionResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? code = freezed,Object? customerId = freezed,Object? username = freezed,Object? packageId = freezed,Object? title = freezed,Object? status = freezed,Object? billingType = freezed,Object? connectivityType = freezed,Object? clientType = freezed,Object? distributionPoint = freezed,Object? macAddress = freezed,Object? addressLine = freezed,Object? connectionDate = freezed,Object? expiresAt = freezed,Object? package = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ConnectionStatus?,billingType: freezed == billingType ? _self.billingType : billingType // ignore: cast_nullable_to_non_nullable
as BillingType?,connectivityType: freezed == connectivityType ? _self.connectivityType : connectivityType // ignore: cast_nullable_to_non_nullable
as ConnectivityType?,clientType: freezed == clientType ? _self.clientType : clientType // ignore: cast_nullable_to_non_nullable
as ClientType?,distributionPoint: freezed == distributionPoint ? _self.distributionPoint : distributionPoint // ignore: cast_nullable_to_non_nullable
as String?,macAddress: freezed == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String?,addressLine: freezed == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String?,connectionDate: freezed == connectionDate ? _self.connectionDate : connectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,package: freezed == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as PackageResponseModel?,
  ));
}
/// Create a copy of ConnectionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageResponseModelCopyWith<$Res>? get package {
    if (_self.package == null) {
    return null;
  }

  return $PackageResponseModelCopyWith<$Res>(_self.package!, (value) {
    return _then(_self.copyWith(package: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConnectionResponseModel].
extension ConnectionResponseModelPatterns on ConnectionResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectionResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectionResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectionResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ConnectionResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectionResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectionResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? code,  int? customerId,  String? username,  int? packageId,  String? title,  ConnectionStatus? status,  BillingType? billingType,  ConnectivityType? connectivityType,  ClientType? clientType,  String? distributionPoint,  String? macAddress,  String? addressLine,  DateTime? connectionDate,  DateTime? expiresAt,  PackageResponseModel? package)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectionResponseModel() when $default != null:
return $default(_that.id,_that.code,_that.customerId,_that.username,_that.packageId,_that.title,_that.status,_that.billingType,_that.connectivityType,_that.clientType,_that.distributionPoint,_that.macAddress,_that.addressLine,_that.connectionDate,_that.expiresAt,_that.package);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? code,  int? customerId,  String? username,  int? packageId,  String? title,  ConnectionStatus? status,  BillingType? billingType,  ConnectivityType? connectivityType,  ClientType? clientType,  String? distributionPoint,  String? macAddress,  String? addressLine,  DateTime? connectionDate,  DateTime? expiresAt,  PackageResponseModel? package)  $default,) {final _that = this;
switch (_that) {
case _ConnectionResponseModel():
return $default(_that.id,_that.code,_that.customerId,_that.username,_that.packageId,_that.title,_that.status,_that.billingType,_that.connectivityType,_that.clientType,_that.distributionPoint,_that.macAddress,_that.addressLine,_that.connectionDate,_that.expiresAt,_that.package);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? code,  int? customerId,  String? username,  int? packageId,  String? title,  ConnectionStatus? status,  BillingType? billingType,  ConnectivityType? connectivityType,  ClientType? clientType,  String? distributionPoint,  String? macAddress,  String? addressLine,  DateTime? connectionDate,  DateTime? expiresAt,  PackageResponseModel? package)?  $default,) {final _that = this;
switch (_that) {
case _ConnectionResponseModel() when $default != null:
return $default(_that.id,_that.code,_that.customerId,_that.username,_that.packageId,_that.title,_that.status,_that.billingType,_that.connectivityType,_that.clientType,_that.distributionPoint,_that.macAddress,_that.addressLine,_that.connectionDate,_that.expiresAt,_that.package);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConnectionResponseModel implements ConnectionResponseModel {
  const _ConnectionResponseModel({this.id, this.code, this.customerId, this.username, this.packageId, this.title, this.status, this.billingType, this.connectivityType, this.clientType, this.distributionPoint, this.macAddress, this.addressLine, this.connectionDate, this.expiresAt, this.package});
  factory _ConnectionResponseModel.fromJson(Map<String, dynamic> json) => _$ConnectionResponseModelFromJson(json);

@override final  int? id;
@override final  String? code;
@override final  int? customerId;
@override final  String? username;
@override final  int? packageId;
@override final  String? title;
@override final  ConnectionStatus? status;
@override final  BillingType? billingType;
@override final  ConnectivityType? connectivityType;
@override final  ClientType? clientType;
@override final  String? distributionPoint;
@override final  String? macAddress;
@override final  String? addressLine;
@override final  DateTime? connectionDate;
@override final  DateTime? expiresAt;
@override final  PackageResponseModel? package;

/// Create a copy of ConnectionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionResponseModelCopyWith<_ConnectionResponseModel> get copyWith => __$ConnectionResponseModelCopyWithImpl<_ConnectionResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectionResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.username, username) || other.username == username)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.billingType, billingType) || other.billingType == billingType)&&(identical(other.connectivityType, connectivityType) || other.connectivityType == connectivityType)&&(identical(other.clientType, clientType) || other.clientType == clientType)&&(identical(other.distributionPoint, distributionPoint) || other.distributionPoint == distributionPoint)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.connectionDate, connectionDate) || other.connectionDate == connectionDate)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.package, package) || other.package == package));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,customerId,username,packageId,title,status,billingType,connectivityType,clientType,distributionPoint,macAddress,addressLine,connectionDate,expiresAt,package);

@override
String toString() {
  return 'ConnectionResponseModel(id: $id, code: $code, customerId: $customerId, username: $username, packageId: $packageId, title: $title, status: $status, billingType: $billingType, connectivityType: $connectivityType, clientType: $clientType, distributionPoint: $distributionPoint, macAddress: $macAddress, addressLine: $addressLine, connectionDate: $connectionDate, expiresAt: $expiresAt, package: $package)';
}


}

/// @nodoc
abstract mixin class _$ConnectionResponseModelCopyWith<$Res> implements $ConnectionResponseModelCopyWith<$Res> {
  factory _$ConnectionResponseModelCopyWith(_ConnectionResponseModel value, $Res Function(_ConnectionResponseModel) _then) = __$ConnectionResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? code, int? customerId, String? username, int? packageId, String? title, ConnectionStatus? status, BillingType? billingType, ConnectivityType? connectivityType, ClientType? clientType, String? distributionPoint, String? macAddress, String? addressLine, DateTime? connectionDate, DateTime? expiresAt, PackageResponseModel? package
});


@override $PackageResponseModelCopyWith<$Res>? get package;

}
/// @nodoc
class __$ConnectionResponseModelCopyWithImpl<$Res>
    implements _$ConnectionResponseModelCopyWith<$Res> {
  __$ConnectionResponseModelCopyWithImpl(this._self, this._then);

  final _ConnectionResponseModel _self;
  final $Res Function(_ConnectionResponseModel) _then;

/// Create a copy of ConnectionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? code = freezed,Object? customerId = freezed,Object? username = freezed,Object? packageId = freezed,Object? title = freezed,Object? status = freezed,Object? billingType = freezed,Object? connectivityType = freezed,Object? clientType = freezed,Object? distributionPoint = freezed,Object? macAddress = freezed,Object? addressLine = freezed,Object? connectionDate = freezed,Object? expiresAt = freezed,Object? package = freezed,}) {
  return _then(_ConnectionResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,packageId: freezed == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ConnectionStatus?,billingType: freezed == billingType ? _self.billingType : billingType // ignore: cast_nullable_to_non_nullable
as BillingType?,connectivityType: freezed == connectivityType ? _self.connectivityType : connectivityType // ignore: cast_nullable_to_non_nullable
as ConnectivityType?,clientType: freezed == clientType ? _self.clientType : clientType // ignore: cast_nullable_to_non_nullable
as ClientType?,distributionPoint: freezed == distributionPoint ? _self.distributionPoint : distributionPoint // ignore: cast_nullable_to_non_nullable
as String?,macAddress: freezed == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String?,addressLine: freezed == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String?,connectionDate: freezed == connectionDate ? _self.connectionDate : connectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,package: freezed == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as PackageResponseModel?,
  ));
}

/// Create a copy of ConnectionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageResponseModelCopyWith<$Res>? get package {
    if (_self.package == null) {
    return null;
  }

  return $PackageResponseModelCopyWith<$Res>(_self.package!, (value) {
    return _then(_self.copyWith(package: value));
  });
}
}


/// @nodoc
mixin _$CustomerResponseModel {

 int? get id; String? get code; String? get fullName; String? get phone; String? get alternatePhone; String? get email; String? get nationalId; String? get notes; DateTime? get createdAt;
/// Create a copy of CustomerResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerResponseModelCopyWith<CustomerResponseModel> get copyWith => _$CustomerResponseModelCopyWithImpl<CustomerResponseModel>(this as CustomerResponseModel, _$identity);

  /// Serializes this CustomerResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.alternatePhone, alternatePhone) || other.alternatePhone == alternatePhone)&&(identical(other.email, email) || other.email == email)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,fullName,phone,alternatePhone,email,nationalId,notes,createdAt);

@override
String toString() {
  return 'CustomerResponseModel(id: $id, code: $code, fullName: $fullName, phone: $phone, alternatePhone: $alternatePhone, email: $email, nationalId: $nationalId, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CustomerResponseModelCopyWith<$Res>  {
  factory $CustomerResponseModelCopyWith(CustomerResponseModel value, $Res Function(CustomerResponseModel) _then) = _$CustomerResponseModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? code, String? fullName, String? phone, String? alternatePhone, String? email, String? nationalId, String? notes, DateTime? createdAt
});




}
/// @nodoc
class _$CustomerResponseModelCopyWithImpl<$Res>
    implements $CustomerResponseModelCopyWith<$Res> {
  _$CustomerResponseModelCopyWithImpl(this._self, this._then);

  final CustomerResponseModel _self;
  final $Res Function(CustomerResponseModel) _then;

/// Create a copy of CustomerResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? code = freezed,Object? fullName = freezed,Object? phone = freezed,Object? alternatePhone = freezed,Object? email = freezed,Object? nationalId = freezed,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,alternatePhone: freezed == alternatePhone ? _self.alternatePhone : alternatePhone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,nationalId: freezed == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerResponseModel].
extension CustomerResponseModelPatterns on CustomerResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomerResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? code,  String? fullName,  String? phone,  String? alternatePhone,  String? email,  String? nationalId,  String? notes,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerResponseModel() when $default != null:
return $default(_that.id,_that.code,_that.fullName,_that.phone,_that.alternatePhone,_that.email,_that.nationalId,_that.notes,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? code,  String? fullName,  String? phone,  String? alternatePhone,  String? email,  String? nationalId,  String? notes,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CustomerResponseModel():
return $default(_that.id,_that.code,_that.fullName,_that.phone,_that.alternatePhone,_that.email,_that.nationalId,_that.notes,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? code,  String? fullName,  String? phone,  String? alternatePhone,  String? email,  String? nationalId,  String? notes,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CustomerResponseModel() when $default != null:
return $default(_that.id,_that.code,_that.fullName,_that.phone,_that.alternatePhone,_that.email,_that.nationalId,_that.notes,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerResponseModel implements CustomerResponseModel {
  const _CustomerResponseModel({this.id, this.code, this.fullName, this.phone, this.alternatePhone, this.email, this.nationalId, this.notes, this.createdAt});
  factory _CustomerResponseModel.fromJson(Map<String, dynamic> json) => _$CustomerResponseModelFromJson(json);

@override final  int? id;
@override final  String? code;
@override final  String? fullName;
@override final  String? phone;
@override final  String? alternatePhone;
@override final  String? email;
@override final  String? nationalId;
@override final  String? notes;
@override final  DateTime? createdAt;

/// Create a copy of CustomerResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerResponseModelCopyWith<_CustomerResponseModel> get copyWith => __$CustomerResponseModelCopyWithImpl<_CustomerResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.alternatePhone, alternatePhone) || other.alternatePhone == alternatePhone)&&(identical(other.email, email) || other.email == email)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,fullName,phone,alternatePhone,email,nationalId,notes,createdAt);

@override
String toString() {
  return 'CustomerResponseModel(id: $id, code: $code, fullName: $fullName, phone: $phone, alternatePhone: $alternatePhone, email: $email, nationalId: $nationalId, notes: $notes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CustomerResponseModelCopyWith<$Res> implements $CustomerResponseModelCopyWith<$Res> {
  factory _$CustomerResponseModelCopyWith(_CustomerResponseModel value, $Res Function(_CustomerResponseModel) _then) = __$CustomerResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? code, String? fullName, String? phone, String? alternatePhone, String? email, String? nationalId, String? notes, DateTime? createdAt
});




}
/// @nodoc
class __$CustomerResponseModelCopyWithImpl<$Res>
    implements _$CustomerResponseModelCopyWith<$Res> {
  __$CustomerResponseModelCopyWithImpl(this._self, this._then);

  final _CustomerResponseModel _self;
  final $Res Function(_CustomerResponseModel) _then;

/// Create a copy of CustomerResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? code = freezed,Object? fullName = freezed,Object? phone = freezed,Object? alternatePhone = freezed,Object? email = freezed,Object? nationalId = freezed,Object? notes = freezed,Object? createdAt = freezed,}) {
  return _then(_CustomerResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,alternatePhone: freezed == alternatePhone ? _self.alternatePhone : alternatePhone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,nationalId: freezed == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$WifiSettingsResponseModel {

 String? get ssid; String? get password; WifiBand? get band; bool? get guestNetworkEnabled; String? get routerModel; String? get guestSsid;
/// Create a copy of WifiSettingsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WifiSettingsResponseModelCopyWith<WifiSettingsResponseModel> get copyWith => _$WifiSettingsResponseModelCopyWithImpl<WifiSettingsResponseModel>(this as WifiSettingsResponseModel, _$identity);

  /// Serializes this WifiSettingsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WifiSettingsResponseModel&&(identical(other.ssid, ssid) || other.ssid == ssid)&&(identical(other.password, password) || other.password == password)&&(identical(other.band, band) || other.band == band)&&(identical(other.guestNetworkEnabled, guestNetworkEnabled) || other.guestNetworkEnabled == guestNetworkEnabled)&&(identical(other.routerModel, routerModel) || other.routerModel == routerModel)&&(identical(other.guestSsid, guestSsid) || other.guestSsid == guestSsid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ssid,password,band,guestNetworkEnabled,routerModel,guestSsid);

@override
String toString() {
  return 'WifiSettingsResponseModel(ssid: $ssid, password: $password, band: $band, guestNetworkEnabled: $guestNetworkEnabled, routerModel: $routerModel, guestSsid: $guestSsid)';
}


}

/// @nodoc
abstract mixin class $WifiSettingsResponseModelCopyWith<$Res>  {
  factory $WifiSettingsResponseModelCopyWith(WifiSettingsResponseModel value, $Res Function(WifiSettingsResponseModel) _then) = _$WifiSettingsResponseModelCopyWithImpl;
@useResult
$Res call({
 String? ssid, String? password, WifiBand? band, bool? guestNetworkEnabled, String? routerModel, String? guestSsid
});




}
/// @nodoc
class _$WifiSettingsResponseModelCopyWithImpl<$Res>
    implements $WifiSettingsResponseModelCopyWith<$Res> {
  _$WifiSettingsResponseModelCopyWithImpl(this._self, this._then);

  final WifiSettingsResponseModel _self;
  final $Res Function(WifiSettingsResponseModel) _then;

/// Create a copy of WifiSettingsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ssid = freezed,Object? password = freezed,Object? band = freezed,Object? guestNetworkEnabled = freezed,Object? routerModel = freezed,Object? guestSsid = freezed,}) {
  return _then(_self.copyWith(
ssid: freezed == ssid ? _self.ssid : ssid // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,band: freezed == band ? _self.band : band // ignore: cast_nullable_to_non_nullable
as WifiBand?,guestNetworkEnabled: freezed == guestNetworkEnabled ? _self.guestNetworkEnabled : guestNetworkEnabled // ignore: cast_nullable_to_non_nullable
as bool?,routerModel: freezed == routerModel ? _self.routerModel : routerModel // ignore: cast_nullable_to_non_nullable
as String?,guestSsid: freezed == guestSsid ? _self.guestSsid : guestSsid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WifiSettingsResponseModel].
extension WifiSettingsResponseModelPatterns on WifiSettingsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WifiSettingsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WifiSettingsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WifiSettingsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _WifiSettingsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WifiSettingsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _WifiSettingsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? ssid,  String? password,  WifiBand? band,  bool? guestNetworkEnabled,  String? routerModel,  String? guestSsid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WifiSettingsResponseModel() when $default != null:
return $default(_that.ssid,_that.password,_that.band,_that.guestNetworkEnabled,_that.routerModel,_that.guestSsid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? ssid,  String? password,  WifiBand? band,  bool? guestNetworkEnabled,  String? routerModel,  String? guestSsid)  $default,) {final _that = this;
switch (_that) {
case _WifiSettingsResponseModel():
return $default(_that.ssid,_that.password,_that.band,_that.guestNetworkEnabled,_that.routerModel,_that.guestSsid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? ssid,  String? password,  WifiBand? band,  bool? guestNetworkEnabled,  String? routerModel,  String? guestSsid)?  $default,) {final _that = this;
switch (_that) {
case _WifiSettingsResponseModel() when $default != null:
return $default(_that.ssid,_that.password,_that.band,_that.guestNetworkEnabled,_that.routerModel,_that.guestSsid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WifiSettingsResponseModel implements WifiSettingsResponseModel {
  const _WifiSettingsResponseModel({this.ssid, this.password, this.band, this.guestNetworkEnabled, this.routerModel, this.guestSsid});
  factory _WifiSettingsResponseModel.fromJson(Map<String, dynamic> json) => _$WifiSettingsResponseModelFromJson(json);

@override final  String? ssid;
@override final  String? password;
@override final  WifiBand? band;
@override final  bool? guestNetworkEnabled;
@override final  String? routerModel;
@override final  String? guestSsid;

/// Create a copy of WifiSettingsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WifiSettingsResponseModelCopyWith<_WifiSettingsResponseModel> get copyWith => __$WifiSettingsResponseModelCopyWithImpl<_WifiSettingsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WifiSettingsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WifiSettingsResponseModel&&(identical(other.ssid, ssid) || other.ssid == ssid)&&(identical(other.password, password) || other.password == password)&&(identical(other.band, band) || other.band == band)&&(identical(other.guestNetworkEnabled, guestNetworkEnabled) || other.guestNetworkEnabled == guestNetworkEnabled)&&(identical(other.routerModel, routerModel) || other.routerModel == routerModel)&&(identical(other.guestSsid, guestSsid) || other.guestSsid == guestSsid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ssid,password,band,guestNetworkEnabled,routerModel,guestSsid);

@override
String toString() {
  return 'WifiSettingsResponseModel(ssid: $ssid, password: $password, band: $band, guestNetworkEnabled: $guestNetworkEnabled, routerModel: $routerModel, guestSsid: $guestSsid)';
}


}

/// @nodoc
abstract mixin class _$WifiSettingsResponseModelCopyWith<$Res> implements $WifiSettingsResponseModelCopyWith<$Res> {
  factory _$WifiSettingsResponseModelCopyWith(_WifiSettingsResponseModel value, $Res Function(_WifiSettingsResponseModel) _then) = __$WifiSettingsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? ssid, String? password, WifiBand? band, bool? guestNetworkEnabled, String? routerModel, String? guestSsid
});




}
/// @nodoc
class __$WifiSettingsResponseModelCopyWithImpl<$Res>
    implements _$WifiSettingsResponseModelCopyWith<$Res> {
  __$WifiSettingsResponseModelCopyWithImpl(this._self, this._then);

  final _WifiSettingsResponseModel _self;
  final $Res Function(_WifiSettingsResponseModel) _then;

/// Create a copy of WifiSettingsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ssid = freezed,Object? password = freezed,Object? band = freezed,Object? guestNetworkEnabled = freezed,Object? routerModel = freezed,Object? guestSsid = freezed,}) {
  return _then(_WifiSettingsResponseModel(
ssid: freezed == ssid ? _self.ssid : ssid // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,band: freezed == band ? _self.band : band // ignore: cast_nullable_to_non_nullable
as WifiBand?,guestNetworkEnabled: freezed == guestNetworkEnabled ? _self.guestNetworkEnabled : guestNetworkEnabled // ignore: cast_nullable_to_non_nullable
as bool?,routerModel: freezed == routerModel ? _self.routerModel : routerModel // ignore: cast_nullable_to_non_nullable
as String?,guestSsid: freezed == guestSsid ? _self.guestSsid : guestSsid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ConnectedDeviceResponseModel {

 String? get id; String? get name; DeviceKind? get kind; String? get ipAddress; int? get throughputMbps; bool? get isBlocked;
/// Create a copy of ConnectedDeviceResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectedDeviceResponseModelCopyWith<ConnectedDeviceResponseModel> get copyWith => _$ConnectedDeviceResponseModelCopyWithImpl<ConnectedDeviceResponseModel>(this as ConnectedDeviceResponseModel, _$identity);

  /// Serializes this ConnectedDeviceResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedDeviceResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.throughputMbps, throughputMbps) || other.throughputMbps == throughputMbps)&&(identical(other.isBlocked, isBlocked) || other.isBlocked == isBlocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kind,ipAddress,throughputMbps,isBlocked);

@override
String toString() {
  return 'ConnectedDeviceResponseModel(id: $id, name: $name, kind: $kind, ipAddress: $ipAddress, throughputMbps: $throughputMbps, isBlocked: $isBlocked)';
}


}

/// @nodoc
abstract mixin class $ConnectedDeviceResponseModelCopyWith<$Res>  {
  factory $ConnectedDeviceResponseModelCopyWith(ConnectedDeviceResponseModel value, $Res Function(ConnectedDeviceResponseModel) _then) = _$ConnectedDeviceResponseModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, DeviceKind? kind, String? ipAddress, int? throughputMbps, bool? isBlocked
});




}
/// @nodoc
class _$ConnectedDeviceResponseModelCopyWithImpl<$Res>
    implements $ConnectedDeviceResponseModelCopyWith<$Res> {
  _$ConnectedDeviceResponseModelCopyWithImpl(this._self, this._then);

  final ConnectedDeviceResponseModel _self;
  final $Res Function(ConnectedDeviceResponseModel) _then;

/// Create a copy of ConnectedDeviceResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? kind = freezed,Object? ipAddress = freezed,Object? throughputMbps = freezed,Object? isBlocked = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as DeviceKind?,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,throughputMbps: freezed == throughputMbps ? _self.throughputMbps : throughputMbps // ignore: cast_nullable_to_non_nullable
as int?,isBlocked: freezed == isBlocked ? _self.isBlocked : isBlocked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectedDeviceResponseModel].
extension ConnectedDeviceResponseModelPatterns on ConnectedDeviceResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectedDeviceResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectedDeviceResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectedDeviceResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ConnectedDeviceResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectedDeviceResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectedDeviceResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  DeviceKind? kind,  String? ipAddress,  int? throughputMbps,  bool? isBlocked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectedDeviceResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.ipAddress,_that.throughputMbps,_that.isBlocked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  DeviceKind? kind,  String? ipAddress,  int? throughputMbps,  bool? isBlocked)  $default,) {final _that = this;
switch (_that) {
case _ConnectedDeviceResponseModel():
return $default(_that.id,_that.name,_that.kind,_that.ipAddress,_that.throughputMbps,_that.isBlocked);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  DeviceKind? kind,  String? ipAddress,  int? throughputMbps,  bool? isBlocked)?  $default,) {final _that = this;
switch (_that) {
case _ConnectedDeviceResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.ipAddress,_that.throughputMbps,_that.isBlocked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConnectedDeviceResponseModel implements ConnectedDeviceResponseModel {
  const _ConnectedDeviceResponseModel({this.id, this.name, this.kind, this.ipAddress, this.throughputMbps, this.isBlocked});
  factory _ConnectedDeviceResponseModel.fromJson(Map<String, dynamic> json) => _$ConnectedDeviceResponseModelFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  DeviceKind? kind;
@override final  String? ipAddress;
@override final  int? throughputMbps;
@override final  bool? isBlocked;

/// Create a copy of ConnectedDeviceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectedDeviceResponseModelCopyWith<_ConnectedDeviceResponseModel> get copyWith => __$ConnectedDeviceResponseModelCopyWithImpl<_ConnectedDeviceResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectedDeviceResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectedDeviceResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.throughputMbps, throughputMbps) || other.throughputMbps == throughputMbps)&&(identical(other.isBlocked, isBlocked) || other.isBlocked == isBlocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kind,ipAddress,throughputMbps,isBlocked);

@override
String toString() {
  return 'ConnectedDeviceResponseModel(id: $id, name: $name, kind: $kind, ipAddress: $ipAddress, throughputMbps: $throughputMbps, isBlocked: $isBlocked)';
}


}

/// @nodoc
abstract mixin class _$ConnectedDeviceResponseModelCopyWith<$Res> implements $ConnectedDeviceResponseModelCopyWith<$Res> {
  factory _$ConnectedDeviceResponseModelCopyWith(_ConnectedDeviceResponseModel value, $Res Function(_ConnectedDeviceResponseModel) _then) = __$ConnectedDeviceResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, DeviceKind? kind, String? ipAddress, int? throughputMbps, bool? isBlocked
});




}
/// @nodoc
class __$ConnectedDeviceResponseModelCopyWithImpl<$Res>
    implements _$ConnectedDeviceResponseModelCopyWith<$Res> {
  __$ConnectedDeviceResponseModelCopyWithImpl(this._self, this._then);

  final _ConnectedDeviceResponseModel _self;
  final $Res Function(_ConnectedDeviceResponseModel) _then;

/// Create a copy of ConnectedDeviceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? kind = freezed,Object? ipAddress = freezed,Object? throughputMbps = freezed,Object? isBlocked = freezed,}) {
  return _then(_ConnectedDeviceResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as DeviceKind?,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,throughputMbps: freezed == throughputMbps ? _self.throughputMbps : throughputMbps // ignore: cast_nullable_to_non_nullable
as int?,isBlocked: freezed == isBlocked ? _self.isBlocked : isBlocked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$UsageBucketResponseModel {

 String? get label; double? get downloadGb; double? get uploadGb;
/// Create a copy of UsageBucketResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageBucketResponseModelCopyWith<UsageBucketResponseModel> get copyWith => _$UsageBucketResponseModelCopyWithImpl<UsageBucketResponseModel>(this as UsageBucketResponseModel, _$identity);

  /// Serializes this UsageBucketResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsageBucketResponseModel&&(identical(other.label, label) || other.label == label)&&(identical(other.downloadGb, downloadGb) || other.downloadGb == downloadGb)&&(identical(other.uploadGb, uploadGb) || other.uploadGb == uploadGb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,downloadGb,uploadGb);

@override
String toString() {
  return 'UsageBucketResponseModel(label: $label, downloadGb: $downloadGb, uploadGb: $uploadGb)';
}


}

/// @nodoc
abstract mixin class $UsageBucketResponseModelCopyWith<$Res>  {
  factory $UsageBucketResponseModelCopyWith(UsageBucketResponseModel value, $Res Function(UsageBucketResponseModel) _then) = _$UsageBucketResponseModelCopyWithImpl;
@useResult
$Res call({
 String? label, double? downloadGb, double? uploadGb
});




}
/// @nodoc
class _$UsageBucketResponseModelCopyWithImpl<$Res>
    implements $UsageBucketResponseModelCopyWith<$Res> {
  _$UsageBucketResponseModelCopyWithImpl(this._self, this._then);

  final UsageBucketResponseModel _self;
  final $Res Function(UsageBucketResponseModel) _then;

/// Create a copy of UsageBucketResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = freezed,Object? downloadGb = freezed,Object? uploadGb = freezed,}) {
  return _then(_self.copyWith(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,downloadGb: freezed == downloadGb ? _self.downloadGb : downloadGb // ignore: cast_nullable_to_non_nullable
as double?,uploadGb: freezed == uploadGb ? _self.uploadGb : uploadGb // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [UsageBucketResponseModel].
extension UsageBucketResponseModelPatterns on UsageBucketResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsageBucketResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsageBucketResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsageBucketResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _UsageBucketResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsageBucketResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _UsageBucketResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? label,  double? downloadGb,  double? uploadGb)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsageBucketResponseModel() when $default != null:
return $default(_that.label,_that.downloadGb,_that.uploadGb);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? label,  double? downloadGb,  double? uploadGb)  $default,) {final _that = this;
switch (_that) {
case _UsageBucketResponseModel():
return $default(_that.label,_that.downloadGb,_that.uploadGb);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? label,  double? downloadGb,  double? uploadGb)?  $default,) {final _that = this;
switch (_that) {
case _UsageBucketResponseModel() when $default != null:
return $default(_that.label,_that.downloadGb,_that.uploadGb);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsageBucketResponseModel implements UsageBucketResponseModel {
  const _UsageBucketResponseModel({this.label, this.downloadGb, this.uploadGb});
  factory _UsageBucketResponseModel.fromJson(Map<String, dynamic> json) => _$UsageBucketResponseModelFromJson(json);

@override final  String? label;
@override final  double? downloadGb;
@override final  double? uploadGb;

/// Create a copy of UsageBucketResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageBucketResponseModelCopyWith<_UsageBucketResponseModel> get copyWith => __$UsageBucketResponseModelCopyWithImpl<_UsageBucketResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsageBucketResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsageBucketResponseModel&&(identical(other.label, label) || other.label == label)&&(identical(other.downloadGb, downloadGb) || other.downloadGb == downloadGb)&&(identical(other.uploadGb, uploadGb) || other.uploadGb == uploadGb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,downloadGb,uploadGb);

@override
String toString() {
  return 'UsageBucketResponseModel(label: $label, downloadGb: $downloadGb, uploadGb: $uploadGb)';
}


}

/// @nodoc
abstract mixin class _$UsageBucketResponseModelCopyWith<$Res> implements $UsageBucketResponseModelCopyWith<$Res> {
  factory _$UsageBucketResponseModelCopyWith(_UsageBucketResponseModel value, $Res Function(_UsageBucketResponseModel) _then) = __$UsageBucketResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? label, double? downloadGb, double? uploadGb
});




}
/// @nodoc
class __$UsageBucketResponseModelCopyWithImpl<$Res>
    implements _$UsageBucketResponseModelCopyWith<$Res> {
  __$UsageBucketResponseModelCopyWithImpl(this._self, this._then);

  final _UsageBucketResponseModel _self;
  final $Res Function(_UsageBucketResponseModel) _then;

/// Create a copy of UsageBucketResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = freezed,Object? downloadGb = freezed,Object? uploadGb = freezed,}) {
  return _then(_UsageBucketResponseModel(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,downloadGb: freezed == downloadGb ? _self.downloadGb : downloadGb // ignore: cast_nullable_to_non_nullable
as double?,uploadGb: freezed == uploadGb ? _self.uploadGb : uploadGb // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$UsageSummaryResponseModel {

 UsageRange? get range; double? get downloadGb; double? get uploadGb; List<UsageBucketResponseModel> get buckets;
/// Create a copy of UsageSummaryResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageSummaryResponseModelCopyWith<UsageSummaryResponseModel> get copyWith => _$UsageSummaryResponseModelCopyWithImpl<UsageSummaryResponseModel>(this as UsageSummaryResponseModel, _$identity);

  /// Serializes this UsageSummaryResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsageSummaryResponseModel&&(identical(other.range, range) || other.range == range)&&(identical(other.downloadGb, downloadGb) || other.downloadGb == downloadGb)&&(identical(other.uploadGb, uploadGb) || other.uploadGb == uploadGb)&&const DeepCollectionEquality().equals(other.buckets, buckets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,range,downloadGb,uploadGb,const DeepCollectionEquality().hash(buckets));

@override
String toString() {
  return 'UsageSummaryResponseModel(range: $range, downloadGb: $downloadGb, uploadGb: $uploadGb, buckets: $buckets)';
}


}

/// @nodoc
abstract mixin class $UsageSummaryResponseModelCopyWith<$Res>  {
  factory $UsageSummaryResponseModelCopyWith(UsageSummaryResponseModel value, $Res Function(UsageSummaryResponseModel) _then) = _$UsageSummaryResponseModelCopyWithImpl;
@useResult
$Res call({
 UsageRange? range, double? downloadGb, double? uploadGb, List<UsageBucketResponseModel> buckets
});




}
/// @nodoc
class _$UsageSummaryResponseModelCopyWithImpl<$Res>
    implements $UsageSummaryResponseModelCopyWith<$Res> {
  _$UsageSummaryResponseModelCopyWithImpl(this._self, this._then);

  final UsageSummaryResponseModel _self;
  final $Res Function(UsageSummaryResponseModel) _then;

/// Create a copy of UsageSummaryResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? range = freezed,Object? downloadGb = freezed,Object? uploadGb = freezed,Object? buckets = null,}) {
  return _then(_self.copyWith(
range: freezed == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as UsageRange?,downloadGb: freezed == downloadGb ? _self.downloadGb : downloadGb // ignore: cast_nullable_to_non_nullable
as double?,uploadGb: freezed == uploadGb ? _self.uploadGb : uploadGb // ignore: cast_nullable_to_non_nullable
as double?,buckets: null == buckets ? _self.buckets : buckets // ignore: cast_nullable_to_non_nullable
as List<UsageBucketResponseModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [UsageSummaryResponseModel].
extension UsageSummaryResponseModelPatterns on UsageSummaryResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsageSummaryResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsageSummaryResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsageSummaryResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _UsageSummaryResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsageSummaryResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _UsageSummaryResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UsageRange? range,  double? downloadGb,  double? uploadGb,  List<UsageBucketResponseModel> buckets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsageSummaryResponseModel() when $default != null:
return $default(_that.range,_that.downloadGb,_that.uploadGb,_that.buckets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UsageRange? range,  double? downloadGb,  double? uploadGb,  List<UsageBucketResponseModel> buckets)  $default,) {final _that = this;
switch (_that) {
case _UsageSummaryResponseModel():
return $default(_that.range,_that.downloadGb,_that.uploadGb,_that.buckets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UsageRange? range,  double? downloadGb,  double? uploadGb,  List<UsageBucketResponseModel> buckets)?  $default,) {final _that = this;
switch (_that) {
case _UsageSummaryResponseModel() when $default != null:
return $default(_that.range,_that.downloadGb,_that.uploadGb,_that.buckets);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsageSummaryResponseModel implements UsageSummaryResponseModel {
  const _UsageSummaryResponseModel({this.range, this.downloadGb, this.uploadGb, final  List<UsageBucketResponseModel> buckets = const <UsageBucketResponseModel>[]}): _buckets = buckets;
  factory _UsageSummaryResponseModel.fromJson(Map<String, dynamic> json) => _$UsageSummaryResponseModelFromJson(json);

@override final  UsageRange? range;
@override final  double? downloadGb;
@override final  double? uploadGb;
 final  List<UsageBucketResponseModel> _buckets;
@override@JsonKey() List<UsageBucketResponseModel> get buckets {
  if (_buckets is EqualUnmodifiableListView) return _buckets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_buckets);
}


/// Create a copy of UsageSummaryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageSummaryResponseModelCopyWith<_UsageSummaryResponseModel> get copyWith => __$UsageSummaryResponseModelCopyWithImpl<_UsageSummaryResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsageSummaryResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsageSummaryResponseModel&&(identical(other.range, range) || other.range == range)&&(identical(other.downloadGb, downloadGb) || other.downloadGb == downloadGb)&&(identical(other.uploadGb, uploadGb) || other.uploadGb == uploadGb)&&const DeepCollectionEquality().equals(other._buckets, _buckets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,range,downloadGb,uploadGb,const DeepCollectionEquality().hash(_buckets));

@override
String toString() {
  return 'UsageSummaryResponseModel(range: $range, downloadGb: $downloadGb, uploadGb: $uploadGb, buckets: $buckets)';
}


}

/// @nodoc
abstract mixin class _$UsageSummaryResponseModelCopyWith<$Res> implements $UsageSummaryResponseModelCopyWith<$Res> {
  factory _$UsageSummaryResponseModelCopyWith(_UsageSummaryResponseModel value, $Res Function(_UsageSummaryResponseModel) _then) = __$UsageSummaryResponseModelCopyWithImpl;
@override @useResult
$Res call({
 UsageRange? range, double? downloadGb, double? uploadGb, List<UsageBucketResponseModel> buckets
});




}
/// @nodoc
class __$UsageSummaryResponseModelCopyWithImpl<$Res>
    implements _$UsageSummaryResponseModelCopyWith<$Res> {
  __$UsageSummaryResponseModelCopyWithImpl(this._self, this._then);

  final _UsageSummaryResponseModel _self;
  final $Res Function(_UsageSummaryResponseModel) _then;

/// Create a copy of UsageSummaryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? range = freezed,Object? downloadGb = freezed,Object? uploadGb = freezed,Object? buckets = null,}) {
  return _then(_UsageSummaryResponseModel(
range: freezed == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as UsageRange?,downloadGb: freezed == downloadGb ? _self.downloadGb : downloadGb // ignore: cast_nullable_to_non_nullable
as double?,uploadGb: freezed == uploadGb ? _self.uploadGb : uploadGb // ignore: cast_nullable_to_non_nullable
as double?,buckets: null == buckets ? _self._buckets : buckets // ignore: cast_nullable_to_non_nullable
as List<UsageBucketResponseModel>,
  ));
}


}


/// @nodoc
mixin _$SpeedTestResponseModel {

 double? get downloadMbps; double? get uploadMbps; int? get pingMs; int? get jitterMs; DateTime? get measuredAt; String? get serverLabel;
/// Create a copy of SpeedTestResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpeedTestResponseModelCopyWith<SpeedTestResponseModel> get copyWith => _$SpeedTestResponseModelCopyWithImpl<SpeedTestResponseModel>(this as SpeedTestResponseModel, _$identity);

  /// Serializes this SpeedTestResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeedTestResponseModel&&(identical(other.downloadMbps, downloadMbps) || other.downloadMbps == downloadMbps)&&(identical(other.uploadMbps, uploadMbps) || other.uploadMbps == uploadMbps)&&(identical(other.pingMs, pingMs) || other.pingMs == pingMs)&&(identical(other.jitterMs, jitterMs) || other.jitterMs == jitterMs)&&(identical(other.measuredAt, measuredAt) || other.measuredAt == measuredAt)&&(identical(other.serverLabel, serverLabel) || other.serverLabel == serverLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,downloadMbps,uploadMbps,pingMs,jitterMs,measuredAt,serverLabel);

@override
String toString() {
  return 'SpeedTestResponseModel(downloadMbps: $downloadMbps, uploadMbps: $uploadMbps, pingMs: $pingMs, jitterMs: $jitterMs, measuredAt: $measuredAt, serverLabel: $serverLabel)';
}


}

/// @nodoc
abstract mixin class $SpeedTestResponseModelCopyWith<$Res>  {
  factory $SpeedTestResponseModelCopyWith(SpeedTestResponseModel value, $Res Function(SpeedTestResponseModel) _then) = _$SpeedTestResponseModelCopyWithImpl;
@useResult
$Res call({
 double? downloadMbps, double? uploadMbps, int? pingMs, int? jitterMs, DateTime? measuredAt, String? serverLabel
});




}
/// @nodoc
class _$SpeedTestResponseModelCopyWithImpl<$Res>
    implements $SpeedTestResponseModelCopyWith<$Res> {
  _$SpeedTestResponseModelCopyWithImpl(this._self, this._then);

  final SpeedTestResponseModel _self;
  final $Res Function(SpeedTestResponseModel) _then;

/// Create a copy of SpeedTestResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? downloadMbps = freezed,Object? uploadMbps = freezed,Object? pingMs = freezed,Object? jitterMs = freezed,Object? measuredAt = freezed,Object? serverLabel = freezed,}) {
  return _then(_self.copyWith(
downloadMbps: freezed == downloadMbps ? _self.downloadMbps : downloadMbps // ignore: cast_nullable_to_non_nullable
as double?,uploadMbps: freezed == uploadMbps ? _self.uploadMbps : uploadMbps // ignore: cast_nullable_to_non_nullable
as double?,pingMs: freezed == pingMs ? _self.pingMs : pingMs // ignore: cast_nullable_to_non_nullable
as int?,jitterMs: freezed == jitterMs ? _self.jitterMs : jitterMs // ignore: cast_nullable_to_non_nullable
as int?,measuredAt: freezed == measuredAt ? _self.measuredAt : measuredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,serverLabel: freezed == serverLabel ? _self.serverLabel : serverLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpeedTestResponseModel].
extension SpeedTestResponseModelPatterns on SpeedTestResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpeedTestResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpeedTestResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpeedTestResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SpeedTestResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpeedTestResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SpeedTestResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? downloadMbps,  double? uploadMbps,  int? pingMs,  int? jitterMs,  DateTime? measuredAt,  String? serverLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpeedTestResponseModel() when $default != null:
return $default(_that.downloadMbps,_that.uploadMbps,_that.pingMs,_that.jitterMs,_that.measuredAt,_that.serverLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? downloadMbps,  double? uploadMbps,  int? pingMs,  int? jitterMs,  DateTime? measuredAt,  String? serverLabel)  $default,) {final _that = this;
switch (_that) {
case _SpeedTestResponseModel():
return $default(_that.downloadMbps,_that.uploadMbps,_that.pingMs,_that.jitterMs,_that.measuredAt,_that.serverLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? downloadMbps,  double? uploadMbps,  int? pingMs,  int? jitterMs,  DateTime? measuredAt,  String? serverLabel)?  $default,) {final _that = this;
switch (_that) {
case _SpeedTestResponseModel() when $default != null:
return $default(_that.downloadMbps,_that.uploadMbps,_that.pingMs,_that.jitterMs,_that.measuredAt,_that.serverLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpeedTestResponseModel implements SpeedTestResponseModel {
  const _SpeedTestResponseModel({this.downloadMbps, this.uploadMbps, this.pingMs, this.jitterMs, this.measuredAt, this.serverLabel});
  factory _SpeedTestResponseModel.fromJson(Map<String, dynamic> json) => _$SpeedTestResponseModelFromJson(json);

@override final  double? downloadMbps;
@override final  double? uploadMbps;
@override final  int? pingMs;
@override final  int? jitterMs;
@override final  DateTime? measuredAt;
@override final  String? serverLabel;

/// Create a copy of SpeedTestResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpeedTestResponseModelCopyWith<_SpeedTestResponseModel> get copyWith => __$SpeedTestResponseModelCopyWithImpl<_SpeedTestResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpeedTestResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpeedTestResponseModel&&(identical(other.downloadMbps, downloadMbps) || other.downloadMbps == downloadMbps)&&(identical(other.uploadMbps, uploadMbps) || other.uploadMbps == uploadMbps)&&(identical(other.pingMs, pingMs) || other.pingMs == pingMs)&&(identical(other.jitterMs, jitterMs) || other.jitterMs == jitterMs)&&(identical(other.measuredAt, measuredAt) || other.measuredAt == measuredAt)&&(identical(other.serverLabel, serverLabel) || other.serverLabel == serverLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,downloadMbps,uploadMbps,pingMs,jitterMs,measuredAt,serverLabel);

@override
String toString() {
  return 'SpeedTestResponseModel(downloadMbps: $downloadMbps, uploadMbps: $uploadMbps, pingMs: $pingMs, jitterMs: $jitterMs, measuredAt: $measuredAt, serverLabel: $serverLabel)';
}


}

/// @nodoc
abstract mixin class _$SpeedTestResponseModelCopyWith<$Res> implements $SpeedTestResponseModelCopyWith<$Res> {
  factory _$SpeedTestResponseModelCopyWith(_SpeedTestResponseModel value, $Res Function(_SpeedTestResponseModel) _then) = __$SpeedTestResponseModelCopyWithImpl;
@override @useResult
$Res call({
 double? downloadMbps, double? uploadMbps, int? pingMs, int? jitterMs, DateTime? measuredAt, String? serverLabel
});




}
/// @nodoc
class __$SpeedTestResponseModelCopyWithImpl<$Res>
    implements _$SpeedTestResponseModelCopyWith<$Res> {
  __$SpeedTestResponseModelCopyWithImpl(this._self, this._then);

  final _SpeedTestResponseModel _self;
  final $Res Function(_SpeedTestResponseModel) _then;

/// Create a copy of SpeedTestResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? downloadMbps = freezed,Object? uploadMbps = freezed,Object? pingMs = freezed,Object? jitterMs = freezed,Object? measuredAt = freezed,Object? serverLabel = freezed,}) {
  return _then(_SpeedTestResponseModel(
downloadMbps: freezed == downloadMbps ? _self.downloadMbps : downloadMbps // ignore: cast_nullable_to_non_nullable
as double?,uploadMbps: freezed == uploadMbps ? _self.uploadMbps : uploadMbps // ignore: cast_nullable_to_non_nullable
as double?,pingMs: freezed == pingMs ? _self.pingMs : pingMs // ignore: cast_nullable_to_non_nullable
as int?,jitterMs: freezed == jitterMs ? _self.jitterMs : jitterMs // ignore: cast_nullable_to_non_nullable
as int?,measuredAt: freezed == measuredAt ? _self.measuredAt : measuredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,serverLabel: freezed == serverLabel ? _self.serverLabel : serverLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NotificationResponseModel {

 String? get id; String? get title; String? get body; NotificationCategory? get category; DateTime? get sentAt; bool? get isRead;
/// Create a copy of NotificationResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationResponseModelCopyWith<NotificationResponseModel> get copyWith => _$NotificationResponseModelCopyWithImpl<NotificationResponseModel>(this as NotificationResponseModel, _$identity);

  /// Serializes this NotificationResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.category, category) || other.category == category)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,body,category,sentAt,isRead);

@override
String toString() {
  return 'NotificationResponseModel(id: $id, title: $title, body: $body, category: $category, sentAt: $sentAt, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class $NotificationResponseModelCopyWith<$Res>  {
  factory $NotificationResponseModelCopyWith(NotificationResponseModel value, $Res Function(NotificationResponseModel) _then) = _$NotificationResponseModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, String? body, NotificationCategory? category, DateTime? sentAt, bool? isRead
});




}
/// @nodoc
class _$NotificationResponseModelCopyWithImpl<$Res>
    implements $NotificationResponseModelCopyWith<$Res> {
  _$NotificationResponseModelCopyWithImpl(this._self, this._then);

  final NotificationResponseModel _self;
  final $Res Function(NotificationResponseModel) _then;

/// Create a copy of NotificationResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? body = freezed,Object? category = freezed,Object? sentAt = freezed,Object? isRead = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NotificationCategory?,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isRead: freezed == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationResponseModel].
extension NotificationResponseModelPatterns on NotificationResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? title,  String? body,  NotificationCategory? category,  DateTime? sentAt,  bool? isRead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationResponseModel() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.category,_that.sentAt,_that.isRead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? title,  String? body,  NotificationCategory? category,  DateTime? sentAt,  bool? isRead)  $default,) {final _that = this;
switch (_that) {
case _NotificationResponseModel():
return $default(_that.id,_that.title,_that.body,_that.category,_that.sentAt,_that.isRead);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? title,  String? body,  NotificationCategory? category,  DateTime? sentAt,  bool? isRead)?  $default,) {final _that = this;
switch (_that) {
case _NotificationResponseModel() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.category,_that.sentAt,_that.isRead);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationResponseModel implements NotificationResponseModel {
  const _NotificationResponseModel({this.id, this.title, this.body, this.category, this.sentAt, this.isRead});
  factory _NotificationResponseModel.fromJson(Map<String, dynamic> json) => _$NotificationResponseModelFromJson(json);

@override final  String? id;
@override final  String? title;
@override final  String? body;
@override final  NotificationCategory? category;
@override final  DateTime? sentAt;
@override final  bool? isRead;

/// Create a copy of NotificationResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationResponseModelCopyWith<_NotificationResponseModel> get copyWith => __$NotificationResponseModelCopyWithImpl<_NotificationResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.category, category) || other.category == category)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,body,category,sentAt,isRead);

@override
String toString() {
  return 'NotificationResponseModel(id: $id, title: $title, body: $body, category: $category, sentAt: $sentAt, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class _$NotificationResponseModelCopyWith<$Res> implements $NotificationResponseModelCopyWith<$Res> {
  factory _$NotificationResponseModelCopyWith(_NotificationResponseModel value, $Res Function(_NotificationResponseModel) _then) = __$NotificationResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, String? body, NotificationCategory? category, DateTime? sentAt, bool? isRead
});




}
/// @nodoc
class __$NotificationResponseModelCopyWithImpl<$Res>
    implements _$NotificationResponseModelCopyWith<$Res> {
  __$NotificationResponseModelCopyWithImpl(this._self, this._then);

  final _NotificationResponseModel _self;
  final $Res Function(_NotificationResponseModel) _then;

/// Create a copy of NotificationResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? body = freezed,Object? category = freezed,Object? sentAt = freezed,Object? isRead = freezed,}) {
  return _then(_NotificationResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NotificationCategory?,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isRead: freezed == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$NotificationPreferenceResponseModel {

 NotificationCategory? get category; bool? get enabled;
/// Create a copy of NotificationPreferenceResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPreferenceResponseModelCopyWith<NotificationPreferenceResponseModel> get copyWith => _$NotificationPreferenceResponseModelCopyWithImpl<NotificationPreferenceResponseModel>(this as NotificationPreferenceResponseModel, _$identity);

  /// Serializes this NotificationPreferenceResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPreferenceResponseModel&&(identical(other.category, category) || other.category == category)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,enabled);

@override
String toString() {
  return 'NotificationPreferenceResponseModel(category: $category, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class $NotificationPreferenceResponseModelCopyWith<$Res>  {
  factory $NotificationPreferenceResponseModelCopyWith(NotificationPreferenceResponseModel value, $Res Function(NotificationPreferenceResponseModel) _then) = _$NotificationPreferenceResponseModelCopyWithImpl;
@useResult
$Res call({
 NotificationCategory? category, bool? enabled
});




}
/// @nodoc
class _$NotificationPreferenceResponseModelCopyWithImpl<$Res>
    implements $NotificationPreferenceResponseModelCopyWith<$Res> {
  _$NotificationPreferenceResponseModelCopyWithImpl(this._self, this._then);

  final NotificationPreferenceResponseModel _self;
  final $Res Function(NotificationPreferenceResponseModel) _then;

/// Create a copy of NotificationPreferenceResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = freezed,Object? enabled = freezed,}) {
  return _then(_self.copyWith(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NotificationCategory?,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationPreferenceResponseModel].
extension NotificationPreferenceResponseModelPatterns on NotificationPreferenceResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPreferenceResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPreferenceResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPreferenceResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPreferenceResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPreferenceResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPreferenceResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NotificationCategory? category,  bool? enabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPreferenceResponseModel() when $default != null:
return $default(_that.category,_that.enabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NotificationCategory? category,  bool? enabled)  $default,) {final _that = this;
switch (_that) {
case _NotificationPreferenceResponseModel():
return $default(_that.category,_that.enabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NotificationCategory? category,  bool? enabled)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPreferenceResponseModel() when $default != null:
return $default(_that.category,_that.enabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPreferenceResponseModel implements NotificationPreferenceResponseModel {
  const _NotificationPreferenceResponseModel({this.category, this.enabled});
  factory _NotificationPreferenceResponseModel.fromJson(Map<String, dynamic> json) => _$NotificationPreferenceResponseModelFromJson(json);

@override final  NotificationCategory? category;
@override final  bool? enabled;

/// Create a copy of NotificationPreferenceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPreferenceResponseModelCopyWith<_NotificationPreferenceResponseModel> get copyWith => __$NotificationPreferenceResponseModelCopyWithImpl<_NotificationPreferenceResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationPreferenceResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPreferenceResponseModel&&(identical(other.category, category) || other.category == category)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,enabled);

@override
String toString() {
  return 'NotificationPreferenceResponseModel(category: $category, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$NotificationPreferenceResponseModelCopyWith<$Res> implements $NotificationPreferenceResponseModelCopyWith<$Res> {
  factory _$NotificationPreferenceResponseModelCopyWith(_NotificationPreferenceResponseModel value, $Res Function(_NotificationPreferenceResponseModel) _then) = __$NotificationPreferenceResponseModelCopyWithImpl;
@override @useResult
$Res call({
 NotificationCategory? category, bool? enabled
});




}
/// @nodoc
class __$NotificationPreferenceResponseModelCopyWithImpl<$Res>
    implements _$NotificationPreferenceResponseModelCopyWith<$Res> {
  __$NotificationPreferenceResponseModelCopyWithImpl(this._self, this._then);

  final _NotificationPreferenceResponseModel _self;
  final $Res Function(_NotificationPreferenceResponseModel) _then;

/// Create a copy of NotificationPreferenceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = freezed,Object? enabled = freezed,}) {
  return _then(_NotificationPreferenceResponseModel(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NotificationCategory?,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$OfferResponseModel {

 String? get id; String? get kicker; String? get title; String? get body; String? get imageUrl;
/// Create a copy of OfferResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferResponseModelCopyWith<OfferResponseModel> get copyWith => _$OfferResponseModelCopyWithImpl<OfferResponseModel>(this as OfferResponseModel, _$identity);

  /// Serializes this OfferResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.kicker, kicker) || other.kicker == kicker)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,kicker,title,body,imageUrl);

@override
String toString() {
  return 'OfferResponseModel(id: $id, kicker: $kicker, title: $title, body: $body, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $OfferResponseModelCopyWith<$Res>  {
  factory $OfferResponseModelCopyWith(OfferResponseModel value, $Res Function(OfferResponseModel) _then) = _$OfferResponseModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? kicker, String? title, String? body, String? imageUrl
});




}
/// @nodoc
class _$OfferResponseModelCopyWithImpl<$Res>
    implements $OfferResponseModelCopyWith<$Res> {
  _$OfferResponseModelCopyWithImpl(this._self, this._then);

  final OfferResponseModel _self;
  final $Res Function(OfferResponseModel) _then;

/// Create a copy of OfferResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? kicker = freezed,Object? title = freezed,Object? body = freezed,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,kicker: freezed == kicker ? _self.kicker : kicker // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OfferResponseModel].
extension OfferResponseModelPatterns on OfferResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfferResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfferResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfferResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _OfferResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfferResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _OfferResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? kicker,  String? title,  String? body,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfferResponseModel() when $default != null:
return $default(_that.id,_that.kicker,_that.title,_that.body,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? kicker,  String? title,  String? body,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _OfferResponseModel():
return $default(_that.id,_that.kicker,_that.title,_that.body,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? kicker,  String? title,  String? body,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _OfferResponseModel() when $default != null:
return $default(_that.id,_that.kicker,_that.title,_that.body,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfferResponseModel implements OfferResponseModel {
  const _OfferResponseModel({this.id, this.kicker, this.title, this.body, this.imageUrl});
  factory _OfferResponseModel.fromJson(Map<String, dynamic> json) => _$OfferResponseModelFromJson(json);

@override final  String? id;
@override final  String? kicker;
@override final  String? title;
@override final  String? body;
@override final  String? imageUrl;

/// Create a copy of OfferResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferResponseModelCopyWith<_OfferResponseModel> get copyWith => __$OfferResponseModelCopyWithImpl<_OfferResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfferResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfferResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.kicker, kicker) || other.kicker == kicker)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,kicker,title,body,imageUrl);

@override
String toString() {
  return 'OfferResponseModel(id: $id, kicker: $kicker, title: $title, body: $body, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$OfferResponseModelCopyWith<$Res> implements $OfferResponseModelCopyWith<$Res> {
  factory _$OfferResponseModelCopyWith(_OfferResponseModel value, $Res Function(_OfferResponseModel) _then) = __$OfferResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? kicker, String? title, String? body, String? imageUrl
});




}
/// @nodoc
class __$OfferResponseModelCopyWithImpl<$Res>
    implements _$OfferResponseModelCopyWith<$Res> {
  __$OfferResponseModelCopyWithImpl(this._self, this._then);

  final _OfferResponseModel _self;
  final $Res Function(_OfferResponseModel) _then;

/// Create a copy of OfferResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? kicker = freezed,Object? title = freezed,Object? body = freezed,Object? imageUrl = freezed,}) {
  return _then(_OfferResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,kicker: freezed == kicker ? _self.kicker : kicker // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PackageResponseModel {

 int? get id; String? get name; String? get code; String? get description; int? get downloadKbps; int? get uploadKbps;@NullableDecimalConverter() double? get price; String? get currency; int? get validityDays; bool? get isActive; String? get rateLimit;
/// Create a copy of PackageResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageResponseModelCopyWith<PackageResponseModel> get copyWith => _$PackageResponseModelCopyWithImpl<PackageResponseModel>(this as PackageResponseModel, _$identity);

  /// Serializes this PackageResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.downloadKbps, downloadKbps) || other.downloadKbps == downloadKbps)&&(identical(other.uploadKbps, uploadKbps) || other.uploadKbps == uploadKbps)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.validityDays, validityDays) || other.validityDays == validityDays)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.rateLimit, rateLimit) || other.rateLimit == rateLimit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,description,downloadKbps,uploadKbps,price,currency,validityDays,isActive,rateLimit);

@override
String toString() {
  return 'PackageResponseModel(id: $id, name: $name, code: $code, description: $description, downloadKbps: $downloadKbps, uploadKbps: $uploadKbps, price: $price, currency: $currency, validityDays: $validityDays, isActive: $isActive, rateLimit: $rateLimit)';
}


}

/// @nodoc
abstract mixin class $PackageResponseModelCopyWith<$Res>  {
  factory $PackageResponseModelCopyWith(PackageResponseModel value, $Res Function(PackageResponseModel) _then) = _$PackageResponseModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? code, String? description, int? downloadKbps, int? uploadKbps,@NullableDecimalConverter() double? price, String? currency, int? validityDays, bool? isActive, String? rateLimit
});




}
/// @nodoc
class _$PackageResponseModelCopyWithImpl<$Res>
    implements $PackageResponseModelCopyWith<$Res> {
  _$PackageResponseModelCopyWithImpl(this._self, this._then);

  final PackageResponseModel _self;
  final $Res Function(PackageResponseModel) _then;

/// Create a copy of PackageResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? code = freezed,Object? description = freezed,Object? downloadKbps = freezed,Object? uploadKbps = freezed,Object? price = freezed,Object? currency = freezed,Object? validityDays = freezed,Object? isActive = freezed,Object? rateLimit = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,downloadKbps: freezed == downloadKbps ? _self.downloadKbps : downloadKbps // ignore: cast_nullable_to_non_nullable
as int?,uploadKbps: freezed == uploadKbps ? _self.uploadKbps : uploadKbps // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,validityDays: freezed == validityDays ? _self.validityDays : validityDays // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,rateLimit: freezed == rateLimit ? _self.rateLimit : rateLimit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageResponseModel].
extension PackageResponseModelPatterns on PackageResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PackageResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PackageResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? code,  String? description,  int? downloadKbps,  int? uploadKbps, @NullableDecimalConverter()  double? price,  String? currency,  int? validityDays,  bool? isActive,  String? rateLimit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.description,_that.downloadKbps,_that.uploadKbps,_that.price,_that.currency,_that.validityDays,_that.isActive,_that.rateLimit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? code,  String? description,  int? downloadKbps,  int? uploadKbps, @NullableDecimalConverter()  double? price,  String? currency,  int? validityDays,  bool? isActive,  String? rateLimit)  $default,) {final _that = this;
switch (_that) {
case _PackageResponseModel():
return $default(_that.id,_that.name,_that.code,_that.description,_that.downloadKbps,_that.uploadKbps,_that.price,_that.currency,_that.validityDays,_that.isActive,_that.rateLimit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? code,  String? description,  int? downloadKbps,  int? uploadKbps, @NullableDecimalConverter()  double? price,  String? currency,  int? validityDays,  bool? isActive,  String? rateLimit)?  $default,) {final _that = this;
switch (_that) {
case _PackageResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.description,_that.downloadKbps,_that.uploadKbps,_that.price,_that.currency,_that.validityDays,_that.isActive,_that.rateLimit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageResponseModel implements PackageResponseModel {
  const _PackageResponseModel({this.id, this.name, this.code, this.description, this.downloadKbps, this.uploadKbps, @NullableDecimalConverter() this.price, this.currency, this.validityDays, this.isActive, this.rateLimit});
  factory _PackageResponseModel.fromJson(Map<String, dynamic> json) => _$PackageResponseModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? code;
@override final  String? description;
@override final  int? downloadKbps;
@override final  int? uploadKbps;
@override@NullableDecimalConverter() final  double? price;
@override final  String? currency;
@override final  int? validityDays;
@override final  bool? isActive;
@override final  String? rateLimit;

/// Create a copy of PackageResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageResponseModelCopyWith<_PackageResponseModel> get copyWith => __$PackageResponseModelCopyWithImpl<_PackageResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.downloadKbps, downloadKbps) || other.downloadKbps == downloadKbps)&&(identical(other.uploadKbps, uploadKbps) || other.uploadKbps == uploadKbps)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.validityDays, validityDays) || other.validityDays == validityDays)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.rateLimit, rateLimit) || other.rateLimit == rateLimit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,description,downloadKbps,uploadKbps,price,currency,validityDays,isActive,rateLimit);

@override
String toString() {
  return 'PackageResponseModel(id: $id, name: $name, code: $code, description: $description, downloadKbps: $downloadKbps, uploadKbps: $uploadKbps, price: $price, currency: $currency, validityDays: $validityDays, isActive: $isActive, rateLimit: $rateLimit)';
}


}

/// @nodoc
abstract mixin class _$PackageResponseModelCopyWith<$Res> implements $PackageResponseModelCopyWith<$Res> {
  factory _$PackageResponseModelCopyWith(_PackageResponseModel value, $Res Function(_PackageResponseModel) _then) = __$PackageResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? code, String? description, int? downloadKbps, int? uploadKbps,@NullableDecimalConverter() double? price, String? currency, int? validityDays, bool? isActive, String? rateLimit
});




}
/// @nodoc
class __$PackageResponseModelCopyWithImpl<$Res>
    implements _$PackageResponseModelCopyWith<$Res> {
  __$PackageResponseModelCopyWithImpl(this._self, this._then);

  final _PackageResponseModel _self;
  final $Res Function(_PackageResponseModel) _then;

/// Create a copy of PackageResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? code = freezed,Object? description = freezed,Object? downloadKbps = freezed,Object? uploadKbps = freezed,Object? price = freezed,Object? currency = freezed,Object? validityDays = freezed,Object? isActive = freezed,Object? rateLimit = freezed,}) {
  return _then(_PackageResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,downloadKbps: freezed == downloadKbps ? _self.downloadKbps : downloadKbps // ignore: cast_nullable_to_non_nullable
as int?,uploadKbps: freezed == uploadKbps ? _self.uploadKbps : uploadKbps // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,validityDays: freezed == validityDays ? _self.validityDays : validityDays // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,rateLimit: freezed == rateLimit ? _self.rateLimit : rateLimit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RedeemOptionResponseModel {

 String? get id; String? get title; int? get cost;
/// Create a copy of RedeemOptionResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedeemOptionResponseModelCopyWith<RedeemOptionResponseModel> get copyWith => _$RedeemOptionResponseModelCopyWithImpl<RedeemOptionResponseModel>(this as RedeemOptionResponseModel, _$identity);

  /// Serializes this RedeemOptionResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedeemOptionResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.cost, cost) || other.cost == cost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,cost);

@override
String toString() {
  return 'RedeemOptionResponseModel(id: $id, title: $title, cost: $cost)';
}


}

/// @nodoc
abstract mixin class $RedeemOptionResponseModelCopyWith<$Res>  {
  factory $RedeemOptionResponseModelCopyWith(RedeemOptionResponseModel value, $Res Function(RedeemOptionResponseModel) _then) = _$RedeemOptionResponseModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, int? cost
});




}
/// @nodoc
class _$RedeemOptionResponseModelCopyWithImpl<$Res>
    implements $RedeemOptionResponseModelCopyWith<$Res> {
  _$RedeemOptionResponseModelCopyWithImpl(this._self, this._then);

  final RedeemOptionResponseModel _self;
  final $Res Function(RedeemOptionResponseModel) _then;

/// Create a copy of RedeemOptionResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? cost = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RedeemOptionResponseModel].
extension RedeemOptionResponseModelPatterns on RedeemOptionResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedeemOptionResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedeemOptionResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedeemOptionResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RedeemOptionResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedeemOptionResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RedeemOptionResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? title,  int? cost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedeemOptionResponseModel() when $default != null:
return $default(_that.id,_that.title,_that.cost);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? title,  int? cost)  $default,) {final _that = this;
switch (_that) {
case _RedeemOptionResponseModel():
return $default(_that.id,_that.title,_that.cost);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? title,  int? cost)?  $default,) {final _that = this;
switch (_that) {
case _RedeemOptionResponseModel() when $default != null:
return $default(_that.id,_that.title,_that.cost);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RedeemOptionResponseModel implements RedeemOptionResponseModel {
  const _RedeemOptionResponseModel({this.id, this.title, this.cost});
  factory _RedeemOptionResponseModel.fromJson(Map<String, dynamic> json) => _$RedeemOptionResponseModelFromJson(json);

@override final  String? id;
@override final  String? title;
@override final  int? cost;

/// Create a copy of RedeemOptionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedeemOptionResponseModelCopyWith<_RedeemOptionResponseModel> get copyWith => __$RedeemOptionResponseModelCopyWithImpl<_RedeemOptionResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RedeemOptionResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedeemOptionResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.cost, cost) || other.cost == cost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,cost);

@override
String toString() {
  return 'RedeemOptionResponseModel(id: $id, title: $title, cost: $cost)';
}


}

/// @nodoc
abstract mixin class _$RedeemOptionResponseModelCopyWith<$Res> implements $RedeemOptionResponseModelCopyWith<$Res> {
  factory _$RedeemOptionResponseModelCopyWith(_RedeemOptionResponseModel value, $Res Function(_RedeemOptionResponseModel) _then) = __$RedeemOptionResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, int? cost
});




}
/// @nodoc
class __$RedeemOptionResponseModelCopyWithImpl<$Res>
    implements _$RedeemOptionResponseModelCopyWith<$Res> {
  __$RedeemOptionResponseModelCopyWithImpl(this._self, this._then);

  final _RedeemOptionResponseModel _self;
  final $Res Function(_RedeemOptionResponseModel) _then;

/// Create a copy of RedeemOptionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? cost = freezed,}) {
  return _then(_RedeemOptionResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$RewardLedgerResponseModel {

 String? get id; String? get description; DateTime? get occurredAt; int? get delta;
/// Create a copy of RewardLedgerResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardLedgerResponseModelCopyWith<RewardLedgerResponseModel> get copyWith => _$RewardLedgerResponseModelCopyWithImpl<RewardLedgerResponseModel>(this as RewardLedgerResponseModel, _$identity);

  /// Serializes this RewardLedgerResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardLedgerResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.delta, delta) || other.delta == delta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,occurredAt,delta);

@override
String toString() {
  return 'RewardLedgerResponseModel(id: $id, description: $description, occurredAt: $occurredAt, delta: $delta)';
}


}

/// @nodoc
abstract mixin class $RewardLedgerResponseModelCopyWith<$Res>  {
  factory $RewardLedgerResponseModelCopyWith(RewardLedgerResponseModel value, $Res Function(RewardLedgerResponseModel) _then) = _$RewardLedgerResponseModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? description, DateTime? occurredAt, int? delta
});




}
/// @nodoc
class _$RewardLedgerResponseModelCopyWithImpl<$Res>
    implements $RewardLedgerResponseModelCopyWith<$Res> {
  _$RewardLedgerResponseModelCopyWithImpl(this._self, this._then);

  final RewardLedgerResponseModel _self;
  final $Res Function(RewardLedgerResponseModel) _then;

/// Create a copy of RewardLedgerResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? description = freezed,Object? occurredAt = freezed,Object? delta = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,delta: freezed == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RewardLedgerResponseModel].
extension RewardLedgerResponseModelPatterns on RewardLedgerResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardLedgerResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardLedgerResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardLedgerResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RewardLedgerResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardLedgerResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RewardLedgerResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? description,  DateTime? occurredAt,  int? delta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardLedgerResponseModel() when $default != null:
return $default(_that.id,_that.description,_that.occurredAt,_that.delta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? description,  DateTime? occurredAt,  int? delta)  $default,) {final _that = this;
switch (_that) {
case _RewardLedgerResponseModel():
return $default(_that.id,_that.description,_that.occurredAt,_that.delta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? description,  DateTime? occurredAt,  int? delta)?  $default,) {final _that = this;
switch (_that) {
case _RewardLedgerResponseModel() when $default != null:
return $default(_that.id,_that.description,_that.occurredAt,_that.delta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardLedgerResponseModel implements RewardLedgerResponseModel {
  const _RewardLedgerResponseModel({this.id, this.description, this.occurredAt, this.delta});
  factory _RewardLedgerResponseModel.fromJson(Map<String, dynamic> json) => _$RewardLedgerResponseModelFromJson(json);

@override final  String? id;
@override final  String? description;
@override final  DateTime? occurredAt;
@override final  int? delta;

/// Create a copy of RewardLedgerResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardLedgerResponseModelCopyWith<_RewardLedgerResponseModel> get copyWith => __$RewardLedgerResponseModelCopyWithImpl<_RewardLedgerResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardLedgerResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardLedgerResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.delta, delta) || other.delta == delta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,occurredAt,delta);

@override
String toString() {
  return 'RewardLedgerResponseModel(id: $id, description: $description, occurredAt: $occurredAt, delta: $delta)';
}


}

/// @nodoc
abstract mixin class _$RewardLedgerResponseModelCopyWith<$Res> implements $RewardLedgerResponseModelCopyWith<$Res> {
  factory _$RewardLedgerResponseModelCopyWith(_RewardLedgerResponseModel value, $Res Function(_RewardLedgerResponseModel) _then) = __$RewardLedgerResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? description, DateTime? occurredAt, int? delta
});




}
/// @nodoc
class __$RewardLedgerResponseModelCopyWithImpl<$Res>
    implements _$RewardLedgerResponseModelCopyWith<$Res> {
  __$RewardLedgerResponseModelCopyWithImpl(this._self, this._then);

  final _RewardLedgerResponseModel _self;
  final $Res Function(_RewardLedgerResponseModel) _then;

/// Create a copy of RewardLedgerResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? description = freezed,Object? occurredAt = freezed,Object? delta = freezed,}) {
  return _then(_RewardLedgerResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,delta: freezed == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$RewardsResponseModel {

 int? get points; int? get pointsPerCurrencyUnit; List<RedeemOptionResponseModel> get options; List<RewardLedgerResponseModel> get ledger;
/// Create a copy of RewardsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardsResponseModelCopyWith<RewardsResponseModel> get copyWith => _$RewardsResponseModelCopyWithImpl<RewardsResponseModel>(this as RewardsResponseModel, _$identity);

  /// Serializes this RewardsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardsResponseModel&&(identical(other.points, points) || other.points == points)&&(identical(other.pointsPerCurrencyUnit, pointsPerCurrencyUnit) || other.pointsPerCurrencyUnit == pointsPerCurrencyUnit)&&const DeepCollectionEquality().equals(other.options, options)&&const DeepCollectionEquality().equals(other.ledger, ledger));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,points,pointsPerCurrencyUnit,const DeepCollectionEquality().hash(options),const DeepCollectionEquality().hash(ledger));

@override
String toString() {
  return 'RewardsResponseModel(points: $points, pointsPerCurrencyUnit: $pointsPerCurrencyUnit, options: $options, ledger: $ledger)';
}


}

/// @nodoc
abstract mixin class $RewardsResponseModelCopyWith<$Res>  {
  factory $RewardsResponseModelCopyWith(RewardsResponseModel value, $Res Function(RewardsResponseModel) _then) = _$RewardsResponseModelCopyWithImpl;
@useResult
$Res call({
 int? points, int? pointsPerCurrencyUnit, List<RedeemOptionResponseModel> options, List<RewardLedgerResponseModel> ledger
});




}
/// @nodoc
class _$RewardsResponseModelCopyWithImpl<$Res>
    implements $RewardsResponseModelCopyWith<$Res> {
  _$RewardsResponseModelCopyWithImpl(this._self, this._then);

  final RewardsResponseModel _self;
  final $Res Function(RewardsResponseModel) _then;

/// Create a copy of RewardsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = freezed,Object? pointsPerCurrencyUnit = freezed,Object? options = null,Object? ledger = null,}) {
  return _then(_self.copyWith(
points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int?,pointsPerCurrencyUnit: freezed == pointsPerCurrencyUnit ? _self.pointsPerCurrencyUnit : pointsPerCurrencyUnit // ignore: cast_nullable_to_non_nullable
as int?,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<RedeemOptionResponseModel>,ledger: null == ledger ? _self.ledger : ledger // ignore: cast_nullable_to_non_nullable
as List<RewardLedgerResponseModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [RewardsResponseModel].
extension RewardsResponseModelPatterns on RewardsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RewardsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RewardsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? points,  int? pointsPerCurrencyUnit,  List<RedeemOptionResponseModel> options,  List<RewardLedgerResponseModel> ledger)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardsResponseModel() when $default != null:
return $default(_that.points,_that.pointsPerCurrencyUnit,_that.options,_that.ledger);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? points,  int? pointsPerCurrencyUnit,  List<RedeemOptionResponseModel> options,  List<RewardLedgerResponseModel> ledger)  $default,) {final _that = this;
switch (_that) {
case _RewardsResponseModel():
return $default(_that.points,_that.pointsPerCurrencyUnit,_that.options,_that.ledger);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? points,  int? pointsPerCurrencyUnit,  List<RedeemOptionResponseModel> options,  List<RewardLedgerResponseModel> ledger)?  $default,) {final _that = this;
switch (_that) {
case _RewardsResponseModel() when $default != null:
return $default(_that.points,_that.pointsPerCurrencyUnit,_that.options,_that.ledger);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardsResponseModel implements RewardsResponseModel {
  const _RewardsResponseModel({this.points, this.pointsPerCurrencyUnit, final  List<RedeemOptionResponseModel> options = const <RedeemOptionResponseModel>[], final  List<RewardLedgerResponseModel> ledger = const <RewardLedgerResponseModel>[]}): _options = options,_ledger = ledger;
  factory _RewardsResponseModel.fromJson(Map<String, dynamic> json) => _$RewardsResponseModelFromJson(json);

@override final  int? points;
@override final  int? pointsPerCurrencyUnit;
 final  List<RedeemOptionResponseModel> _options;
@override@JsonKey() List<RedeemOptionResponseModel> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

 final  List<RewardLedgerResponseModel> _ledger;
@override@JsonKey() List<RewardLedgerResponseModel> get ledger {
  if (_ledger is EqualUnmodifiableListView) return _ledger;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ledger);
}


/// Create a copy of RewardsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardsResponseModelCopyWith<_RewardsResponseModel> get copyWith => __$RewardsResponseModelCopyWithImpl<_RewardsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardsResponseModel&&(identical(other.points, points) || other.points == points)&&(identical(other.pointsPerCurrencyUnit, pointsPerCurrencyUnit) || other.pointsPerCurrencyUnit == pointsPerCurrencyUnit)&&const DeepCollectionEquality().equals(other._options, _options)&&const DeepCollectionEquality().equals(other._ledger, _ledger));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,points,pointsPerCurrencyUnit,const DeepCollectionEquality().hash(_options),const DeepCollectionEquality().hash(_ledger));

@override
String toString() {
  return 'RewardsResponseModel(points: $points, pointsPerCurrencyUnit: $pointsPerCurrencyUnit, options: $options, ledger: $ledger)';
}


}

/// @nodoc
abstract mixin class _$RewardsResponseModelCopyWith<$Res> implements $RewardsResponseModelCopyWith<$Res> {
  factory _$RewardsResponseModelCopyWith(_RewardsResponseModel value, $Res Function(_RewardsResponseModel) _then) = __$RewardsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int? points, int? pointsPerCurrencyUnit, List<RedeemOptionResponseModel> options, List<RewardLedgerResponseModel> ledger
});




}
/// @nodoc
class __$RewardsResponseModelCopyWithImpl<$Res>
    implements _$RewardsResponseModelCopyWith<$Res> {
  __$RewardsResponseModelCopyWithImpl(this._self, this._then);

  final _RewardsResponseModel _self;
  final $Res Function(_RewardsResponseModel) _then;

/// Create a copy of RewardsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = freezed,Object? pointsPerCurrencyUnit = freezed,Object? options = null,Object? ledger = null,}) {
  return _then(_RewardsResponseModel(
points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int?,pointsPerCurrencyUnit: freezed == pointsPerCurrencyUnit ? _self.pointsPerCurrencyUnit : pointsPerCurrencyUnit // ignore: cast_nullable_to_non_nullable
as int?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<RedeemOptionResponseModel>,ledger: null == ledger ? _self._ledger : ledger // ignore: cast_nullable_to_non_nullable
as List<RewardLedgerResponseModel>,
  ));
}


}


/// @nodoc
mixin _$ReferralInviteResponseModel {

 String? get id; String? get name; ReferralInviteStatus? get status; String? get progressLabel;
/// Create a copy of ReferralInviteResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferralInviteResponseModelCopyWith<ReferralInviteResponseModel> get copyWith => _$ReferralInviteResponseModelCopyWithImpl<ReferralInviteResponseModel>(this as ReferralInviteResponseModel, _$identity);

  /// Serializes this ReferralInviteResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferralInviteResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.progressLabel, progressLabel) || other.progressLabel == progressLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,progressLabel);

@override
String toString() {
  return 'ReferralInviteResponseModel(id: $id, name: $name, status: $status, progressLabel: $progressLabel)';
}


}

/// @nodoc
abstract mixin class $ReferralInviteResponseModelCopyWith<$Res>  {
  factory $ReferralInviteResponseModelCopyWith(ReferralInviteResponseModel value, $Res Function(ReferralInviteResponseModel) _then) = _$ReferralInviteResponseModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, ReferralInviteStatus? status, String? progressLabel
});




}
/// @nodoc
class _$ReferralInviteResponseModelCopyWithImpl<$Res>
    implements $ReferralInviteResponseModelCopyWith<$Res> {
  _$ReferralInviteResponseModelCopyWithImpl(this._self, this._then);

  final ReferralInviteResponseModel _self;
  final $Res Function(ReferralInviteResponseModel) _then;

/// Create a copy of ReferralInviteResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? status = freezed,Object? progressLabel = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReferralInviteStatus?,progressLabel: freezed == progressLabel ? _self.progressLabel : progressLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReferralInviteResponseModel].
extension ReferralInviteResponseModelPatterns on ReferralInviteResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferralInviteResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferralInviteResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferralInviteResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ReferralInviteResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferralInviteResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReferralInviteResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  ReferralInviteStatus? status,  String? progressLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferralInviteResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.progressLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  ReferralInviteStatus? status,  String? progressLabel)  $default,) {final _that = this;
switch (_that) {
case _ReferralInviteResponseModel():
return $default(_that.id,_that.name,_that.status,_that.progressLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  ReferralInviteStatus? status,  String? progressLabel)?  $default,) {final _that = this;
switch (_that) {
case _ReferralInviteResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.progressLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReferralInviteResponseModel implements ReferralInviteResponseModel {
  const _ReferralInviteResponseModel({this.id, this.name, this.status, this.progressLabel});
  factory _ReferralInviteResponseModel.fromJson(Map<String, dynamic> json) => _$ReferralInviteResponseModelFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  ReferralInviteStatus? status;
@override final  String? progressLabel;

/// Create a copy of ReferralInviteResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferralInviteResponseModelCopyWith<_ReferralInviteResponseModel> get copyWith => __$ReferralInviteResponseModelCopyWithImpl<_ReferralInviteResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReferralInviteResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferralInviteResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.progressLabel, progressLabel) || other.progressLabel == progressLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,progressLabel);

@override
String toString() {
  return 'ReferralInviteResponseModel(id: $id, name: $name, status: $status, progressLabel: $progressLabel)';
}


}

/// @nodoc
abstract mixin class _$ReferralInviteResponseModelCopyWith<$Res> implements $ReferralInviteResponseModelCopyWith<$Res> {
  factory _$ReferralInviteResponseModelCopyWith(_ReferralInviteResponseModel value, $Res Function(_ReferralInviteResponseModel) _then) = __$ReferralInviteResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, ReferralInviteStatus? status, String? progressLabel
});




}
/// @nodoc
class __$ReferralInviteResponseModelCopyWithImpl<$Res>
    implements _$ReferralInviteResponseModelCopyWith<$Res> {
  __$ReferralInviteResponseModelCopyWithImpl(this._self, this._then);

  final _ReferralInviteResponseModel _self;
  final $Res Function(_ReferralInviteResponseModel) _then;

/// Create a copy of ReferralInviteResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? status = freezed,Object? progressLabel = freezed,}) {
  return _then(_ReferralInviteResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReferralInviteStatus?,progressLabel: freezed == progressLabel ? _self.progressLabel : progressLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReferralResponseModel {

 String? get code; int? get invitesUsed; int? get pointsEarned; List<ReferralInviteResponseModel> get invites;
/// Create a copy of ReferralResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferralResponseModelCopyWith<ReferralResponseModel> get copyWith => _$ReferralResponseModelCopyWithImpl<ReferralResponseModel>(this as ReferralResponseModel, _$identity);

  /// Serializes this ReferralResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferralResponseModel&&(identical(other.code, code) || other.code == code)&&(identical(other.invitesUsed, invitesUsed) || other.invitesUsed == invitesUsed)&&(identical(other.pointsEarned, pointsEarned) || other.pointsEarned == pointsEarned)&&const DeepCollectionEquality().equals(other.invites, invites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,invitesUsed,pointsEarned,const DeepCollectionEquality().hash(invites));

@override
String toString() {
  return 'ReferralResponseModel(code: $code, invitesUsed: $invitesUsed, pointsEarned: $pointsEarned, invites: $invites)';
}


}

/// @nodoc
abstract mixin class $ReferralResponseModelCopyWith<$Res>  {
  factory $ReferralResponseModelCopyWith(ReferralResponseModel value, $Res Function(ReferralResponseModel) _then) = _$ReferralResponseModelCopyWithImpl;
@useResult
$Res call({
 String? code, int? invitesUsed, int? pointsEarned, List<ReferralInviteResponseModel> invites
});




}
/// @nodoc
class _$ReferralResponseModelCopyWithImpl<$Res>
    implements $ReferralResponseModelCopyWith<$Res> {
  _$ReferralResponseModelCopyWithImpl(this._self, this._then);

  final ReferralResponseModel _self;
  final $Res Function(ReferralResponseModel) _then;

/// Create a copy of ReferralResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? invitesUsed = freezed,Object? pointsEarned = freezed,Object? invites = null,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,invitesUsed: freezed == invitesUsed ? _self.invitesUsed : invitesUsed // ignore: cast_nullable_to_non_nullable
as int?,pointsEarned: freezed == pointsEarned ? _self.pointsEarned : pointsEarned // ignore: cast_nullable_to_non_nullable
as int?,invites: null == invites ? _self.invites : invites // ignore: cast_nullable_to_non_nullable
as List<ReferralInviteResponseModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReferralResponseModel].
extension ReferralResponseModelPatterns on ReferralResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferralResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferralResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferralResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ReferralResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferralResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReferralResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? code,  int? invitesUsed,  int? pointsEarned,  List<ReferralInviteResponseModel> invites)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferralResponseModel() when $default != null:
return $default(_that.code,_that.invitesUsed,_that.pointsEarned,_that.invites);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? code,  int? invitesUsed,  int? pointsEarned,  List<ReferralInviteResponseModel> invites)  $default,) {final _that = this;
switch (_that) {
case _ReferralResponseModel():
return $default(_that.code,_that.invitesUsed,_that.pointsEarned,_that.invites);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? code,  int? invitesUsed,  int? pointsEarned,  List<ReferralInviteResponseModel> invites)?  $default,) {final _that = this;
switch (_that) {
case _ReferralResponseModel() when $default != null:
return $default(_that.code,_that.invitesUsed,_that.pointsEarned,_that.invites);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReferralResponseModel implements ReferralResponseModel {
  const _ReferralResponseModel({this.code, this.invitesUsed, this.pointsEarned, final  List<ReferralInviteResponseModel> invites = const <ReferralInviteResponseModel>[]}): _invites = invites;
  factory _ReferralResponseModel.fromJson(Map<String, dynamic> json) => _$ReferralResponseModelFromJson(json);

@override final  String? code;
@override final  int? invitesUsed;
@override final  int? pointsEarned;
 final  List<ReferralInviteResponseModel> _invites;
@override@JsonKey() List<ReferralInviteResponseModel> get invites {
  if (_invites is EqualUnmodifiableListView) return _invites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_invites);
}


/// Create a copy of ReferralResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferralResponseModelCopyWith<_ReferralResponseModel> get copyWith => __$ReferralResponseModelCopyWithImpl<_ReferralResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReferralResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferralResponseModel&&(identical(other.code, code) || other.code == code)&&(identical(other.invitesUsed, invitesUsed) || other.invitesUsed == invitesUsed)&&(identical(other.pointsEarned, pointsEarned) || other.pointsEarned == pointsEarned)&&const DeepCollectionEquality().equals(other._invites, _invites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,invitesUsed,pointsEarned,const DeepCollectionEquality().hash(_invites));

@override
String toString() {
  return 'ReferralResponseModel(code: $code, invitesUsed: $invitesUsed, pointsEarned: $pointsEarned, invites: $invites)';
}


}

/// @nodoc
abstract mixin class _$ReferralResponseModelCopyWith<$Res> implements $ReferralResponseModelCopyWith<$Res> {
  factory _$ReferralResponseModelCopyWith(_ReferralResponseModel value, $Res Function(_ReferralResponseModel) _then) = __$ReferralResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? code, int? invitesUsed, int? pointsEarned, List<ReferralInviteResponseModel> invites
});




}
/// @nodoc
class __$ReferralResponseModelCopyWithImpl<$Res>
    implements _$ReferralResponseModelCopyWith<$Res> {
  __$ReferralResponseModelCopyWithImpl(this._self, this._then);

  final _ReferralResponseModel _self;
  final $Res Function(_ReferralResponseModel) _then;

/// Create a copy of ReferralResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? invitesUsed = freezed,Object? pointsEarned = freezed,Object? invites = null,}) {
  return _then(_ReferralResponseModel(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,invitesUsed: freezed == invitesUsed ? _self.invitesUsed : invitesUsed // ignore: cast_nullable_to_non_nullable
as int?,pointsEarned: freezed == pointsEarned ? _self.pointsEarned : pointsEarned // ignore: cast_nullable_to_non_nullable
as int?,invites: null == invites ? _self._invites : invites // ignore: cast_nullable_to_non_nullable
as List<ReferralInviteResponseModel>,
  ));
}


}


/// @nodoc
mixin _$TicketResponseModel {

 String? get id; String? get title; TicketStatus? get status; DateTime? get createdAt; int? get replyCount; int? get connectionId; String? get eta;
/// Create a copy of TicketResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketResponseModelCopyWith<TicketResponseModel> get copyWith => _$TicketResponseModelCopyWithImpl<TicketResponseModel>(this as TicketResponseModel, _$identity);

  /// Serializes this TicketResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.connectionId, connectionId) || other.connectionId == connectionId)&&(identical(other.eta, eta) || other.eta == eta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,status,createdAt,replyCount,connectionId,eta);

@override
String toString() {
  return 'TicketResponseModel(id: $id, title: $title, status: $status, createdAt: $createdAt, replyCount: $replyCount, connectionId: $connectionId, eta: $eta)';
}


}

/// @nodoc
abstract mixin class $TicketResponseModelCopyWith<$Res>  {
  factory $TicketResponseModelCopyWith(TicketResponseModel value, $Res Function(TicketResponseModel) _then) = _$TicketResponseModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, TicketStatus? status, DateTime? createdAt, int? replyCount, int? connectionId, String? eta
});




}
/// @nodoc
class _$TicketResponseModelCopyWithImpl<$Res>
    implements $TicketResponseModelCopyWith<$Res> {
  _$TicketResponseModelCopyWithImpl(this._self, this._then);

  final TicketResponseModel _self;
  final $Res Function(TicketResponseModel) _then;

/// Create a copy of TicketResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? status = freezed,Object? createdAt = freezed,Object? replyCount = freezed,Object? connectionId = freezed,Object? eta = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,replyCount: freezed == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int?,connectionId: freezed == connectionId ? _self.connectionId : connectionId // ignore: cast_nullable_to_non_nullable
as int?,eta: freezed == eta ? _self.eta : eta // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketResponseModel].
extension TicketResponseModelPatterns on TicketResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _TicketResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _TicketResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? title,  TicketStatus? status,  DateTime? createdAt,  int? replyCount,  int? connectionId,  String? eta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketResponseModel() when $default != null:
return $default(_that.id,_that.title,_that.status,_that.createdAt,_that.replyCount,_that.connectionId,_that.eta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? title,  TicketStatus? status,  DateTime? createdAt,  int? replyCount,  int? connectionId,  String? eta)  $default,) {final _that = this;
switch (_that) {
case _TicketResponseModel():
return $default(_that.id,_that.title,_that.status,_that.createdAt,_that.replyCount,_that.connectionId,_that.eta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? title,  TicketStatus? status,  DateTime? createdAt,  int? replyCount,  int? connectionId,  String? eta)?  $default,) {final _that = this;
switch (_that) {
case _TicketResponseModel() when $default != null:
return $default(_that.id,_that.title,_that.status,_that.createdAt,_that.replyCount,_that.connectionId,_that.eta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketResponseModel implements TicketResponseModel {
  const _TicketResponseModel({this.id, this.title, this.status, this.createdAt, this.replyCount, this.connectionId, this.eta});
  factory _TicketResponseModel.fromJson(Map<String, dynamic> json) => _$TicketResponseModelFromJson(json);

@override final  String? id;
@override final  String? title;
@override final  TicketStatus? status;
@override final  DateTime? createdAt;
@override final  int? replyCount;
@override final  int? connectionId;
@override final  String? eta;

/// Create a copy of TicketResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketResponseModelCopyWith<_TicketResponseModel> get copyWith => __$TicketResponseModelCopyWithImpl<_TicketResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.connectionId, connectionId) || other.connectionId == connectionId)&&(identical(other.eta, eta) || other.eta == eta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,status,createdAt,replyCount,connectionId,eta);

@override
String toString() {
  return 'TicketResponseModel(id: $id, title: $title, status: $status, createdAt: $createdAt, replyCount: $replyCount, connectionId: $connectionId, eta: $eta)';
}


}

/// @nodoc
abstract mixin class _$TicketResponseModelCopyWith<$Res> implements $TicketResponseModelCopyWith<$Res> {
  factory _$TicketResponseModelCopyWith(_TicketResponseModel value, $Res Function(_TicketResponseModel) _then) = __$TicketResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, TicketStatus? status, DateTime? createdAt, int? replyCount, int? connectionId, String? eta
});




}
/// @nodoc
class __$TicketResponseModelCopyWithImpl<$Res>
    implements _$TicketResponseModelCopyWith<$Res> {
  __$TicketResponseModelCopyWithImpl(this._self, this._then);

  final _TicketResponseModel _self;
  final $Res Function(_TicketResponseModel) _then;

/// Create a copy of TicketResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? status = freezed,Object? createdAt = freezed,Object? replyCount = freezed,Object? connectionId = freezed,Object? eta = freezed,}) {
  return _then(_TicketResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,replyCount: freezed == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int?,connectionId: freezed == connectionId ? _self.connectionId : connectionId // ignore: cast_nullable_to_non_nullable
as int?,eta: freezed == eta ? _self.eta : eta // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TicketMessageResponseModel {

 String? get id; String? get body; DateTime? get sentAt; bool? get fromCustomer; String? get authorLabel;
/// Create a copy of TicketMessageResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketMessageResponseModelCopyWith<TicketMessageResponseModel> get copyWith => _$TicketMessageResponseModelCopyWithImpl<TicketMessageResponseModel>(this as TicketMessageResponseModel, _$identity);

  /// Serializes this TicketMessageResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketMessageResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.body, body) || other.body == body)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.fromCustomer, fromCustomer) || other.fromCustomer == fromCustomer)&&(identical(other.authorLabel, authorLabel) || other.authorLabel == authorLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,body,sentAt,fromCustomer,authorLabel);

@override
String toString() {
  return 'TicketMessageResponseModel(id: $id, body: $body, sentAt: $sentAt, fromCustomer: $fromCustomer, authorLabel: $authorLabel)';
}


}

/// @nodoc
abstract mixin class $TicketMessageResponseModelCopyWith<$Res>  {
  factory $TicketMessageResponseModelCopyWith(TicketMessageResponseModel value, $Res Function(TicketMessageResponseModel) _then) = _$TicketMessageResponseModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? body, DateTime? sentAt, bool? fromCustomer, String? authorLabel
});




}
/// @nodoc
class _$TicketMessageResponseModelCopyWithImpl<$Res>
    implements $TicketMessageResponseModelCopyWith<$Res> {
  _$TicketMessageResponseModelCopyWithImpl(this._self, this._then);

  final TicketMessageResponseModel _self;
  final $Res Function(TicketMessageResponseModel) _then;

/// Create a copy of TicketMessageResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? body = freezed,Object? sentAt = freezed,Object? fromCustomer = freezed,Object? authorLabel = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,fromCustomer: freezed == fromCustomer ? _self.fromCustomer : fromCustomer // ignore: cast_nullable_to_non_nullable
as bool?,authorLabel: freezed == authorLabel ? _self.authorLabel : authorLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketMessageResponseModel].
extension TicketMessageResponseModelPatterns on TicketMessageResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketMessageResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketMessageResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketMessageResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _TicketMessageResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketMessageResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _TicketMessageResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? body,  DateTime? sentAt,  bool? fromCustomer,  String? authorLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketMessageResponseModel() when $default != null:
return $default(_that.id,_that.body,_that.sentAt,_that.fromCustomer,_that.authorLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? body,  DateTime? sentAt,  bool? fromCustomer,  String? authorLabel)  $default,) {final _that = this;
switch (_that) {
case _TicketMessageResponseModel():
return $default(_that.id,_that.body,_that.sentAt,_that.fromCustomer,_that.authorLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? body,  DateTime? sentAt,  bool? fromCustomer,  String? authorLabel)?  $default,) {final _that = this;
switch (_that) {
case _TicketMessageResponseModel() when $default != null:
return $default(_that.id,_that.body,_that.sentAt,_that.fromCustomer,_that.authorLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketMessageResponseModel implements TicketMessageResponseModel {
  const _TicketMessageResponseModel({this.id, this.body, this.sentAt, this.fromCustomer, this.authorLabel});
  factory _TicketMessageResponseModel.fromJson(Map<String, dynamic> json) => _$TicketMessageResponseModelFromJson(json);

@override final  String? id;
@override final  String? body;
@override final  DateTime? sentAt;
@override final  bool? fromCustomer;
@override final  String? authorLabel;

/// Create a copy of TicketMessageResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketMessageResponseModelCopyWith<_TicketMessageResponseModel> get copyWith => __$TicketMessageResponseModelCopyWithImpl<_TicketMessageResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketMessageResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketMessageResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.body, body) || other.body == body)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.fromCustomer, fromCustomer) || other.fromCustomer == fromCustomer)&&(identical(other.authorLabel, authorLabel) || other.authorLabel == authorLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,body,sentAt,fromCustomer,authorLabel);

@override
String toString() {
  return 'TicketMessageResponseModel(id: $id, body: $body, sentAt: $sentAt, fromCustomer: $fromCustomer, authorLabel: $authorLabel)';
}


}

/// @nodoc
abstract mixin class _$TicketMessageResponseModelCopyWith<$Res> implements $TicketMessageResponseModelCopyWith<$Res> {
  factory _$TicketMessageResponseModelCopyWith(_TicketMessageResponseModel value, $Res Function(_TicketMessageResponseModel) _then) = __$TicketMessageResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? body, DateTime? sentAt, bool? fromCustomer, String? authorLabel
});




}
/// @nodoc
class __$TicketMessageResponseModelCopyWithImpl<$Res>
    implements _$TicketMessageResponseModelCopyWith<$Res> {
  __$TicketMessageResponseModelCopyWithImpl(this._self, this._then);

  final _TicketMessageResponseModel _self;
  final $Res Function(_TicketMessageResponseModel) _then;

/// Create a copy of TicketMessageResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? body = freezed,Object? sentAt = freezed,Object? fromCustomer = freezed,Object? authorLabel = freezed,}) {
  return _then(_TicketMessageResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,fromCustomer: freezed == fromCustomer ? _self.fromCustomer : fromCustomer // ignore: cast_nullable_to_non_nullable
as bool?,authorLabel: freezed == authorLabel ? _self.authorLabel : authorLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SupportContactResponseModel {

 SupportChannel? get channel; String? get value;
/// Create a copy of SupportContactResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportContactResponseModelCopyWith<SupportContactResponseModel> get copyWith => _$SupportContactResponseModelCopyWithImpl<SupportContactResponseModel>(this as SupportContactResponseModel, _$identity);

  /// Serializes this SupportContactResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportContactResponseModel&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channel,value);

@override
String toString() {
  return 'SupportContactResponseModel(channel: $channel, value: $value)';
}


}

/// @nodoc
abstract mixin class $SupportContactResponseModelCopyWith<$Res>  {
  factory $SupportContactResponseModelCopyWith(SupportContactResponseModel value, $Res Function(SupportContactResponseModel) _then) = _$SupportContactResponseModelCopyWithImpl;
@useResult
$Res call({
 SupportChannel? channel, String? value
});




}
/// @nodoc
class _$SupportContactResponseModelCopyWithImpl<$Res>
    implements $SupportContactResponseModelCopyWith<$Res> {
  _$SupportContactResponseModelCopyWithImpl(this._self, this._then);

  final SupportContactResponseModel _self;
  final $Res Function(SupportContactResponseModel) _then;

/// Create a copy of SupportContactResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? channel = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as SupportChannel?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportContactResponseModel].
extension SupportContactResponseModelPatterns on SupportContactResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportContactResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportContactResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportContactResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SupportContactResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportContactResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SupportContactResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SupportChannel? channel,  String? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportContactResponseModel() when $default != null:
return $default(_that.channel,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SupportChannel? channel,  String? value)  $default,) {final _that = this;
switch (_that) {
case _SupportContactResponseModel():
return $default(_that.channel,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SupportChannel? channel,  String? value)?  $default,) {final _that = this;
switch (_that) {
case _SupportContactResponseModel() when $default != null:
return $default(_that.channel,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportContactResponseModel implements SupportContactResponseModel {
  const _SupportContactResponseModel({this.channel, this.value});
  factory _SupportContactResponseModel.fromJson(Map<String, dynamic> json) => _$SupportContactResponseModelFromJson(json);

@override final  SupportChannel? channel;
@override final  String? value;

/// Create a copy of SupportContactResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportContactResponseModelCopyWith<_SupportContactResponseModel> get copyWith => __$SupportContactResponseModelCopyWithImpl<_SupportContactResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportContactResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportContactResponseModel&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channel,value);

@override
String toString() {
  return 'SupportContactResponseModel(channel: $channel, value: $value)';
}


}

/// @nodoc
abstract mixin class _$SupportContactResponseModelCopyWith<$Res> implements $SupportContactResponseModelCopyWith<$Res> {
  factory _$SupportContactResponseModelCopyWith(_SupportContactResponseModel value, $Res Function(_SupportContactResponseModel) _then) = __$SupportContactResponseModelCopyWithImpl;
@override @useResult
$Res call({
 SupportChannel? channel, String? value
});




}
/// @nodoc
class __$SupportContactResponseModelCopyWithImpl<$Res>
    implements _$SupportContactResponseModelCopyWith<$Res> {
  __$SupportContactResponseModelCopyWithImpl(this._self, this._then);

  final _SupportContactResponseModel _self;
  final $Res Function(_SupportContactResponseModel) _then;

/// Create a copy of SupportContactResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? channel = freezed,Object? value = freezed,}) {
  return _then(_SupportContactResponseModel(
channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as SupportChannel?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LineCheckResponseModel {

 bool? get faultFound; DateTime? get checkedAt; String? get detail;
/// Create a copy of LineCheckResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LineCheckResponseModelCopyWith<LineCheckResponseModel> get copyWith => _$LineCheckResponseModelCopyWithImpl<LineCheckResponseModel>(this as LineCheckResponseModel, _$identity);

  /// Serializes this LineCheckResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LineCheckResponseModel&&(identical(other.faultFound, faultFound) || other.faultFound == faultFound)&&(identical(other.checkedAt, checkedAt) || other.checkedAt == checkedAt)&&(identical(other.detail, detail) || other.detail == detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,faultFound,checkedAt,detail);

@override
String toString() {
  return 'LineCheckResponseModel(faultFound: $faultFound, checkedAt: $checkedAt, detail: $detail)';
}


}

/// @nodoc
abstract mixin class $LineCheckResponseModelCopyWith<$Res>  {
  factory $LineCheckResponseModelCopyWith(LineCheckResponseModel value, $Res Function(LineCheckResponseModel) _then) = _$LineCheckResponseModelCopyWithImpl;
@useResult
$Res call({
 bool? faultFound, DateTime? checkedAt, String? detail
});




}
/// @nodoc
class _$LineCheckResponseModelCopyWithImpl<$Res>
    implements $LineCheckResponseModelCopyWith<$Res> {
  _$LineCheckResponseModelCopyWithImpl(this._self, this._then);

  final LineCheckResponseModel _self;
  final $Res Function(LineCheckResponseModel) _then;

/// Create a copy of LineCheckResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? faultFound = freezed,Object? checkedAt = freezed,Object? detail = freezed,}) {
  return _then(_self.copyWith(
faultFound: freezed == faultFound ? _self.faultFound : faultFound // ignore: cast_nullable_to_non_nullable
as bool?,checkedAt: freezed == checkedAt ? _self.checkedAt : checkedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LineCheckResponseModel].
extension LineCheckResponseModelPatterns on LineCheckResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LineCheckResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LineCheckResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LineCheckResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _LineCheckResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LineCheckResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LineCheckResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? faultFound,  DateTime? checkedAt,  String? detail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LineCheckResponseModel() when $default != null:
return $default(_that.faultFound,_that.checkedAt,_that.detail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? faultFound,  DateTime? checkedAt,  String? detail)  $default,) {final _that = this;
switch (_that) {
case _LineCheckResponseModel():
return $default(_that.faultFound,_that.checkedAt,_that.detail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? faultFound,  DateTime? checkedAt,  String? detail)?  $default,) {final _that = this;
switch (_that) {
case _LineCheckResponseModel() when $default != null:
return $default(_that.faultFound,_that.checkedAt,_that.detail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LineCheckResponseModel implements LineCheckResponseModel {
  const _LineCheckResponseModel({this.faultFound, this.checkedAt, this.detail});
  factory _LineCheckResponseModel.fromJson(Map<String, dynamic> json) => _$LineCheckResponseModelFromJson(json);

@override final  bool? faultFound;
@override final  DateTime? checkedAt;
@override final  String? detail;

/// Create a copy of LineCheckResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LineCheckResponseModelCopyWith<_LineCheckResponseModel> get copyWith => __$LineCheckResponseModelCopyWithImpl<_LineCheckResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LineCheckResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LineCheckResponseModel&&(identical(other.faultFound, faultFound) || other.faultFound == faultFound)&&(identical(other.checkedAt, checkedAt) || other.checkedAt == checkedAt)&&(identical(other.detail, detail) || other.detail == detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,faultFound,checkedAt,detail);

@override
String toString() {
  return 'LineCheckResponseModel(faultFound: $faultFound, checkedAt: $checkedAt, detail: $detail)';
}


}

/// @nodoc
abstract mixin class _$LineCheckResponseModelCopyWith<$Res> implements $LineCheckResponseModelCopyWith<$Res> {
  factory _$LineCheckResponseModelCopyWith(_LineCheckResponseModel value, $Res Function(_LineCheckResponseModel) _then) = __$LineCheckResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool? faultFound, DateTime? checkedAt, String? detail
});




}
/// @nodoc
class __$LineCheckResponseModelCopyWithImpl<$Res>
    implements _$LineCheckResponseModelCopyWith<$Res> {
  __$LineCheckResponseModelCopyWithImpl(this._self, this._then);

  final _LineCheckResponseModel _self;
  final $Res Function(_LineCheckResponseModel) _then;

/// Create a copy of LineCheckResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? faultFound = freezed,Object? checkedAt = freezed,Object? detail = freezed,}) {
  return _then(_LineCheckResponseModel(
faultFound: freezed == faultFound ? _self.faultFound : faultFound // ignore: cast_nullable_to_non_nullable
as bool?,checkedAt: freezed == checkedAt ? _self.checkedAt : checkedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ServiceAreaResponseModel {

 String? get id; String? get name; bool? get isCovered;
/// Create a copy of ServiceAreaResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceAreaResponseModelCopyWith<ServiceAreaResponseModel> get copyWith => _$ServiceAreaResponseModelCopyWithImpl<ServiceAreaResponseModel>(this as ServiceAreaResponseModel, _$identity);

  /// Serializes this ServiceAreaResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceAreaResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isCovered, isCovered) || other.isCovered == isCovered));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isCovered);

@override
String toString() {
  return 'ServiceAreaResponseModel(id: $id, name: $name, isCovered: $isCovered)';
}


}

/// @nodoc
abstract mixin class $ServiceAreaResponseModelCopyWith<$Res>  {
  factory $ServiceAreaResponseModelCopyWith(ServiceAreaResponseModel value, $Res Function(ServiceAreaResponseModel) _then) = _$ServiceAreaResponseModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, bool? isCovered
});




}
/// @nodoc
class _$ServiceAreaResponseModelCopyWithImpl<$Res>
    implements $ServiceAreaResponseModelCopyWith<$Res> {
  _$ServiceAreaResponseModelCopyWithImpl(this._self, this._then);

  final ServiceAreaResponseModel _self;
  final $Res Function(ServiceAreaResponseModel) _then;

/// Create a copy of ServiceAreaResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? isCovered = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isCovered: freezed == isCovered ? _self.isCovered : isCovered // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceAreaResponseModel].
extension ServiceAreaResponseModelPatterns on ServiceAreaResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceAreaResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceAreaResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceAreaResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ServiceAreaResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceAreaResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceAreaResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  bool? isCovered)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceAreaResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.isCovered);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  bool? isCovered)  $default,) {final _that = this;
switch (_that) {
case _ServiceAreaResponseModel():
return $default(_that.id,_that.name,_that.isCovered);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  bool? isCovered)?  $default,) {final _that = this;
switch (_that) {
case _ServiceAreaResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.isCovered);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceAreaResponseModel implements ServiceAreaResponseModel {
  const _ServiceAreaResponseModel({this.id, this.name, this.isCovered});
  factory _ServiceAreaResponseModel.fromJson(Map<String, dynamic> json) => _$ServiceAreaResponseModelFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  bool? isCovered;

/// Create a copy of ServiceAreaResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceAreaResponseModelCopyWith<_ServiceAreaResponseModel> get copyWith => __$ServiceAreaResponseModelCopyWithImpl<_ServiceAreaResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceAreaResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceAreaResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isCovered, isCovered) || other.isCovered == isCovered));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isCovered);

@override
String toString() {
  return 'ServiceAreaResponseModel(id: $id, name: $name, isCovered: $isCovered)';
}


}

/// @nodoc
abstract mixin class _$ServiceAreaResponseModelCopyWith<$Res> implements $ServiceAreaResponseModelCopyWith<$Res> {
  factory _$ServiceAreaResponseModelCopyWith(_ServiceAreaResponseModel value, $Res Function(_ServiceAreaResponseModel) _then) = __$ServiceAreaResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, bool? isCovered
});




}
/// @nodoc
class __$ServiceAreaResponseModelCopyWithImpl<$Res>
    implements _$ServiceAreaResponseModelCopyWith<$Res> {
  __$ServiceAreaResponseModelCopyWithImpl(this._self, this._then);

  final _ServiceAreaResponseModel _self;
  final $Res Function(_ServiceAreaResponseModel) _then;

/// Create a copy of ServiceAreaResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? isCovered = freezed,}) {
  return _then(_ServiceAreaResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isCovered: freezed == isCovered ? _self.isCovered : isCovered // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$UserResponseModel {

 int? get id; String? get name; String? get username; String? get email; Address? get address; String? get phone; String? get website; Company? get company;
/// Create a copy of UserResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserResponseModelCopyWith<UserResponseModel> get copyWith => _$UserResponseModelCopyWithImpl<UserResponseModel>(this as UserResponseModel, _$identity);

  /// Serializes this UserResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.website, website) || other.website == website)&&(identical(other.company, company) || other.company == company));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,username,email,address,phone,website,company);

@override
String toString() {
  return 'UserResponseModel(id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company)';
}


}

/// @nodoc
abstract mixin class $UserResponseModelCopyWith<$Res>  {
  factory $UserResponseModelCopyWith(UserResponseModel value, $Res Function(UserResponseModel) _then) = _$UserResponseModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? username, String? email, Address? address, String? phone, String? website, Company? company
});


$AddressCopyWith<$Res>? get address;$CompanyCopyWith<$Res>? get company;

}
/// @nodoc
class _$UserResponseModelCopyWithImpl<$Res>
    implements $UserResponseModelCopyWith<$Res> {
  _$UserResponseModelCopyWithImpl(this._self, this._then);

  final UserResponseModel _self;
  final $Res Function(UserResponseModel) _then;

/// Create a copy of UserResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? username = freezed,Object? email = freezed,Object? address = freezed,Object? phone = freezed,Object? website = freezed,Object? company = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company?,
  ));
}
/// Create a copy of UserResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of UserResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res>? get company {
    if (_self.company == null) {
    return null;
  }

  return $CompanyCopyWith<$Res>(_self.company!, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserResponseModel].
extension UserResponseModelPatterns on UserResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _UserResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? username,  String? email,  Address? address,  String? phone,  String? website,  Company? company)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.username,_that.email,_that.address,_that.phone,_that.website,_that.company);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? username,  String? email,  Address? address,  String? phone,  String? website,  Company? company)  $default,) {final _that = this;
switch (_that) {
case _UserResponseModel():
return $default(_that.id,_that.name,_that.username,_that.email,_that.address,_that.phone,_that.website,_that.company);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? username,  String? email,  Address? address,  String? phone,  String? website,  Company? company)?  $default,) {final _that = this;
switch (_that) {
case _UserResponseModel() when $default != null:
return $default(_that.id,_that.name,_that.username,_that.email,_that.address,_that.phone,_that.website,_that.company);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserResponseModel implements UserResponseModel {
  const _UserResponseModel({this.id, this.name, this.username, this.email, this.address, this.phone, this.website, this.company});
  factory _UserResponseModel.fromJson(Map<String, dynamic> json) => _$UserResponseModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? username;
@override final  String? email;
@override final  Address? address;
@override final  String? phone;
@override final  String? website;
@override final  Company? company;

/// Create a copy of UserResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserResponseModelCopyWith<_UserResponseModel> get copyWith => __$UserResponseModelCopyWithImpl<_UserResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.website, website) || other.website == website)&&(identical(other.company, company) || other.company == company));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,username,email,address,phone,website,company);

@override
String toString() {
  return 'UserResponseModel(id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company)';
}


}

/// @nodoc
abstract mixin class _$UserResponseModelCopyWith<$Res> implements $UserResponseModelCopyWith<$Res> {
  factory _$UserResponseModelCopyWith(_UserResponseModel value, $Res Function(_UserResponseModel) _then) = __$UserResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? username, String? email, Address? address, String? phone, String? website, Company? company
});


@override $AddressCopyWith<$Res>? get address;@override $CompanyCopyWith<$Res>? get company;

}
/// @nodoc
class __$UserResponseModelCopyWithImpl<$Res>
    implements _$UserResponseModelCopyWith<$Res> {
  __$UserResponseModelCopyWithImpl(this._self, this._then);

  final _UserResponseModel _self;
  final $Res Function(_UserResponseModel) _then;

/// Create a copy of UserResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? username = freezed,Object? email = freezed,Object? address = freezed,Object? phone = freezed,Object? website = freezed,Object? company = freezed,}) {
  return _then(_UserResponseModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company?,
  ));
}

/// Create a copy of UserResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of UserResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res>? get company {
    if (_self.company == null) {
    return null;
  }

  return $CompanyCopyWith<$Res>(_self.company!, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// @nodoc
mixin _$Address {

 String? get street; String? get suite; String? get city; String? get zipcode; Geo? get geo;
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressCopyWith<Address> get copyWith => _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Address&&(identical(other.street, street) || other.street == street)&&(identical(other.suite, suite) || other.suite == suite)&&(identical(other.city, city) || other.city == city)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode)&&(identical(other.geo, geo) || other.geo == geo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,suite,city,zipcode,geo);

@override
String toString() {
  return 'Address(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
}


}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res>  {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) = _$AddressCopyWithImpl;
@useResult
$Res call({
 String? street, String? suite, String? city, String? zipcode, Geo? geo
});


$GeoCopyWith<$Res>? get geo;

}
/// @nodoc
class _$AddressCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? street = freezed,Object? suite = freezed,Object? city = freezed,Object? zipcode = freezed,Object? geo = freezed,}) {
  return _then(_self.copyWith(
street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,suite: freezed == suite ? _self.suite : suite // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,zipcode: freezed == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String?,geo: freezed == geo ? _self.geo : geo // ignore: cast_nullable_to_non_nullable
as Geo?,
  ));
}
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoCopyWith<$Res>? get geo {
    if (_self.geo == null) {
    return null;
  }

  return $GeoCopyWith<$Res>(_self.geo!, (value) {
    return _then(_self.copyWith(geo: value));
  });
}
}


/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Address value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Address value)  $default,){
final _that = this;
switch (_that) {
case _Address():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Address value)?  $default,){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? street,  String? suite,  String? city,  String? zipcode,  Geo? geo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.street,_that.suite,_that.city,_that.zipcode,_that.geo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? street,  String? suite,  String? city,  String? zipcode,  Geo? geo)  $default,) {final _that = this;
switch (_that) {
case _Address():
return $default(_that.street,_that.suite,_that.city,_that.zipcode,_that.geo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? street,  String? suite,  String? city,  String? zipcode,  Geo? geo)?  $default,) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.street,_that.suite,_that.city,_that.zipcode,_that.geo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Address implements Address {
  const _Address({this.street, this.suite, this.city, this.zipcode, this.geo});
  factory _Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

@override final  String? street;
@override final  String? suite;
@override final  String? city;
@override final  String? zipcode;
@override final  Geo? geo;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressCopyWith<_Address> get copyWith => __$AddressCopyWithImpl<_Address>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Address&&(identical(other.street, street) || other.street == street)&&(identical(other.suite, suite) || other.suite == suite)&&(identical(other.city, city) || other.city == city)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode)&&(identical(other.geo, geo) || other.geo == geo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,street,suite,city,zipcode,geo);

@override
String toString() {
  return 'Address(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
}


}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) = __$AddressCopyWithImpl;
@override @useResult
$Res call({
 String? street, String? suite, String? city, String? zipcode, Geo? geo
});


@override $GeoCopyWith<$Res>? get geo;

}
/// @nodoc
class __$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? street = freezed,Object? suite = freezed,Object? city = freezed,Object? zipcode = freezed,Object? geo = freezed,}) {
  return _then(_Address(
street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,suite: freezed == suite ? _self.suite : suite // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,zipcode: freezed == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String?,geo: freezed == geo ? _self.geo : geo // ignore: cast_nullable_to_non_nullable
as Geo?,
  ));
}

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoCopyWith<$Res>? get geo {
    if (_self.geo == null) {
    return null;
  }

  return $GeoCopyWith<$Res>(_self.geo!, (value) {
    return _then(_self.copyWith(geo: value));
  });
}
}


/// @nodoc
mixin _$Geo {

 String? get lat; String? get lng;
/// Create a copy of Geo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeoCopyWith<Geo> get copyWith => _$GeoCopyWithImpl<Geo>(this as Geo, _$identity);

  /// Serializes this Geo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Geo&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'Geo(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $GeoCopyWith<$Res>  {
  factory $GeoCopyWith(Geo value, $Res Function(Geo) _then) = _$GeoCopyWithImpl;
@useResult
$Res call({
 String? lat, String? lng
});




}
/// @nodoc
class _$GeoCopyWithImpl<$Res>
    implements $GeoCopyWith<$Res> {
  _$GeoCopyWithImpl(this._self, this._then);

  final Geo _self;
  final $Res Function(Geo) _then;

/// Create a copy of Geo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_self.copyWith(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Geo].
extension GeoPatterns on Geo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Geo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Geo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Geo value)  $default,){
final _that = this;
switch (_that) {
case _Geo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Geo value)?  $default,){
final _that = this;
switch (_that) {
case _Geo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? lat,  String? lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Geo() when $default != null:
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? lat,  String? lng)  $default,) {final _that = this;
switch (_that) {
case _Geo():
return $default(_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? lat,  String? lng)?  $default,) {final _that = this;
switch (_that) {
case _Geo() when $default != null:
return $default(_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Geo implements Geo {
  const _Geo({this.lat, this.lng});
  factory _Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

@override final  String? lat;
@override final  String? lng;

/// Create a copy of Geo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeoCopyWith<_Geo> get copyWith => __$GeoCopyWithImpl<_Geo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Geo&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng);

@override
String toString() {
  return 'Geo(lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$GeoCopyWith<$Res> implements $GeoCopyWith<$Res> {
  factory _$GeoCopyWith(_Geo value, $Res Function(_Geo) _then) = __$GeoCopyWithImpl;
@override @useResult
$Res call({
 String? lat, String? lng
});




}
/// @nodoc
class __$GeoCopyWithImpl<$Res>
    implements _$GeoCopyWith<$Res> {
  __$GeoCopyWithImpl(this._self, this._then);

  final _Geo _self;
  final $Res Function(_Geo) _then;

/// Create a copy of Geo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_Geo(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Company {

 String? get name;// jsonplaceholder returns this one in camelCase, against the
// snake_case rename configured in build.yaml.
@JsonKey(name: 'catchPhrase') String? get catchPhrase; String? get bs;
/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyCopyWith<Company> get copyWith => _$CompanyCopyWithImpl<Company>(this as Company, _$identity);

  /// Serializes this Company to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Company&&(identical(other.name, name) || other.name == name)&&(identical(other.catchPhrase, catchPhrase) || other.catchPhrase == catchPhrase)&&(identical(other.bs, bs) || other.bs == bs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,catchPhrase,bs);

@override
String toString() {
  return 'Company(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
}


}

/// @nodoc
abstract mixin class $CompanyCopyWith<$Res>  {
  factory $CompanyCopyWith(Company value, $Res Function(Company) _then) = _$CompanyCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'catchPhrase') String? catchPhrase, String? bs
});




}
/// @nodoc
class _$CompanyCopyWithImpl<$Res>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._self, this._then);

  final Company _self;
  final $Res Function(Company) _then;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? catchPhrase = freezed,Object? bs = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,catchPhrase: freezed == catchPhrase ? _self.catchPhrase : catchPhrase // ignore: cast_nullable_to_non_nullable
as String?,bs: freezed == bs ? _self.bs : bs // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Company].
extension CompanyPatterns on Company {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Company value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Company() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Company value)  $default,){
final _that = this;
switch (_that) {
case _Company():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Company value)?  $default,){
final _that = this;
switch (_that) {
case _Company() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'catchPhrase')  String? catchPhrase,  String? bs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Company() when $default != null:
return $default(_that.name,_that.catchPhrase,_that.bs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'catchPhrase')  String? catchPhrase,  String? bs)  $default,) {final _that = this;
switch (_that) {
case _Company():
return $default(_that.name,_that.catchPhrase,_that.bs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'catchPhrase')  String? catchPhrase,  String? bs)?  $default,) {final _that = this;
switch (_that) {
case _Company() when $default != null:
return $default(_that.name,_that.catchPhrase,_that.bs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Company implements Company {
  const _Company({this.name, @JsonKey(name: 'catchPhrase') this.catchPhrase, this.bs});
  factory _Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

@override final  String? name;
// jsonplaceholder returns this one in camelCase, against the
// snake_case rename configured in build.yaml.
@override@JsonKey(name: 'catchPhrase') final  String? catchPhrase;
@override final  String? bs;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyCopyWith<_Company> get copyWith => __$CompanyCopyWithImpl<_Company>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Company&&(identical(other.name, name) || other.name == name)&&(identical(other.catchPhrase, catchPhrase) || other.catchPhrase == catchPhrase)&&(identical(other.bs, bs) || other.bs == bs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,catchPhrase,bs);

@override
String toString() {
  return 'Company(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
}


}

/// @nodoc
abstract mixin class _$CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$CompanyCopyWith(_Company value, $Res Function(_Company) _then) = __$CompanyCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'catchPhrase') String? catchPhrase, String? bs
});




}
/// @nodoc
class __$CompanyCopyWithImpl<$Res>
    implements _$CompanyCopyWith<$Res> {
  __$CompanyCopyWithImpl(this._self, this._then);

  final _Company _self;
  final $Res Function(_Company) _then;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? catchPhrase = freezed,Object? bs = freezed,}) {
  return _then(_Company(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,catchPhrase: freezed == catchPhrase ? _self.catchPhrase : catchPhrase // ignore: cast_nullable_to_non_nullable
as String?,bs: freezed == bs ? _self.bs : bs // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
