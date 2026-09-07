// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEntity {

 String get username; String get password;
/// Create a copy of LoginEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginEntityCopyWith<LoginEntity> get copyWith => _$LoginEntityCopyWithImpl<LoginEntity>(this as LoginEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEntity&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginEntity(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginEntityCopyWith<$Res>  {
  factory $LoginEntityCopyWith(LoginEntity value, $Res Function(LoginEntity) _then) = _$LoginEntityCopyWithImpl;
@useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class _$LoginEntityCopyWithImpl<$Res>
    implements $LoginEntityCopyWith<$Res> {
  _$LoginEntityCopyWithImpl(this._self, this._then);

  final LoginEntity _self;
  final $Res Function(LoginEntity) _then;

/// Create a copy of LoginEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginEntity].
extension LoginEntityPatterns on LoginEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginEntity value)  $default,){
final _that = this;
switch (_that) {
case _LoginEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LoginEntity() when $default != null:
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
case _LoginEntity() when $default != null:
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
case _LoginEntity():
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
case _LoginEntity() when $default != null:
return $default(_that.username,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class _LoginEntity implements LoginEntity {
  const _LoginEntity({required this.username, required this.password});
  

@override final  String username;
@override final  String password;

/// Create a copy of LoginEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginEntityCopyWith<_LoginEntity> get copyWith => __$LoginEntityCopyWithImpl<_LoginEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginEntity&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginEntity(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginEntityCopyWith<$Res> implements $LoginEntityCopyWith<$Res> {
  factory _$LoginEntityCopyWith(_LoginEntity value, $Res Function(_LoginEntity) _then) = __$LoginEntityCopyWithImpl;
@override @useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class __$LoginEntityCopyWithImpl<$Res>
    implements _$LoginEntityCopyWith<$Res> {
  __$LoginEntityCopyWithImpl(this._self, this._then);

  final _LoginEntity _self;
  final $Res Function(_LoginEntity) _then;

/// Create a copy of LoginEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,}) {
  return _then(_LoginEntity(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AccountSummaryEntity {

 int get customerId; double get outstandingAmount; double get creditBalance; String get currency; int get overdueInvoiceCount; DateTime? get nextDueDate;
/// Create a copy of AccountSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountSummaryEntityCopyWith<AccountSummaryEntity> get copyWith => _$AccountSummaryEntityCopyWithImpl<AccountSummaryEntity>(this as AccountSummaryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountSummaryEntity&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.outstandingAmount, outstandingAmount) || other.outstandingAmount == outstandingAmount)&&(identical(other.creditBalance, creditBalance) || other.creditBalance == creditBalance)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.overdueInvoiceCount, overdueInvoiceCount) || other.overdueInvoiceCount == overdueInvoiceCount)&&(identical(other.nextDueDate, nextDueDate) || other.nextDueDate == nextDueDate));
}


@override
int get hashCode => Object.hash(runtimeType,customerId,outstandingAmount,creditBalance,currency,overdueInvoiceCount,nextDueDate);

@override
String toString() {
  return 'AccountSummaryEntity(customerId: $customerId, outstandingAmount: $outstandingAmount, creditBalance: $creditBalance, currency: $currency, overdueInvoiceCount: $overdueInvoiceCount, nextDueDate: $nextDueDate)';
}


}

/// @nodoc
abstract mixin class $AccountSummaryEntityCopyWith<$Res>  {
  factory $AccountSummaryEntityCopyWith(AccountSummaryEntity value, $Res Function(AccountSummaryEntity) _then) = _$AccountSummaryEntityCopyWithImpl;
@useResult
$Res call({
 int customerId, double outstandingAmount, double creditBalance, String currency, int overdueInvoiceCount, DateTime? nextDueDate
});




}
/// @nodoc
class _$AccountSummaryEntityCopyWithImpl<$Res>
    implements $AccountSummaryEntityCopyWith<$Res> {
  _$AccountSummaryEntityCopyWithImpl(this._self, this._then);

  final AccountSummaryEntity _self;
  final $Res Function(AccountSummaryEntity) _then;

/// Create a copy of AccountSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? outstandingAmount = null,Object? creditBalance = null,Object? currency = null,Object? overdueInvoiceCount = null,Object? nextDueDate = freezed,}) {
  return _then(_self.copyWith(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,outstandingAmount: null == outstandingAmount ? _self.outstandingAmount : outstandingAmount // ignore: cast_nullable_to_non_nullable
as double,creditBalance: null == creditBalance ? _self.creditBalance : creditBalance // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,overdueInvoiceCount: null == overdueInvoiceCount ? _self.overdueInvoiceCount : overdueInvoiceCount // ignore: cast_nullable_to_non_nullable
as int,nextDueDate: freezed == nextDueDate ? _self.nextDueDate : nextDueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountSummaryEntity].
extension AccountSummaryEntityPatterns on AccountSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _AccountSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AccountSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int customerId,  double outstandingAmount,  double creditBalance,  String currency,  int overdueInvoiceCount,  DateTime? nextDueDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int customerId,  double outstandingAmount,  double creditBalance,  String currency,  int overdueInvoiceCount,  DateTime? nextDueDate)  $default,) {final _that = this;
switch (_that) {
case _AccountSummaryEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int customerId,  double outstandingAmount,  double creditBalance,  String currency,  int overdueInvoiceCount,  DateTime? nextDueDate)?  $default,) {final _that = this;
switch (_that) {
case _AccountSummaryEntity() when $default != null:
return $default(_that.customerId,_that.outstandingAmount,_that.creditBalance,_that.currency,_that.overdueInvoiceCount,_that.nextDueDate);case _:
  return null;

}
}

}

/// @nodoc


class _AccountSummaryEntity extends AccountSummaryEntity {
  const _AccountSummaryEntity({required this.customerId, required this.outstandingAmount, required this.creditBalance, required this.currency, this.overdueInvoiceCount = 0, this.nextDueDate}): super._();
  

@override final  int customerId;
@override final  double outstandingAmount;
@override final  double creditBalance;
@override final  String currency;
@override@JsonKey() final  int overdueInvoiceCount;
@override final  DateTime? nextDueDate;

/// Create a copy of AccountSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountSummaryEntityCopyWith<_AccountSummaryEntity> get copyWith => __$AccountSummaryEntityCopyWithImpl<_AccountSummaryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountSummaryEntity&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.outstandingAmount, outstandingAmount) || other.outstandingAmount == outstandingAmount)&&(identical(other.creditBalance, creditBalance) || other.creditBalance == creditBalance)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.overdueInvoiceCount, overdueInvoiceCount) || other.overdueInvoiceCount == overdueInvoiceCount)&&(identical(other.nextDueDate, nextDueDate) || other.nextDueDate == nextDueDate));
}


@override
int get hashCode => Object.hash(runtimeType,customerId,outstandingAmount,creditBalance,currency,overdueInvoiceCount,nextDueDate);

@override
String toString() {
  return 'AccountSummaryEntity(customerId: $customerId, outstandingAmount: $outstandingAmount, creditBalance: $creditBalance, currency: $currency, overdueInvoiceCount: $overdueInvoiceCount, nextDueDate: $nextDueDate)';
}


}

/// @nodoc
abstract mixin class _$AccountSummaryEntityCopyWith<$Res> implements $AccountSummaryEntityCopyWith<$Res> {
  factory _$AccountSummaryEntityCopyWith(_AccountSummaryEntity value, $Res Function(_AccountSummaryEntity) _then) = __$AccountSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 int customerId, double outstandingAmount, double creditBalance, String currency, int overdueInvoiceCount, DateTime? nextDueDate
});




}
/// @nodoc
class __$AccountSummaryEntityCopyWithImpl<$Res>
    implements _$AccountSummaryEntityCopyWith<$Res> {
  __$AccountSummaryEntityCopyWithImpl(this._self, this._then);

  final _AccountSummaryEntity _self;
  final $Res Function(_AccountSummaryEntity) _then;

/// Create a copy of AccountSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? outstandingAmount = null,Object? creditBalance = null,Object? currency = null,Object? overdueInvoiceCount = null,Object? nextDueDate = freezed,}) {
  return _then(_AccountSummaryEntity(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int,outstandingAmount: null == outstandingAmount ? _self.outstandingAmount : outstandingAmount // ignore: cast_nullable_to_non_nullable
as double,creditBalance: null == creditBalance ? _self.creditBalance : creditBalance // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,overdueInvoiceCount: null == overdueInvoiceCount ? _self.overdueInvoiceCount : overdueInvoiceCount // ignore: cast_nullable_to_non_nullable
as int,nextDueDate: freezed == nextDueDate ? _self.nextDueDate : nextDueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$PaymentMethodEntity {

 String get id; String get name; PaymentMethodKind get kind;/// The masked tail the customer recognises, e.g. `•••• 2611`.
 String? get maskedAccount;
/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodEntityCopyWith<PaymentMethodEntity> get copyWith => _$PaymentMethodEntityCopyWithImpl<PaymentMethodEntity>(this as PaymentMethodEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethodEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.maskedAccount, maskedAccount) || other.maskedAccount == maskedAccount));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,kind,maskedAccount);

@override
String toString() {
  return 'PaymentMethodEntity(id: $id, name: $name, kind: $kind, maskedAccount: $maskedAccount)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodEntityCopyWith<$Res>  {
  factory $PaymentMethodEntityCopyWith(PaymentMethodEntity value, $Res Function(PaymentMethodEntity) _then) = _$PaymentMethodEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, PaymentMethodKind kind, String? maskedAccount
});




}
/// @nodoc
class _$PaymentMethodEntityCopyWithImpl<$Res>
    implements $PaymentMethodEntityCopyWith<$Res> {
  _$PaymentMethodEntityCopyWithImpl(this._self, this._then);

  final PaymentMethodEntity _self;
  final $Res Function(PaymentMethodEntity) _then;

/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? maskedAccount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as PaymentMethodKind,maskedAccount: freezed == maskedAccount ? _self.maskedAccount : maskedAccount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentMethodEntity].
extension PaymentMethodEntityPatterns on PaymentMethodEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethodEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethodEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethodEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethodEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  PaymentMethodKind kind,  String? maskedAccount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethodEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  PaymentMethodKind kind,  String? maskedAccount)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  PaymentMethodKind kind,  String? maskedAccount)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodEntity() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.maskedAccount);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentMethodEntity implements PaymentMethodEntity {
  const _PaymentMethodEntity({required this.id, required this.name, required this.kind, this.maskedAccount});
  

@override final  String id;
@override final  String name;
@override final  PaymentMethodKind kind;
/// The masked tail the customer recognises, e.g. `•••• 2611`.
@override final  String? maskedAccount;

/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodEntityCopyWith<_PaymentMethodEntity> get copyWith => __$PaymentMethodEntityCopyWithImpl<_PaymentMethodEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethodEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.maskedAccount, maskedAccount) || other.maskedAccount == maskedAccount));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,kind,maskedAccount);

@override
String toString() {
  return 'PaymentMethodEntity(id: $id, name: $name, kind: $kind, maskedAccount: $maskedAccount)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodEntityCopyWith<$Res> implements $PaymentMethodEntityCopyWith<$Res> {
  factory _$PaymentMethodEntityCopyWith(_PaymentMethodEntity value, $Res Function(_PaymentMethodEntity) _then) = __$PaymentMethodEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, PaymentMethodKind kind, String? maskedAccount
});




}
/// @nodoc
class __$PaymentMethodEntityCopyWithImpl<$Res>
    implements _$PaymentMethodEntityCopyWith<$Res> {
  __$PaymentMethodEntityCopyWithImpl(this._self, this._then);

  final _PaymentMethodEntity _self;
  final $Res Function(_PaymentMethodEntity) _then;

/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? maskedAccount = freezed,}) {
  return _then(_PaymentMethodEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as PaymentMethodKind,maskedAccount: freezed == maskedAccount ? _self.maskedAccount : maskedAccount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$AutopayConfigEntity {

 bool get enabled; AutopayTiming get timing; List<int> get connectionIds; PaymentMethodEntity? get source;
/// Create a copy of AutopayConfigEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutopayConfigEntityCopyWith<AutopayConfigEntity> get copyWith => _$AutopayConfigEntityCopyWithImpl<AutopayConfigEntity>(this as AutopayConfigEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutopayConfigEntity&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.timing, timing) || other.timing == timing)&&const DeepCollectionEquality().equals(other.connectionIds, connectionIds)&&(identical(other.source, source) || other.source == source));
}


@override
int get hashCode => Object.hash(runtimeType,enabled,timing,const DeepCollectionEquality().hash(connectionIds),source);

@override
String toString() {
  return 'AutopayConfigEntity(enabled: $enabled, timing: $timing, connectionIds: $connectionIds, source: $source)';
}


}

/// @nodoc
abstract mixin class $AutopayConfigEntityCopyWith<$Res>  {
  factory $AutopayConfigEntityCopyWith(AutopayConfigEntity value, $Res Function(AutopayConfigEntity) _then) = _$AutopayConfigEntityCopyWithImpl;
@useResult
$Res call({
 bool enabled, AutopayTiming timing, List<int> connectionIds, PaymentMethodEntity? source
});


$PaymentMethodEntityCopyWith<$Res>? get source;

}
/// @nodoc
class _$AutopayConfigEntityCopyWithImpl<$Res>
    implements $AutopayConfigEntityCopyWith<$Res> {
  _$AutopayConfigEntityCopyWithImpl(this._self, this._then);

  final AutopayConfigEntity _self;
  final $Res Function(AutopayConfigEntity) _then;

/// Create a copy of AutopayConfigEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,Object? timing = null,Object? connectionIds = null,Object? source = freezed,}) {
  return _then(_self.copyWith(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,timing: null == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as AutopayTiming,connectionIds: null == connectionIds ? _self.connectionIds : connectionIds // ignore: cast_nullable_to_non_nullable
as List<int>,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as PaymentMethodEntity?,
  ));
}
/// Create a copy of AutopayConfigEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodEntityCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $PaymentMethodEntityCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// Adds pattern-matching-related methods to [AutopayConfigEntity].
extension AutopayConfigEntityPatterns on AutopayConfigEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AutopayConfigEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AutopayConfigEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AutopayConfigEntity value)  $default,){
final _that = this;
switch (_that) {
case _AutopayConfigEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AutopayConfigEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AutopayConfigEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled,  AutopayTiming timing,  List<int> connectionIds,  PaymentMethodEntity? source)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AutopayConfigEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled,  AutopayTiming timing,  List<int> connectionIds,  PaymentMethodEntity? source)  $default,) {final _that = this;
switch (_that) {
case _AutopayConfigEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled,  AutopayTiming timing,  List<int> connectionIds,  PaymentMethodEntity? source)?  $default,) {final _that = this;
switch (_that) {
case _AutopayConfigEntity() when $default != null:
return $default(_that.enabled,_that.timing,_that.connectionIds,_that.source);case _:
  return null;

}
}

}

/// @nodoc


class _AutopayConfigEntity extends AutopayConfigEntity {
  const _AutopayConfigEntity({this.enabled = false, this.timing = AutopayTiming.threeDaysBeforeDue, final  List<int> connectionIds = const <int>[], this.source}): _connectionIds = connectionIds,super._();
  

@override@JsonKey() final  bool enabled;
@override@JsonKey() final  AutopayTiming timing;
 final  List<int> _connectionIds;
@override@JsonKey() List<int> get connectionIds {
  if (_connectionIds is EqualUnmodifiableListView) return _connectionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_connectionIds);
}

@override final  PaymentMethodEntity? source;

/// Create a copy of AutopayConfigEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutopayConfigEntityCopyWith<_AutopayConfigEntity> get copyWith => __$AutopayConfigEntityCopyWithImpl<_AutopayConfigEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutopayConfigEntity&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.timing, timing) || other.timing == timing)&&const DeepCollectionEquality().equals(other._connectionIds, _connectionIds)&&(identical(other.source, source) || other.source == source));
}


@override
int get hashCode => Object.hash(runtimeType,enabled,timing,const DeepCollectionEquality().hash(_connectionIds),source);

@override
String toString() {
  return 'AutopayConfigEntity(enabled: $enabled, timing: $timing, connectionIds: $connectionIds, source: $source)';
}


}

/// @nodoc
abstract mixin class _$AutopayConfigEntityCopyWith<$Res> implements $AutopayConfigEntityCopyWith<$Res> {
  factory _$AutopayConfigEntityCopyWith(_AutopayConfigEntity value, $Res Function(_AutopayConfigEntity) _then) = __$AutopayConfigEntityCopyWithImpl;
@override @useResult
$Res call({
 bool enabled, AutopayTiming timing, List<int> connectionIds, PaymentMethodEntity? source
});


@override $PaymentMethodEntityCopyWith<$Res>? get source;

}
/// @nodoc
class __$AutopayConfigEntityCopyWithImpl<$Res>
    implements _$AutopayConfigEntityCopyWith<$Res> {
  __$AutopayConfigEntityCopyWithImpl(this._self, this._then);

  final _AutopayConfigEntity _self;
  final $Res Function(_AutopayConfigEntity) _then;

/// Create a copy of AutopayConfigEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,Object? timing = null,Object? connectionIds = null,Object? source = freezed,}) {
  return _then(_AutopayConfigEntity(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,timing: null == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as AutopayTiming,connectionIds: null == connectionIds ? _self._connectionIds : connectionIds // ignore: cast_nullable_to_non_nullable
as List<int>,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as PaymentMethodEntity?,
  ));
}

/// Create a copy of AutopayConfigEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodEntityCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $PaymentMethodEntityCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}

/// @nodoc
mixin _$ProrationQuoteEntity {

 int get daysLeftInCycle; double get creditForUnusedDays; double get newPlanRemainder; double get dueToday; double get nextCycleAmount; String get currency;
/// Create a copy of ProrationQuoteEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProrationQuoteEntityCopyWith<ProrationQuoteEntity> get copyWith => _$ProrationQuoteEntityCopyWithImpl<ProrationQuoteEntity>(this as ProrationQuoteEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProrationQuoteEntity&&(identical(other.daysLeftInCycle, daysLeftInCycle) || other.daysLeftInCycle == daysLeftInCycle)&&(identical(other.creditForUnusedDays, creditForUnusedDays) || other.creditForUnusedDays == creditForUnusedDays)&&(identical(other.newPlanRemainder, newPlanRemainder) || other.newPlanRemainder == newPlanRemainder)&&(identical(other.dueToday, dueToday) || other.dueToday == dueToday)&&(identical(other.nextCycleAmount, nextCycleAmount) || other.nextCycleAmount == nextCycleAmount)&&(identical(other.currency, currency) || other.currency == currency));
}


@override
int get hashCode => Object.hash(runtimeType,daysLeftInCycle,creditForUnusedDays,newPlanRemainder,dueToday,nextCycleAmount,currency);

@override
String toString() {
  return 'ProrationQuoteEntity(daysLeftInCycle: $daysLeftInCycle, creditForUnusedDays: $creditForUnusedDays, newPlanRemainder: $newPlanRemainder, dueToday: $dueToday, nextCycleAmount: $nextCycleAmount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $ProrationQuoteEntityCopyWith<$Res>  {
  factory $ProrationQuoteEntityCopyWith(ProrationQuoteEntity value, $Res Function(ProrationQuoteEntity) _then) = _$ProrationQuoteEntityCopyWithImpl;
@useResult
$Res call({
 int daysLeftInCycle, double creditForUnusedDays, double newPlanRemainder, double dueToday, double nextCycleAmount, String currency
});




}
/// @nodoc
class _$ProrationQuoteEntityCopyWithImpl<$Res>
    implements $ProrationQuoteEntityCopyWith<$Res> {
  _$ProrationQuoteEntityCopyWithImpl(this._self, this._then);

  final ProrationQuoteEntity _self;
  final $Res Function(ProrationQuoteEntity) _then;

/// Create a copy of ProrationQuoteEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? daysLeftInCycle = null,Object? creditForUnusedDays = null,Object? newPlanRemainder = null,Object? dueToday = null,Object? nextCycleAmount = null,Object? currency = null,}) {
  return _then(_self.copyWith(
daysLeftInCycle: null == daysLeftInCycle ? _self.daysLeftInCycle : daysLeftInCycle // ignore: cast_nullable_to_non_nullable
as int,creditForUnusedDays: null == creditForUnusedDays ? _self.creditForUnusedDays : creditForUnusedDays // ignore: cast_nullable_to_non_nullable
as double,newPlanRemainder: null == newPlanRemainder ? _self.newPlanRemainder : newPlanRemainder // ignore: cast_nullable_to_non_nullable
as double,dueToday: null == dueToday ? _self.dueToday : dueToday // ignore: cast_nullable_to_non_nullable
as double,nextCycleAmount: null == nextCycleAmount ? _self.nextCycleAmount : nextCycleAmount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProrationQuoteEntity].
extension ProrationQuoteEntityPatterns on ProrationQuoteEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProrationQuoteEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProrationQuoteEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProrationQuoteEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProrationQuoteEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProrationQuoteEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProrationQuoteEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int daysLeftInCycle,  double creditForUnusedDays,  double newPlanRemainder,  double dueToday,  double nextCycleAmount,  String currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProrationQuoteEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int daysLeftInCycle,  double creditForUnusedDays,  double newPlanRemainder,  double dueToday,  double nextCycleAmount,  String currency)  $default,) {final _that = this;
switch (_that) {
case _ProrationQuoteEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int daysLeftInCycle,  double creditForUnusedDays,  double newPlanRemainder,  double dueToday,  double nextCycleAmount,  String currency)?  $default,) {final _that = this;
switch (_that) {
case _ProrationQuoteEntity() when $default != null:
return $default(_that.daysLeftInCycle,_that.creditForUnusedDays,_that.newPlanRemainder,_that.dueToday,_that.nextCycleAmount,_that.currency);case _:
  return null;

}
}

}

/// @nodoc


class _ProrationQuoteEntity implements ProrationQuoteEntity {
  const _ProrationQuoteEntity({required this.daysLeftInCycle, required this.creditForUnusedDays, required this.newPlanRemainder, required this.dueToday, required this.nextCycleAmount, required this.currency});
  

@override final  int daysLeftInCycle;
@override final  double creditForUnusedDays;
@override final  double newPlanRemainder;
@override final  double dueToday;
@override final  double nextCycleAmount;
@override final  String currency;

/// Create a copy of ProrationQuoteEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProrationQuoteEntityCopyWith<_ProrationQuoteEntity> get copyWith => __$ProrationQuoteEntityCopyWithImpl<_ProrationQuoteEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProrationQuoteEntity&&(identical(other.daysLeftInCycle, daysLeftInCycle) || other.daysLeftInCycle == daysLeftInCycle)&&(identical(other.creditForUnusedDays, creditForUnusedDays) || other.creditForUnusedDays == creditForUnusedDays)&&(identical(other.newPlanRemainder, newPlanRemainder) || other.newPlanRemainder == newPlanRemainder)&&(identical(other.dueToday, dueToday) || other.dueToday == dueToday)&&(identical(other.nextCycleAmount, nextCycleAmount) || other.nextCycleAmount == nextCycleAmount)&&(identical(other.currency, currency) || other.currency == currency));
}


@override
int get hashCode => Object.hash(runtimeType,daysLeftInCycle,creditForUnusedDays,newPlanRemainder,dueToday,nextCycleAmount,currency);

@override
String toString() {
  return 'ProrationQuoteEntity(daysLeftInCycle: $daysLeftInCycle, creditForUnusedDays: $creditForUnusedDays, newPlanRemainder: $newPlanRemainder, dueToday: $dueToday, nextCycleAmount: $nextCycleAmount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$ProrationQuoteEntityCopyWith<$Res> implements $ProrationQuoteEntityCopyWith<$Res> {
  factory _$ProrationQuoteEntityCopyWith(_ProrationQuoteEntity value, $Res Function(_ProrationQuoteEntity) _then) = __$ProrationQuoteEntityCopyWithImpl;
@override @useResult
$Res call({
 int daysLeftInCycle, double creditForUnusedDays, double newPlanRemainder, double dueToday, double nextCycleAmount, String currency
});




}
/// @nodoc
class __$ProrationQuoteEntityCopyWithImpl<$Res>
    implements _$ProrationQuoteEntityCopyWith<$Res> {
  __$ProrationQuoteEntityCopyWithImpl(this._self, this._then);

  final _ProrationQuoteEntity _self;
  final $Res Function(_ProrationQuoteEntity) _then;

/// Create a copy of ProrationQuoteEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? daysLeftInCycle = null,Object? creditForUnusedDays = null,Object? newPlanRemainder = null,Object? dueToday = null,Object? nextCycleAmount = null,Object? currency = null,}) {
  return _then(_ProrationQuoteEntity(
daysLeftInCycle: null == daysLeftInCycle ? _self.daysLeftInCycle : daysLeftInCycle // ignore: cast_nullable_to_non_nullable
as int,creditForUnusedDays: null == creditForUnusedDays ? _self.creditForUnusedDays : creditForUnusedDays // ignore: cast_nullable_to_non_nullable
as double,newPlanRemainder: null == newPlanRemainder ? _self.newPlanRemainder : newPlanRemainder // ignore: cast_nullable_to_non_nullable
as double,dueToday: null == dueToday ? _self.dueToday : dueToday // ignore: cast_nullable_to_non_nullable
as double,nextCycleAmount: null == nextCycleAmount ? _self.nextCycleAmount : nextCycleAmount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PaymentReceiptEntity {

 String get receiptNumber; double get amount; String get currency; String get channel; String get connectionLabel; DateTime get paidAt; DateTime? get serviceRunsTo;
/// Create a copy of PaymentReceiptEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentReceiptEntityCopyWith<PaymentReceiptEntity> get copyWith => _$PaymentReceiptEntityCopyWithImpl<PaymentReceiptEntity>(this as PaymentReceiptEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentReceiptEntity&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.connectionLabel, connectionLabel) || other.connectionLabel == connectionLabel)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.serviceRunsTo, serviceRunsTo) || other.serviceRunsTo == serviceRunsTo));
}


@override
int get hashCode => Object.hash(runtimeType,receiptNumber,amount,currency,channel,connectionLabel,paidAt,serviceRunsTo);

@override
String toString() {
  return 'PaymentReceiptEntity(receiptNumber: $receiptNumber, amount: $amount, currency: $currency, channel: $channel, connectionLabel: $connectionLabel, paidAt: $paidAt, serviceRunsTo: $serviceRunsTo)';
}


}

/// @nodoc
abstract mixin class $PaymentReceiptEntityCopyWith<$Res>  {
  factory $PaymentReceiptEntityCopyWith(PaymentReceiptEntity value, $Res Function(PaymentReceiptEntity) _then) = _$PaymentReceiptEntityCopyWithImpl;
@useResult
$Res call({
 String receiptNumber, double amount, String currency, String channel, String connectionLabel, DateTime paidAt, DateTime? serviceRunsTo
});




}
/// @nodoc
class _$PaymentReceiptEntityCopyWithImpl<$Res>
    implements $PaymentReceiptEntityCopyWith<$Res> {
  _$PaymentReceiptEntityCopyWithImpl(this._self, this._then);

  final PaymentReceiptEntity _self;
  final $Res Function(PaymentReceiptEntity) _then;

/// Create a copy of PaymentReceiptEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiptNumber = null,Object? amount = null,Object? currency = null,Object? channel = null,Object? connectionLabel = null,Object? paidAt = null,Object? serviceRunsTo = freezed,}) {
  return _then(_self.copyWith(
receiptNumber: null == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,connectionLabel: null == connectionLabel ? _self.connectionLabel : connectionLabel // ignore: cast_nullable_to_non_nullable
as String,paidAt: null == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime,serviceRunsTo: freezed == serviceRunsTo ? _self.serviceRunsTo : serviceRunsTo // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentReceiptEntity].
extension PaymentReceiptEntityPatterns on PaymentReceiptEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentReceiptEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentReceiptEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentReceiptEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentReceiptEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentReceiptEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentReceiptEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String receiptNumber,  double amount,  String currency,  String channel,  String connectionLabel,  DateTime paidAt,  DateTime? serviceRunsTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentReceiptEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String receiptNumber,  double amount,  String currency,  String channel,  String connectionLabel,  DateTime paidAt,  DateTime? serviceRunsTo)  $default,) {final _that = this;
switch (_that) {
case _PaymentReceiptEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String receiptNumber,  double amount,  String currency,  String channel,  String connectionLabel,  DateTime paidAt,  DateTime? serviceRunsTo)?  $default,) {final _that = this;
switch (_that) {
case _PaymentReceiptEntity() when $default != null:
return $default(_that.receiptNumber,_that.amount,_that.currency,_that.channel,_that.connectionLabel,_that.paidAt,_that.serviceRunsTo);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentReceiptEntity implements PaymentReceiptEntity {
  const _PaymentReceiptEntity({required this.receiptNumber, required this.amount, required this.currency, required this.channel, required this.connectionLabel, required this.paidAt, this.serviceRunsTo});
  

@override final  String receiptNumber;
@override final  double amount;
@override final  String currency;
@override final  String channel;
@override final  String connectionLabel;
@override final  DateTime paidAt;
@override final  DateTime? serviceRunsTo;

/// Create a copy of PaymentReceiptEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentReceiptEntityCopyWith<_PaymentReceiptEntity> get copyWith => __$PaymentReceiptEntityCopyWithImpl<_PaymentReceiptEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentReceiptEntity&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.connectionLabel, connectionLabel) || other.connectionLabel == connectionLabel)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.serviceRunsTo, serviceRunsTo) || other.serviceRunsTo == serviceRunsTo));
}


@override
int get hashCode => Object.hash(runtimeType,receiptNumber,amount,currency,channel,connectionLabel,paidAt,serviceRunsTo);

@override
String toString() {
  return 'PaymentReceiptEntity(receiptNumber: $receiptNumber, amount: $amount, currency: $currency, channel: $channel, connectionLabel: $connectionLabel, paidAt: $paidAt, serviceRunsTo: $serviceRunsTo)';
}


}

/// @nodoc
abstract mixin class _$PaymentReceiptEntityCopyWith<$Res> implements $PaymentReceiptEntityCopyWith<$Res> {
  factory _$PaymentReceiptEntityCopyWith(_PaymentReceiptEntity value, $Res Function(_PaymentReceiptEntity) _then) = __$PaymentReceiptEntityCopyWithImpl;
@override @useResult
$Res call({
 String receiptNumber, double amount, String currency, String channel, String connectionLabel, DateTime paidAt, DateTime? serviceRunsTo
});




}
/// @nodoc
class __$PaymentReceiptEntityCopyWithImpl<$Res>
    implements _$PaymentReceiptEntityCopyWith<$Res> {
  __$PaymentReceiptEntityCopyWithImpl(this._self, this._then);

  final _PaymentReceiptEntity _self;
  final $Res Function(_PaymentReceiptEntity) _then;

/// Create a copy of PaymentReceiptEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiptNumber = null,Object? amount = null,Object? currency = null,Object? channel = null,Object? connectionLabel = null,Object? paidAt = null,Object? serviceRunsTo = freezed,}) {
  return _then(_PaymentReceiptEntity(
receiptNumber: null == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,connectionLabel: null == connectionLabel ? _self.connectionLabel : connectionLabel // ignore: cast_nullable_to_non_nullable
as String,paidAt: null == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime,serviceRunsTo: freezed == serviceRunsTo ? _self.serviceRunsTo : serviceRunsTo // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$InvoiceEntity {

 int get id; String get invoiceCode; int get connectionId; InvoiceType get invoiceType; InvoiceStatus get status; DateTime get servicePeriodStart; DateTime get servicePeriodEnd; DateTime get invoiceDate; DateTime get dueDate; double get amount; double get paidAmount; double get creditAppliedAmount; String get currency; DateTime? get paidAt; String? get notes; List<InvoiceLineEntity> get lines;
/// Create a copy of InvoiceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceEntityCopyWith<InvoiceEntity> get copyWith => _$InvoiceEntityCopyWithImpl<InvoiceEntity>(this as InvoiceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceCode, invoiceCode) || other.invoiceCode == invoiceCode)&&(identical(other.connectionId, connectionId) || other.connectionId == connectionId)&&(identical(other.invoiceType, invoiceType) || other.invoiceType == invoiceType)&&(identical(other.status, status) || other.status == status)&&(identical(other.servicePeriodStart, servicePeriodStart) || other.servicePeriodStart == servicePeriodStart)&&(identical(other.servicePeriodEnd, servicePeriodEnd) || other.servicePeriodEnd == servicePeriodEnd)&&(identical(other.invoiceDate, invoiceDate) || other.invoiceDate == invoiceDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.creditAppliedAmount, creditAppliedAmount) || other.creditAppliedAmount == creditAppliedAmount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.lines, lines));
}


@override
int get hashCode => Object.hash(runtimeType,id,invoiceCode,connectionId,invoiceType,status,servicePeriodStart,servicePeriodEnd,invoiceDate,dueDate,amount,paidAmount,creditAppliedAmount,currency,paidAt,notes,const DeepCollectionEquality().hash(lines));

@override
String toString() {
  return 'InvoiceEntity(id: $id, invoiceCode: $invoiceCode, connectionId: $connectionId, invoiceType: $invoiceType, status: $status, servicePeriodStart: $servicePeriodStart, servicePeriodEnd: $servicePeriodEnd, invoiceDate: $invoiceDate, dueDate: $dueDate, amount: $amount, paidAmount: $paidAmount, creditAppliedAmount: $creditAppliedAmount, currency: $currency, paidAt: $paidAt, notes: $notes, lines: $lines)';
}


}

/// @nodoc
abstract mixin class $InvoiceEntityCopyWith<$Res>  {
  factory $InvoiceEntityCopyWith(InvoiceEntity value, $Res Function(InvoiceEntity) _then) = _$InvoiceEntityCopyWithImpl;
@useResult
$Res call({
 int id, String invoiceCode, int connectionId, InvoiceType invoiceType, InvoiceStatus status, DateTime servicePeriodStart, DateTime servicePeriodEnd, DateTime invoiceDate, DateTime dueDate, double amount, double paidAmount, double creditAppliedAmount, String currency, DateTime? paidAt, String? notes, List<InvoiceLineEntity> lines
});




}
/// @nodoc
class _$InvoiceEntityCopyWithImpl<$Res>
    implements $InvoiceEntityCopyWith<$Res> {
  _$InvoiceEntityCopyWithImpl(this._self, this._then);

  final InvoiceEntity _self;
  final $Res Function(InvoiceEntity) _then;

/// Create a copy of InvoiceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? invoiceCode = null,Object? connectionId = null,Object? invoiceType = null,Object? status = null,Object? servicePeriodStart = null,Object? servicePeriodEnd = null,Object? invoiceDate = null,Object? dueDate = null,Object? amount = null,Object? paidAmount = null,Object? creditAppliedAmount = null,Object? currency = null,Object? paidAt = freezed,Object? notes = freezed,Object? lines = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceCode: null == invoiceCode ? _self.invoiceCode : invoiceCode // ignore: cast_nullable_to_non_nullable
as String,connectionId: null == connectionId ? _self.connectionId : connectionId // ignore: cast_nullable_to_non_nullable
as int,invoiceType: null == invoiceType ? _self.invoiceType : invoiceType // ignore: cast_nullable_to_non_nullable
as InvoiceType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InvoiceStatus,servicePeriodStart: null == servicePeriodStart ? _self.servicePeriodStart : servicePeriodStart // ignore: cast_nullable_to_non_nullable
as DateTime,servicePeriodEnd: null == servicePeriodEnd ? _self.servicePeriodEnd : servicePeriodEnd // ignore: cast_nullable_to_non_nullable
as DateTime,invoiceDate: null == invoiceDate ? _self.invoiceDate : invoiceDate // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as double,creditAppliedAmount: null == creditAppliedAmount ? _self.creditAppliedAmount : creditAppliedAmount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<InvoiceLineEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceEntity].
extension InvoiceEntityPatterns on InvoiceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceEntity value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String invoiceCode,  int connectionId,  InvoiceType invoiceType,  InvoiceStatus status,  DateTime servicePeriodStart,  DateTime servicePeriodEnd,  DateTime invoiceDate,  DateTime dueDate,  double amount,  double paidAmount,  double creditAppliedAmount,  String currency,  DateTime? paidAt,  String? notes,  List<InvoiceLineEntity> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceEntity() when $default != null:
return $default(_that.id,_that.invoiceCode,_that.connectionId,_that.invoiceType,_that.status,_that.servicePeriodStart,_that.servicePeriodEnd,_that.invoiceDate,_that.dueDate,_that.amount,_that.paidAmount,_that.creditAppliedAmount,_that.currency,_that.paidAt,_that.notes,_that.lines);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String invoiceCode,  int connectionId,  InvoiceType invoiceType,  InvoiceStatus status,  DateTime servicePeriodStart,  DateTime servicePeriodEnd,  DateTime invoiceDate,  DateTime dueDate,  double amount,  double paidAmount,  double creditAppliedAmount,  String currency,  DateTime? paidAt,  String? notes,  List<InvoiceLineEntity> lines)  $default,) {final _that = this;
switch (_that) {
case _InvoiceEntity():
return $default(_that.id,_that.invoiceCode,_that.connectionId,_that.invoiceType,_that.status,_that.servicePeriodStart,_that.servicePeriodEnd,_that.invoiceDate,_that.dueDate,_that.amount,_that.paidAmount,_that.creditAppliedAmount,_that.currency,_that.paidAt,_that.notes,_that.lines);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String invoiceCode,  int connectionId,  InvoiceType invoiceType,  InvoiceStatus status,  DateTime servicePeriodStart,  DateTime servicePeriodEnd,  DateTime invoiceDate,  DateTime dueDate,  double amount,  double paidAmount,  double creditAppliedAmount,  String currency,  DateTime? paidAt,  String? notes,  List<InvoiceLineEntity> lines)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceEntity() when $default != null:
return $default(_that.id,_that.invoiceCode,_that.connectionId,_that.invoiceType,_that.status,_that.servicePeriodStart,_that.servicePeriodEnd,_that.invoiceDate,_that.dueDate,_that.amount,_that.paidAmount,_that.creditAppliedAmount,_that.currency,_that.paidAt,_that.notes,_that.lines);case _:
  return null;

}
}

}

/// @nodoc


class _InvoiceEntity extends InvoiceEntity {
  const _InvoiceEntity({required this.id, required this.invoiceCode, required this.connectionId, required this.invoiceType, required this.status, required this.servicePeriodStart, required this.servicePeriodEnd, required this.invoiceDate, required this.dueDate, required this.amount, required this.paidAmount, required this.creditAppliedAmount, required this.currency, this.paidAt, this.notes, final  List<InvoiceLineEntity> lines = const <InvoiceLineEntity>[]}): _lines = lines,super._();
  

@override final  int id;
@override final  String invoiceCode;
@override final  int connectionId;
@override final  InvoiceType invoiceType;
@override final  InvoiceStatus status;
@override final  DateTime servicePeriodStart;
@override final  DateTime servicePeriodEnd;
@override final  DateTime invoiceDate;
@override final  DateTime dueDate;
@override final  double amount;
@override final  double paidAmount;
@override final  double creditAppliedAmount;
@override final  String currency;
@override final  DateTime? paidAt;
@override final  String? notes;
 final  List<InvoiceLineEntity> _lines;
@override@JsonKey() List<InvoiceLineEntity> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of InvoiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceEntityCopyWith<_InvoiceEntity> get copyWith => __$InvoiceEntityCopyWithImpl<_InvoiceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceCode, invoiceCode) || other.invoiceCode == invoiceCode)&&(identical(other.connectionId, connectionId) || other.connectionId == connectionId)&&(identical(other.invoiceType, invoiceType) || other.invoiceType == invoiceType)&&(identical(other.status, status) || other.status == status)&&(identical(other.servicePeriodStart, servicePeriodStart) || other.servicePeriodStart == servicePeriodStart)&&(identical(other.servicePeriodEnd, servicePeriodEnd) || other.servicePeriodEnd == servicePeriodEnd)&&(identical(other.invoiceDate, invoiceDate) || other.invoiceDate == invoiceDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.creditAppliedAmount, creditAppliedAmount) || other.creditAppliedAmount == creditAppliedAmount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other._lines, _lines));
}


@override
int get hashCode => Object.hash(runtimeType,id,invoiceCode,connectionId,invoiceType,status,servicePeriodStart,servicePeriodEnd,invoiceDate,dueDate,amount,paidAmount,creditAppliedAmount,currency,paidAt,notes,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'InvoiceEntity(id: $id, invoiceCode: $invoiceCode, connectionId: $connectionId, invoiceType: $invoiceType, status: $status, servicePeriodStart: $servicePeriodStart, servicePeriodEnd: $servicePeriodEnd, invoiceDate: $invoiceDate, dueDate: $dueDate, amount: $amount, paidAmount: $paidAmount, creditAppliedAmount: $creditAppliedAmount, currency: $currency, paidAt: $paidAt, notes: $notes, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$InvoiceEntityCopyWith<$Res> implements $InvoiceEntityCopyWith<$Res> {
  factory _$InvoiceEntityCopyWith(_InvoiceEntity value, $Res Function(_InvoiceEntity) _then) = __$InvoiceEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String invoiceCode, int connectionId, InvoiceType invoiceType, InvoiceStatus status, DateTime servicePeriodStart, DateTime servicePeriodEnd, DateTime invoiceDate, DateTime dueDate, double amount, double paidAmount, double creditAppliedAmount, String currency, DateTime? paidAt, String? notes, List<InvoiceLineEntity> lines
});




}
/// @nodoc
class __$InvoiceEntityCopyWithImpl<$Res>
    implements _$InvoiceEntityCopyWith<$Res> {
  __$InvoiceEntityCopyWithImpl(this._self, this._then);

  final _InvoiceEntity _self;
  final $Res Function(_InvoiceEntity) _then;

/// Create a copy of InvoiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? invoiceCode = null,Object? connectionId = null,Object? invoiceType = null,Object? status = null,Object? servicePeriodStart = null,Object? servicePeriodEnd = null,Object? invoiceDate = null,Object? dueDate = null,Object? amount = null,Object? paidAmount = null,Object? creditAppliedAmount = null,Object? currency = null,Object? paidAt = freezed,Object? notes = freezed,Object? lines = null,}) {
  return _then(_InvoiceEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceCode: null == invoiceCode ? _self.invoiceCode : invoiceCode // ignore: cast_nullable_to_non_nullable
as String,connectionId: null == connectionId ? _self.connectionId : connectionId // ignore: cast_nullable_to_non_nullable
as int,invoiceType: null == invoiceType ? _self.invoiceType : invoiceType // ignore: cast_nullable_to_non_nullable
as InvoiceType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InvoiceStatus,servicePeriodStart: null == servicePeriodStart ? _self.servicePeriodStart : servicePeriodStart // ignore: cast_nullable_to_non_nullable
as DateTime,servicePeriodEnd: null == servicePeriodEnd ? _self.servicePeriodEnd : servicePeriodEnd // ignore: cast_nullable_to_non_nullable
as DateTime,invoiceDate: null == invoiceDate ? _self.invoiceDate : invoiceDate // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,paidAmount: null == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as double,creditAppliedAmount: null == creditAppliedAmount ? _self.creditAppliedAmount : creditAppliedAmount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<InvoiceLineEntity>,
  ));
}


}

/// @nodoc
mixin _$InvoiceLineEntity {

 int get id; InvoiceLineType get lineType; String get description; double get quantity; double get unitAmount; double get amount; String? get reason;
/// Create a copy of InvoiceLineEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceLineEntityCopyWith<InvoiceLineEntity> get copyWith => _$InvoiceLineEntityCopyWithImpl<InvoiceLineEntity>(this as InvoiceLineEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceLineEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.lineType, lineType) || other.lineType == lineType)&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitAmount, unitAmount) || other.unitAmount == unitAmount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,id,lineType,description,quantity,unitAmount,amount,reason);

@override
String toString() {
  return 'InvoiceLineEntity(id: $id, lineType: $lineType, description: $description, quantity: $quantity, unitAmount: $unitAmount, amount: $amount, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $InvoiceLineEntityCopyWith<$Res>  {
  factory $InvoiceLineEntityCopyWith(InvoiceLineEntity value, $Res Function(InvoiceLineEntity) _then) = _$InvoiceLineEntityCopyWithImpl;
@useResult
$Res call({
 int id, InvoiceLineType lineType, String description, double quantity, double unitAmount, double amount, String? reason
});




}
/// @nodoc
class _$InvoiceLineEntityCopyWithImpl<$Res>
    implements $InvoiceLineEntityCopyWith<$Res> {
  _$InvoiceLineEntityCopyWithImpl(this._self, this._then);

  final InvoiceLineEntity _self;
  final $Res Function(InvoiceLineEntity) _then;

/// Create a copy of InvoiceLineEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? lineType = null,Object? description = null,Object? quantity = null,Object? unitAmount = null,Object? amount = null,Object? reason = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,lineType: null == lineType ? _self.lineType : lineType // ignore: cast_nullable_to_non_nullable
as InvoiceLineType,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unitAmount: null == unitAmount ? _self.unitAmount : unitAmount // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceLineEntity].
extension InvoiceLineEntityPatterns on InvoiceLineEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceLineEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceLineEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceLineEntity value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceLineEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceLineEntity value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceLineEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  InvoiceLineType lineType,  String description,  double quantity,  double unitAmount,  double amount,  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceLineEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  InvoiceLineType lineType,  String description,  double quantity,  double unitAmount,  double amount,  String? reason)  $default,) {final _that = this;
switch (_that) {
case _InvoiceLineEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  InvoiceLineType lineType,  String description,  double quantity,  double unitAmount,  double amount,  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceLineEntity() when $default != null:
return $default(_that.id,_that.lineType,_that.description,_that.quantity,_that.unitAmount,_that.amount,_that.reason);case _:
  return null;

}
}

}

/// @nodoc


class _InvoiceLineEntity implements InvoiceLineEntity {
  const _InvoiceLineEntity({required this.id, required this.lineType, required this.description, required this.quantity, required this.unitAmount, required this.amount, this.reason});
  

@override final  int id;
@override final  InvoiceLineType lineType;
@override final  String description;
@override final  double quantity;
@override final  double unitAmount;
@override final  double amount;
@override final  String? reason;

/// Create a copy of InvoiceLineEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceLineEntityCopyWith<_InvoiceLineEntity> get copyWith => __$InvoiceLineEntityCopyWithImpl<_InvoiceLineEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceLineEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.lineType, lineType) || other.lineType == lineType)&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitAmount, unitAmount) || other.unitAmount == unitAmount)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,id,lineType,description,quantity,unitAmount,amount,reason);

@override
String toString() {
  return 'InvoiceLineEntity(id: $id, lineType: $lineType, description: $description, quantity: $quantity, unitAmount: $unitAmount, amount: $amount, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$InvoiceLineEntityCopyWith<$Res> implements $InvoiceLineEntityCopyWith<$Res> {
  factory _$InvoiceLineEntityCopyWith(_InvoiceLineEntity value, $Res Function(_InvoiceLineEntity) _then) = __$InvoiceLineEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, InvoiceLineType lineType, String description, double quantity, double unitAmount, double amount, String? reason
});




}
/// @nodoc
class __$InvoiceLineEntityCopyWithImpl<$Res>
    implements _$InvoiceLineEntityCopyWith<$Res> {
  __$InvoiceLineEntityCopyWithImpl(this._self, this._then);

  final _InvoiceLineEntity _self;
  final $Res Function(_InvoiceLineEntity) _then;

/// Create a copy of InvoiceLineEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lineType = null,Object? description = null,Object? quantity = null,Object? unitAmount = null,Object? amount = null,Object? reason = freezed,}) {
  return _then(_InvoiceLineEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,lineType: null == lineType ? _self.lineType : lineType // ignore: cast_nullable_to_non_nullable
as InvoiceLineType,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,unitAmount: null == unitAmount ? _self.unitAmount : unitAmount // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$PaymentEntity {

 int get id; int get invoiceId; String get invoiceCode; double get amount; String get currency; DateTime get paidAt; String? get reference; String? get method; String? get note;
/// Create a copy of PaymentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentEntityCopyWith<PaymentEntity> get copyWith => _$PaymentEntityCopyWithImpl<PaymentEntity>(this as PaymentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId)&&(identical(other.invoiceCode, invoiceCode) || other.invoiceCode == invoiceCode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.method, method) || other.method == method)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,id,invoiceId,invoiceCode,amount,currency,paidAt,reference,method,note);

@override
String toString() {
  return 'PaymentEntity(id: $id, invoiceId: $invoiceId, invoiceCode: $invoiceCode, amount: $amount, currency: $currency, paidAt: $paidAt, reference: $reference, method: $method, note: $note)';
}


}

/// @nodoc
abstract mixin class $PaymentEntityCopyWith<$Res>  {
  factory $PaymentEntityCopyWith(PaymentEntity value, $Res Function(PaymentEntity) _then) = _$PaymentEntityCopyWithImpl;
@useResult
$Res call({
 int id, int invoiceId, String invoiceCode, double amount, String currency, DateTime paidAt, String? reference, String? method, String? note
});




}
/// @nodoc
class _$PaymentEntityCopyWithImpl<$Res>
    implements $PaymentEntityCopyWith<$Res> {
  _$PaymentEntityCopyWithImpl(this._self, this._then);

  final PaymentEntity _self;
  final $Res Function(PaymentEntity) _then;

/// Create a copy of PaymentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? invoiceId = null,Object? invoiceCode = null,Object? amount = null,Object? currency = null,Object? paidAt = null,Object? reference = freezed,Object? method = freezed,Object? note = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceId: null == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as int,invoiceCode: null == invoiceCode ? _self.invoiceCode : invoiceCode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,paidAt: null == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentEntity].
extension PaymentEntityPatterns on PaymentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int invoiceId,  String invoiceCode,  double amount,  String currency,  DateTime paidAt,  String? reference,  String? method,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int invoiceId,  String invoiceCode,  double amount,  String currency,  DateTime paidAt,  String? reference,  String? method,  String? note)  $default,) {final _that = this;
switch (_that) {
case _PaymentEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int invoiceId,  String invoiceCode,  double amount,  String currency,  DateTime paidAt,  String? reference,  String? method,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _PaymentEntity() when $default != null:
return $default(_that.id,_that.invoiceId,_that.invoiceCode,_that.amount,_that.currency,_that.paidAt,_that.reference,_that.method,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentEntity implements PaymentEntity {
  const _PaymentEntity({required this.id, required this.invoiceId, required this.invoiceCode, required this.amount, required this.currency, required this.paidAt, this.reference, this.method, this.note});
  

@override final  int id;
@override final  int invoiceId;
@override final  String invoiceCode;
@override final  double amount;
@override final  String currency;
@override final  DateTime paidAt;
@override final  String? reference;
@override final  String? method;
@override final  String? note;

/// Create a copy of PaymentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentEntityCopyWith<_PaymentEntity> get copyWith => __$PaymentEntityCopyWithImpl<_PaymentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId)&&(identical(other.invoiceCode, invoiceCode) || other.invoiceCode == invoiceCode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.method, method) || other.method == method)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,id,invoiceId,invoiceCode,amount,currency,paidAt,reference,method,note);

@override
String toString() {
  return 'PaymentEntity(id: $id, invoiceId: $invoiceId, invoiceCode: $invoiceCode, amount: $amount, currency: $currency, paidAt: $paidAt, reference: $reference, method: $method, note: $note)';
}


}

/// @nodoc
abstract mixin class _$PaymentEntityCopyWith<$Res> implements $PaymentEntityCopyWith<$Res> {
  factory _$PaymentEntityCopyWith(_PaymentEntity value, $Res Function(_PaymentEntity) _then) = __$PaymentEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int invoiceId, String invoiceCode, double amount, String currency, DateTime paidAt, String? reference, String? method, String? note
});




}
/// @nodoc
class __$PaymentEntityCopyWithImpl<$Res>
    implements _$PaymentEntityCopyWith<$Res> {
  __$PaymentEntityCopyWithImpl(this._self, this._then);

  final _PaymentEntity _self;
  final $Res Function(_PaymentEntity) _then;

/// Create a copy of PaymentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? invoiceId = null,Object? invoiceCode = null,Object? amount = null,Object? currency = null,Object? paidAt = null,Object? reference = freezed,Object? method = freezed,Object? note = freezed,}) {
  return _then(_PaymentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceId: null == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as int,invoiceCode: null == invoiceCode ? _self.invoiceCode : invoiceCode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,paidAt: null == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime,reference: freezed == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ConnectionEntity {

 int get id; String get code; String get username; ConnectionStatus get status; BillingType get billingType; ConnectivityType get connectivityType; ClientType get clientType; int get packageId; String? get title; String? get packageName; PackageEntity? get package; DateTime? get connectionDate; DateTime? get expiresAt; String? get macAddress; String? get distributionPoint; String? get addressLine;
/// Create a copy of ConnectionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionEntityCopyWith<ConnectionEntity> get copyWith => _$ConnectionEntityCopyWithImpl<ConnectionEntity>(this as ConnectionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.username, username) || other.username == username)&&(identical(other.status, status) || other.status == status)&&(identical(other.billingType, billingType) || other.billingType == billingType)&&(identical(other.connectivityType, connectivityType) || other.connectivityType == connectivityType)&&(identical(other.clientType, clientType) || other.clientType == clientType)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.title, title) || other.title == title)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.package, package) || other.package == package)&&(identical(other.connectionDate, connectionDate) || other.connectionDate == connectionDate)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.distributionPoint, distributionPoint) || other.distributionPoint == distributionPoint)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine));
}


@override
int get hashCode => Object.hash(runtimeType,id,code,username,status,billingType,connectivityType,clientType,packageId,title,packageName,package,connectionDate,expiresAt,macAddress,distributionPoint,addressLine);

@override
String toString() {
  return 'ConnectionEntity(id: $id, code: $code, username: $username, status: $status, billingType: $billingType, connectivityType: $connectivityType, clientType: $clientType, packageId: $packageId, title: $title, packageName: $packageName, package: $package, connectionDate: $connectionDate, expiresAt: $expiresAt, macAddress: $macAddress, distributionPoint: $distributionPoint, addressLine: $addressLine)';
}


}

/// @nodoc
abstract mixin class $ConnectionEntityCopyWith<$Res>  {
  factory $ConnectionEntityCopyWith(ConnectionEntity value, $Res Function(ConnectionEntity) _then) = _$ConnectionEntityCopyWithImpl;
@useResult
$Res call({
 int id, String code, String username, ConnectionStatus status, BillingType billingType, ConnectivityType connectivityType, ClientType clientType, int packageId, String? title, String? packageName, PackageEntity? package, DateTime? connectionDate, DateTime? expiresAt, String? macAddress, String? distributionPoint, String? addressLine
});


$PackageEntityCopyWith<$Res>? get package;

}
/// @nodoc
class _$ConnectionEntityCopyWithImpl<$Res>
    implements $ConnectionEntityCopyWith<$Res> {
  _$ConnectionEntityCopyWithImpl(this._self, this._then);

  final ConnectionEntity _self;
  final $Res Function(ConnectionEntity) _then;

/// Create a copy of ConnectionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? username = null,Object? status = null,Object? billingType = null,Object? connectivityType = null,Object? clientType = null,Object? packageId = null,Object? title = freezed,Object? packageName = freezed,Object? package = freezed,Object? connectionDate = freezed,Object? expiresAt = freezed,Object? macAddress = freezed,Object? distributionPoint = freezed,Object? addressLine = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ConnectionStatus,billingType: null == billingType ? _self.billingType : billingType // ignore: cast_nullable_to_non_nullable
as BillingType,connectivityType: null == connectivityType ? _self.connectivityType : connectivityType // ignore: cast_nullable_to_non_nullable
as ConnectivityType,clientType: null == clientType ? _self.clientType : clientType // ignore: cast_nullable_to_non_nullable
as ClientType,packageId: null == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,package: freezed == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as PackageEntity?,connectionDate: freezed == connectionDate ? _self.connectionDate : connectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,macAddress: freezed == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String?,distributionPoint: freezed == distributionPoint ? _self.distributionPoint : distributionPoint // ignore: cast_nullable_to_non_nullable
as String?,addressLine: freezed == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ConnectionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageEntityCopyWith<$Res>? get package {
    if (_self.package == null) {
    return null;
  }

  return $PackageEntityCopyWith<$Res>(_self.package!, (value) {
    return _then(_self.copyWith(package: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConnectionEntity].
extension ConnectionEntityPatterns on ConnectionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectionEntity value)  $default,){
final _that = this;
switch (_that) {
case _ConnectionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String code,  String username,  ConnectionStatus status,  BillingType billingType,  ConnectivityType connectivityType,  ClientType clientType,  int packageId,  String? title,  String? packageName,  PackageEntity? package,  DateTime? connectionDate,  DateTime? expiresAt,  String? macAddress,  String? distributionPoint,  String? addressLine)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectionEntity() when $default != null:
return $default(_that.id,_that.code,_that.username,_that.status,_that.billingType,_that.connectivityType,_that.clientType,_that.packageId,_that.title,_that.packageName,_that.package,_that.connectionDate,_that.expiresAt,_that.macAddress,_that.distributionPoint,_that.addressLine);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String code,  String username,  ConnectionStatus status,  BillingType billingType,  ConnectivityType connectivityType,  ClientType clientType,  int packageId,  String? title,  String? packageName,  PackageEntity? package,  DateTime? connectionDate,  DateTime? expiresAt,  String? macAddress,  String? distributionPoint,  String? addressLine)  $default,) {final _that = this;
switch (_that) {
case _ConnectionEntity():
return $default(_that.id,_that.code,_that.username,_that.status,_that.billingType,_that.connectivityType,_that.clientType,_that.packageId,_that.title,_that.packageName,_that.package,_that.connectionDate,_that.expiresAt,_that.macAddress,_that.distributionPoint,_that.addressLine);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String code,  String username,  ConnectionStatus status,  BillingType billingType,  ConnectivityType connectivityType,  ClientType clientType,  int packageId,  String? title,  String? packageName,  PackageEntity? package,  DateTime? connectionDate,  DateTime? expiresAt,  String? macAddress,  String? distributionPoint,  String? addressLine)?  $default,) {final _that = this;
switch (_that) {
case _ConnectionEntity() when $default != null:
return $default(_that.id,_that.code,_that.username,_that.status,_that.billingType,_that.connectivityType,_that.clientType,_that.packageId,_that.title,_that.packageName,_that.package,_that.connectionDate,_that.expiresAt,_that.macAddress,_that.distributionPoint,_that.addressLine);case _:
  return null;

}
}

}

/// @nodoc


class _ConnectionEntity extends ConnectionEntity {
  const _ConnectionEntity({required this.id, required this.code, required this.username, required this.status, required this.billingType, required this.connectivityType, required this.clientType, required this.packageId, this.title, this.packageName, this.package, this.connectionDate, this.expiresAt, this.macAddress, this.distributionPoint, this.addressLine}): super._();
  

@override final  int id;
@override final  String code;
@override final  String username;
@override final  ConnectionStatus status;
@override final  BillingType billingType;
@override final  ConnectivityType connectivityType;
@override final  ClientType clientType;
@override final  int packageId;
@override final  String? title;
@override final  String? packageName;
@override final  PackageEntity? package;
@override final  DateTime? connectionDate;
@override final  DateTime? expiresAt;
@override final  String? macAddress;
@override final  String? distributionPoint;
@override final  String? addressLine;

/// Create a copy of ConnectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionEntityCopyWith<_ConnectionEntity> get copyWith => __$ConnectionEntityCopyWithImpl<_ConnectionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.username, username) || other.username == username)&&(identical(other.status, status) || other.status == status)&&(identical(other.billingType, billingType) || other.billingType == billingType)&&(identical(other.connectivityType, connectivityType) || other.connectivityType == connectivityType)&&(identical(other.clientType, clientType) || other.clientType == clientType)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.title, title) || other.title == title)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.package, package) || other.package == package)&&(identical(other.connectionDate, connectionDate) || other.connectionDate == connectionDate)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.macAddress, macAddress) || other.macAddress == macAddress)&&(identical(other.distributionPoint, distributionPoint) || other.distributionPoint == distributionPoint)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine));
}


@override
int get hashCode => Object.hash(runtimeType,id,code,username,status,billingType,connectivityType,clientType,packageId,title,packageName,package,connectionDate,expiresAt,macAddress,distributionPoint,addressLine);

@override
String toString() {
  return 'ConnectionEntity(id: $id, code: $code, username: $username, status: $status, billingType: $billingType, connectivityType: $connectivityType, clientType: $clientType, packageId: $packageId, title: $title, packageName: $packageName, package: $package, connectionDate: $connectionDate, expiresAt: $expiresAt, macAddress: $macAddress, distributionPoint: $distributionPoint, addressLine: $addressLine)';
}


}

/// @nodoc
abstract mixin class _$ConnectionEntityCopyWith<$Res> implements $ConnectionEntityCopyWith<$Res> {
  factory _$ConnectionEntityCopyWith(_ConnectionEntity value, $Res Function(_ConnectionEntity) _then) = __$ConnectionEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String code, String username, ConnectionStatus status, BillingType billingType, ConnectivityType connectivityType, ClientType clientType, int packageId, String? title, String? packageName, PackageEntity? package, DateTime? connectionDate, DateTime? expiresAt, String? macAddress, String? distributionPoint, String? addressLine
});


@override $PackageEntityCopyWith<$Res>? get package;

}
/// @nodoc
class __$ConnectionEntityCopyWithImpl<$Res>
    implements _$ConnectionEntityCopyWith<$Res> {
  __$ConnectionEntityCopyWithImpl(this._self, this._then);

  final _ConnectionEntity _self;
  final $Res Function(_ConnectionEntity) _then;

/// Create a copy of ConnectionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? username = null,Object? status = null,Object? billingType = null,Object? connectivityType = null,Object? clientType = null,Object? packageId = null,Object? title = freezed,Object? packageName = freezed,Object? package = freezed,Object? connectionDate = freezed,Object? expiresAt = freezed,Object? macAddress = freezed,Object? distributionPoint = freezed,Object? addressLine = freezed,}) {
  return _then(_ConnectionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ConnectionStatus,billingType: null == billingType ? _self.billingType : billingType // ignore: cast_nullable_to_non_nullable
as BillingType,connectivityType: null == connectivityType ? _self.connectivityType : connectivityType // ignore: cast_nullable_to_non_nullable
as ConnectivityType,clientType: null == clientType ? _self.clientType : clientType // ignore: cast_nullable_to_non_nullable
as ClientType,packageId: null == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,package: freezed == package ? _self.package : package // ignore: cast_nullable_to_non_nullable
as PackageEntity?,connectionDate: freezed == connectionDate ? _self.connectionDate : connectionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,macAddress: freezed == macAddress ? _self.macAddress : macAddress // ignore: cast_nullable_to_non_nullable
as String?,distributionPoint: freezed == distributionPoint ? _self.distributionPoint : distributionPoint // ignore: cast_nullable_to_non_nullable
as String?,addressLine: freezed == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ConnectionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageEntityCopyWith<$Res>? get package {
    if (_self.package == null) {
    return null;
  }

  return $PackageEntityCopyWith<$Res>(_self.package!, (value) {
    return _then(_self.copyWith(package: value));
  });
}
}

/// @nodoc
mixin _$CustomerEntity {

 int get id; String get code; String get fullName; String get phone; String? get alternatePhone; String? get email; String? get nationalId; DateTime? get createdAt;
/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerEntityCopyWith<CustomerEntity> get copyWith => _$CustomerEntityCopyWithImpl<CustomerEntity>(this as CustomerEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.alternatePhone, alternatePhone) || other.alternatePhone == alternatePhone)&&(identical(other.email, email) || other.email == email)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,code,fullName,phone,alternatePhone,email,nationalId,createdAt);

@override
String toString() {
  return 'CustomerEntity(id: $id, code: $code, fullName: $fullName, phone: $phone, alternatePhone: $alternatePhone, email: $email, nationalId: $nationalId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CustomerEntityCopyWith<$Res>  {
  factory $CustomerEntityCopyWith(CustomerEntity value, $Res Function(CustomerEntity) _then) = _$CustomerEntityCopyWithImpl;
@useResult
$Res call({
 int id, String code, String fullName, String phone, String? alternatePhone, String? email, String? nationalId, DateTime? createdAt
});




}
/// @nodoc
class _$CustomerEntityCopyWithImpl<$Res>
    implements $CustomerEntityCopyWith<$Res> {
  _$CustomerEntityCopyWithImpl(this._self, this._then);

  final CustomerEntity _self;
  final $Res Function(CustomerEntity) _then;

/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? fullName = null,Object? phone = null,Object? alternatePhone = freezed,Object? email = freezed,Object? nationalId = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,alternatePhone: freezed == alternatePhone ? _self.alternatePhone : alternatePhone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,nationalId: freezed == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerEntity].
extension CustomerEntityPatterns on CustomerEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerEntity value)  $default,){
final _that = this;
switch (_that) {
case _CustomerEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String code,  String fullName,  String phone,  String? alternatePhone,  String? email,  String? nationalId,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
return $default(_that.id,_that.code,_that.fullName,_that.phone,_that.alternatePhone,_that.email,_that.nationalId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String code,  String fullName,  String phone,  String? alternatePhone,  String? email,  String? nationalId,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CustomerEntity():
return $default(_that.id,_that.code,_that.fullName,_that.phone,_that.alternatePhone,_that.email,_that.nationalId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String code,  String fullName,  String phone,  String? alternatePhone,  String? email,  String? nationalId,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
return $default(_that.id,_that.code,_that.fullName,_that.phone,_that.alternatePhone,_that.email,_that.nationalId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _CustomerEntity extends CustomerEntity {
  const _CustomerEntity({required this.id, required this.code, required this.fullName, required this.phone, this.alternatePhone, this.email, this.nationalId, this.createdAt}): super._();
  

@override final  int id;
@override final  String code;
@override final  String fullName;
@override final  String phone;
@override final  String? alternatePhone;
@override final  String? email;
@override final  String? nationalId;
@override final  DateTime? createdAt;

/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerEntityCopyWith<_CustomerEntity> get copyWith => __$CustomerEntityCopyWithImpl<_CustomerEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.alternatePhone, alternatePhone) || other.alternatePhone == alternatePhone)&&(identical(other.email, email) || other.email == email)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,code,fullName,phone,alternatePhone,email,nationalId,createdAt);

@override
String toString() {
  return 'CustomerEntity(id: $id, code: $code, fullName: $fullName, phone: $phone, alternatePhone: $alternatePhone, email: $email, nationalId: $nationalId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CustomerEntityCopyWith<$Res> implements $CustomerEntityCopyWith<$Res> {
  factory _$CustomerEntityCopyWith(_CustomerEntity value, $Res Function(_CustomerEntity) _then) = __$CustomerEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String code, String fullName, String phone, String? alternatePhone, String? email, String? nationalId, DateTime? createdAt
});




}
/// @nodoc
class __$CustomerEntityCopyWithImpl<$Res>
    implements _$CustomerEntityCopyWith<$Res> {
  __$CustomerEntityCopyWithImpl(this._self, this._then);

  final _CustomerEntity _self;
  final $Res Function(_CustomerEntity) _then;

/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? fullName = null,Object? phone = null,Object? alternatePhone = freezed,Object? email = freezed,Object? nationalId = freezed,Object? createdAt = freezed,}) {
  return _then(_CustomerEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,alternatePhone: freezed == alternatePhone ? _self.alternatePhone : alternatePhone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,nationalId: freezed == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$WifiSettingsEntity {

 String get ssid; String get password; WifiBand get band; bool get guestNetworkEnabled; String? get routerModel; String? get guestSsid;
/// Create a copy of WifiSettingsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WifiSettingsEntityCopyWith<WifiSettingsEntity> get copyWith => _$WifiSettingsEntityCopyWithImpl<WifiSettingsEntity>(this as WifiSettingsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WifiSettingsEntity&&(identical(other.ssid, ssid) || other.ssid == ssid)&&(identical(other.password, password) || other.password == password)&&(identical(other.band, band) || other.band == band)&&(identical(other.guestNetworkEnabled, guestNetworkEnabled) || other.guestNetworkEnabled == guestNetworkEnabled)&&(identical(other.routerModel, routerModel) || other.routerModel == routerModel)&&(identical(other.guestSsid, guestSsid) || other.guestSsid == guestSsid));
}


@override
int get hashCode => Object.hash(runtimeType,ssid,password,band,guestNetworkEnabled,routerModel,guestSsid);

@override
String toString() {
  return 'WifiSettingsEntity(ssid: $ssid, password: $password, band: $band, guestNetworkEnabled: $guestNetworkEnabled, routerModel: $routerModel, guestSsid: $guestSsid)';
}


}

/// @nodoc
abstract mixin class $WifiSettingsEntityCopyWith<$Res>  {
  factory $WifiSettingsEntityCopyWith(WifiSettingsEntity value, $Res Function(WifiSettingsEntity) _then) = _$WifiSettingsEntityCopyWithImpl;
@useResult
$Res call({
 String ssid, String password, WifiBand band, bool guestNetworkEnabled, String? routerModel, String? guestSsid
});




}
/// @nodoc
class _$WifiSettingsEntityCopyWithImpl<$Res>
    implements $WifiSettingsEntityCopyWith<$Res> {
  _$WifiSettingsEntityCopyWithImpl(this._self, this._then);

  final WifiSettingsEntity _self;
  final $Res Function(WifiSettingsEntity) _then;

/// Create a copy of WifiSettingsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ssid = null,Object? password = null,Object? band = null,Object? guestNetworkEnabled = null,Object? routerModel = freezed,Object? guestSsid = freezed,}) {
  return _then(_self.copyWith(
ssid: null == ssid ? _self.ssid : ssid // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,band: null == band ? _self.band : band // ignore: cast_nullable_to_non_nullable
as WifiBand,guestNetworkEnabled: null == guestNetworkEnabled ? _self.guestNetworkEnabled : guestNetworkEnabled // ignore: cast_nullable_to_non_nullable
as bool,routerModel: freezed == routerModel ? _self.routerModel : routerModel // ignore: cast_nullable_to_non_nullable
as String?,guestSsid: freezed == guestSsid ? _self.guestSsid : guestSsid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WifiSettingsEntity].
extension WifiSettingsEntityPatterns on WifiSettingsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WifiSettingsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WifiSettingsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WifiSettingsEntity value)  $default,){
final _that = this;
switch (_that) {
case _WifiSettingsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WifiSettingsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WifiSettingsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ssid,  String password,  WifiBand band,  bool guestNetworkEnabled,  String? routerModel,  String? guestSsid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WifiSettingsEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ssid,  String password,  WifiBand band,  bool guestNetworkEnabled,  String? routerModel,  String? guestSsid)  $default,) {final _that = this;
switch (_that) {
case _WifiSettingsEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ssid,  String password,  WifiBand band,  bool guestNetworkEnabled,  String? routerModel,  String? guestSsid)?  $default,) {final _that = this;
switch (_that) {
case _WifiSettingsEntity() when $default != null:
return $default(_that.ssid,_that.password,_that.band,_that.guestNetworkEnabled,_that.routerModel,_that.guestSsid);case _:
  return null;

}
}

}

/// @nodoc


class _WifiSettingsEntity implements WifiSettingsEntity {
  const _WifiSettingsEntity({required this.ssid, required this.password, required this.band, this.guestNetworkEnabled = false, this.routerModel, this.guestSsid});
  

@override final  String ssid;
@override final  String password;
@override final  WifiBand band;
@override@JsonKey() final  bool guestNetworkEnabled;
@override final  String? routerModel;
@override final  String? guestSsid;

/// Create a copy of WifiSettingsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WifiSettingsEntityCopyWith<_WifiSettingsEntity> get copyWith => __$WifiSettingsEntityCopyWithImpl<_WifiSettingsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WifiSettingsEntity&&(identical(other.ssid, ssid) || other.ssid == ssid)&&(identical(other.password, password) || other.password == password)&&(identical(other.band, band) || other.band == band)&&(identical(other.guestNetworkEnabled, guestNetworkEnabled) || other.guestNetworkEnabled == guestNetworkEnabled)&&(identical(other.routerModel, routerModel) || other.routerModel == routerModel)&&(identical(other.guestSsid, guestSsid) || other.guestSsid == guestSsid));
}


@override
int get hashCode => Object.hash(runtimeType,ssid,password,band,guestNetworkEnabled,routerModel,guestSsid);

@override
String toString() {
  return 'WifiSettingsEntity(ssid: $ssid, password: $password, band: $band, guestNetworkEnabled: $guestNetworkEnabled, routerModel: $routerModel, guestSsid: $guestSsid)';
}


}

/// @nodoc
abstract mixin class _$WifiSettingsEntityCopyWith<$Res> implements $WifiSettingsEntityCopyWith<$Res> {
  factory _$WifiSettingsEntityCopyWith(_WifiSettingsEntity value, $Res Function(_WifiSettingsEntity) _then) = __$WifiSettingsEntityCopyWithImpl;
@override @useResult
$Res call({
 String ssid, String password, WifiBand band, bool guestNetworkEnabled, String? routerModel, String? guestSsid
});




}
/// @nodoc
class __$WifiSettingsEntityCopyWithImpl<$Res>
    implements _$WifiSettingsEntityCopyWith<$Res> {
  __$WifiSettingsEntityCopyWithImpl(this._self, this._then);

  final _WifiSettingsEntity _self;
  final $Res Function(_WifiSettingsEntity) _then;

/// Create a copy of WifiSettingsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ssid = null,Object? password = null,Object? band = null,Object? guestNetworkEnabled = null,Object? routerModel = freezed,Object? guestSsid = freezed,}) {
  return _then(_WifiSettingsEntity(
ssid: null == ssid ? _self.ssid : ssid // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,band: null == band ? _self.band : band // ignore: cast_nullable_to_non_nullable
as WifiBand,guestNetworkEnabled: null == guestNetworkEnabled ? _self.guestNetworkEnabled : guestNetworkEnabled // ignore: cast_nullable_to_non_nullable
as bool,routerModel: freezed == routerModel ? _self.routerModel : routerModel // ignore: cast_nullable_to_non_nullable
as String?,guestSsid: freezed == guestSsid ? _self.guestSsid : guestSsid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ConnectedDeviceEntity {

 String get id; String get name; DeviceKind get kind; String get ipAddress; int get throughputMbps; bool get isBlocked;
/// Create a copy of ConnectedDeviceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectedDeviceEntityCopyWith<ConnectedDeviceEntity> get copyWith => _$ConnectedDeviceEntityCopyWithImpl<ConnectedDeviceEntity>(this as ConnectedDeviceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedDeviceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.throughputMbps, throughputMbps) || other.throughputMbps == throughputMbps)&&(identical(other.isBlocked, isBlocked) || other.isBlocked == isBlocked));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,kind,ipAddress,throughputMbps,isBlocked);

@override
String toString() {
  return 'ConnectedDeviceEntity(id: $id, name: $name, kind: $kind, ipAddress: $ipAddress, throughputMbps: $throughputMbps, isBlocked: $isBlocked)';
}


}

/// @nodoc
abstract mixin class $ConnectedDeviceEntityCopyWith<$Res>  {
  factory $ConnectedDeviceEntityCopyWith(ConnectedDeviceEntity value, $Res Function(ConnectedDeviceEntity) _then) = _$ConnectedDeviceEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, DeviceKind kind, String ipAddress, int throughputMbps, bool isBlocked
});




}
/// @nodoc
class _$ConnectedDeviceEntityCopyWithImpl<$Res>
    implements $ConnectedDeviceEntityCopyWith<$Res> {
  _$ConnectedDeviceEntityCopyWithImpl(this._self, this._then);

  final ConnectedDeviceEntity _self;
  final $Res Function(ConnectedDeviceEntity) _then;

/// Create a copy of ConnectedDeviceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? ipAddress = null,Object? throughputMbps = null,Object? isBlocked = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as DeviceKind,ipAddress: null == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String,throughputMbps: null == throughputMbps ? _self.throughputMbps : throughputMbps // ignore: cast_nullable_to_non_nullable
as int,isBlocked: null == isBlocked ? _self.isBlocked : isBlocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectedDeviceEntity].
extension ConnectedDeviceEntityPatterns on ConnectedDeviceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectedDeviceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectedDeviceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectedDeviceEntity value)  $default,){
final _that = this;
switch (_that) {
case _ConnectedDeviceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectedDeviceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectedDeviceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  DeviceKind kind,  String ipAddress,  int throughputMbps,  bool isBlocked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectedDeviceEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  DeviceKind kind,  String ipAddress,  int throughputMbps,  bool isBlocked)  $default,) {final _that = this;
switch (_that) {
case _ConnectedDeviceEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  DeviceKind kind,  String ipAddress,  int throughputMbps,  bool isBlocked)?  $default,) {final _that = this;
switch (_that) {
case _ConnectedDeviceEntity() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.ipAddress,_that.throughputMbps,_that.isBlocked);case _:
  return null;

}
}

}

/// @nodoc


class _ConnectedDeviceEntity implements ConnectedDeviceEntity {
  const _ConnectedDeviceEntity({required this.id, required this.name, required this.kind, required this.ipAddress, this.throughputMbps = 0, this.isBlocked = false});
  

@override final  String id;
@override final  String name;
@override final  DeviceKind kind;
@override final  String ipAddress;
@override@JsonKey() final  int throughputMbps;
@override@JsonKey() final  bool isBlocked;

/// Create a copy of ConnectedDeviceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectedDeviceEntityCopyWith<_ConnectedDeviceEntity> get copyWith => __$ConnectedDeviceEntityCopyWithImpl<_ConnectedDeviceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectedDeviceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.throughputMbps, throughputMbps) || other.throughputMbps == throughputMbps)&&(identical(other.isBlocked, isBlocked) || other.isBlocked == isBlocked));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,kind,ipAddress,throughputMbps,isBlocked);

@override
String toString() {
  return 'ConnectedDeviceEntity(id: $id, name: $name, kind: $kind, ipAddress: $ipAddress, throughputMbps: $throughputMbps, isBlocked: $isBlocked)';
}


}

/// @nodoc
abstract mixin class _$ConnectedDeviceEntityCopyWith<$Res> implements $ConnectedDeviceEntityCopyWith<$Res> {
  factory _$ConnectedDeviceEntityCopyWith(_ConnectedDeviceEntity value, $Res Function(_ConnectedDeviceEntity) _then) = __$ConnectedDeviceEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, DeviceKind kind, String ipAddress, int throughputMbps, bool isBlocked
});




}
/// @nodoc
class __$ConnectedDeviceEntityCopyWithImpl<$Res>
    implements _$ConnectedDeviceEntityCopyWith<$Res> {
  __$ConnectedDeviceEntityCopyWithImpl(this._self, this._then);

  final _ConnectedDeviceEntity _self;
  final $Res Function(_ConnectedDeviceEntity) _then;

/// Create a copy of ConnectedDeviceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? ipAddress = null,Object? throughputMbps = null,Object? isBlocked = null,}) {
  return _then(_ConnectedDeviceEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as DeviceKind,ipAddress: null == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String,throughputMbps: null == throughputMbps ? _self.throughputMbps : throughputMbps // ignore: cast_nullable_to_non_nullable
as int,isBlocked: null == isBlocked ? _self.isBlocked : isBlocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$UsageSummaryEntity {

 UsageRange get range; double get downloadGb; double get uploadGb; List<UsageBucketEntity> get buckets;
/// Create a copy of UsageSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageSummaryEntityCopyWith<UsageSummaryEntity> get copyWith => _$UsageSummaryEntityCopyWithImpl<UsageSummaryEntity>(this as UsageSummaryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsageSummaryEntity&&(identical(other.range, range) || other.range == range)&&(identical(other.downloadGb, downloadGb) || other.downloadGb == downloadGb)&&(identical(other.uploadGb, uploadGb) || other.uploadGb == uploadGb)&&const DeepCollectionEquality().equals(other.buckets, buckets));
}


@override
int get hashCode => Object.hash(runtimeType,range,downloadGb,uploadGb,const DeepCollectionEquality().hash(buckets));

@override
String toString() {
  return 'UsageSummaryEntity(range: $range, downloadGb: $downloadGb, uploadGb: $uploadGb, buckets: $buckets)';
}


}

/// @nodoc
abstract mixin class $UsageSummaryEntityCopyWith<$Res>  {
  factory $UsageSummaryEntityCopyWith(UsageSummaryEntity value, $Res Function(UsageSummaryEntity) _then) = _$UsageSummaryEntityCopyWithImpl;
@useResult
$Res call({
 UsageRange range, double downloadGb, double uploadGb, List<UsageBucketEntity> buckets
});




}
/// @nodoc
class _$UsageSummaryEntityCopyWithImpl<$Res>
    implements $UsageSummaryEntityCopyWith<$Res> {
  _$UsageSummaryEntityCopyWithImpl(this._self, this._then);

  final UsageSummaryEntity _self;
  final $Res Function(UsageSummaryEntity) _then;

/// Create a copy of UsageSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? range = null,Object? downloadGb = null,Object? uploadGb = null,Object? buckets = null,}) {
  return _then(_self.copyWith(
range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as UsageRange,downloadGb: null == downloadGb ? _self.downloadGb : downloadGb // ignore: cast_nullable_to_non_nullable
as double,uploadGb: null == uploadGb ? _self.uploadGb : uploadGb // ignore: cast_nullable_to_non_nullable
as double,buckets: null == buckets ? _self.buckets : buckets // ignore: cast_nullable_to_non_nullable
as List<UsageBucketEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [UsageSummaryEntity].
extension UsageSummaryEntityPatterns on UsageSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsageSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsageSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsageSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _UsageSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsageSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UsageSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UsageRange range,  double downloadGb,  double uploadGb,  List<UsageBucketEntity> buckets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsageSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UsageRange range,  double downloadGb,  double uploadGb,  List<UsageBucketEntity> buckets)  $default,) {final _that = this;
switch (_that) {
case _UsageSummaryEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UsageRange range,  double downloadGb,  double uploadGb,  List<UsageBucketEntity> buckets)?  $default,) {final _that = this;
switch (_that) {
case _UsageSummaryEntity() when $default != null:
return $default(_that.range,_that.downloadGb,_that.uploadGb,_that.buckets);case _:
  return null;

}
}

}

/// @nodoc


class _UsageSummaryEntity extends UsageSummaryEntity {
  const _UsageSummaryEntity({required this.range, required this.downloadGb, required this.uploadGb, final  List<UsageBucketEntity> buckets = const <UsageBucketEntity>[]}): _buckets = buckets,super._();
  

@override final  UsageRange range;
@override final  double downloadGb;
@override final  double uploadGb;
 final  List<UsageBucketEntity> _buckets;
@override@JsonKey() List<UsageBucketEntity> get buckets {
  if (_buckets is EqualUnmodifiableListView) return _buckets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_buckets);
}


/// Create a copy of UsageSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageSummaryEntityCopyWith<_UsageSummaryEntity> get copyWith => __$UsageSummaryEntityCopyWithImpl<_UsageSummaryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsageSummaryEntity&&(identical(other.range, range) || other.range == range)&&(identical(other.downloadGb, downloadGb) || other.downloadGb == downloadGb)&&(identical(other.uploadGb, uploadGb) || other.uploadGb == uploadGb)&&const DeepCollectionEquality().equals(other._buckets, _buckets));
}


@override
int get hashCode => Object.hash(runtimeType,range,downloadGb,uploadGb,const DeepCollectionEquality().hash(_buckets));

@override
String toString() {
  return 'UsageSummaryEntity(range: $range, downloadGb: $downloadGb, uploadGb: $uploadGb, buckets: $buckets)';
}


}

/// @nodoc
abstract mixin class _$UsageSummaryEntityCopyWith<$Res> implements $UsageSummaryEntityCopyWith<$Res> {
  factory _$UsageSummaryEntityCopyWith(_UsageSummaryEntity value, $Res Function(_UsageSummaryEntity) _then) = __$UsageSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 UsageRange range, double downloadGb, double uploadGb, List<UsageBucketEntity> buckets
});




}
/// @nodoc
class __$UsageSummaryEntityCopyWithImpl<$Res>
    implements _$UsageSummaryEntityCopyWith<$Res> {
  __$UsageSummaryEntityCopyWithImpl(this._self, this._then);

  final _UsageSummaryEntity _self;
  final $Res Function(_UsageSummaryEntity) _then;

/// Create a copy of UsageSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? range = null,Object? downloadGb = null,Object? uploadGb = null,Object? buckets = null,}) {
  return _then(_UsageSummaryEntity(
range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as UsageRange,downloadGb: null == downloadGb ? _self.downloadGb : downloadGb // ignore: cast_nullable_to_non_nullable
as double,uploadGb: null == uploadGb ? _self.uploadGb : uploadGb // ignore: cast_nullable_to_non_nullable
as double,buckets: null == buckets ? _self._buckets : buckets // ignore: cast_nullable_to_non_nullable
as List<UsageBucketEntity>,
  ));
}


}

/// @nodoc
mixin _$UsageBucketEntity {

 String get label; double get downloadGb; double get uploadGb;
/// Create a copy of UsageBucketEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageBucketEntityCopyWith<UsageBucketEntity> get copyWith => _$UsageBucketEntityCopyWithImpl<UsageBucketEntity>(this as UsageBucketEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsageBucketEntity&&(identical(other.label, label) || other.label == label)&&(identical(other.downloadGb, downloadGb) || other.downloadGb == downloadGb)&&(identical(other.uploadGb, uploadGb) || other.uploadGb == uploadGb));
}


@override
int get hashCode => Object.hash(runtimeType,label,downloadGb,uploadGb);

@override
String toString() {
  return 'UsageBucketEntity(label: $label, downloadGb: $downloadGb, uploadGb: $uploadGb)';
}


}

/// @nodoc
abstract mixin class $UsageBucketEntityCopyWith<$Res>  {
  factory $UsageBucketEntityCopyWith(UsageBucketEntity value, $Res Function(UsageBucketEntity) _then) = _$UsageBucketEntityCopyWithImpl;
@useResult
$Res call({
 String label, double downloadGb, double uploadGb
});




}
/// @nodoc
class _$UsageBucketEntityCopyWithImpl<$Res>
    implements $UsageBucketEntityCopyWith<$Res> {
  _$UsageBucketEntityCopyWithImpl(this._self, this._then);

  final UsageBucketEntity _self;
  final $Res Function(UsageBucketEntity) _then;

/// Create a copy of UsageBucketEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? downloadGb = null,Object? uploadGb = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,downloadGb: null == downloadGb ? _self.downloadGb : downloadGb // ignore: cast_nullable_to_non_nullable
as double,uploadGb: null == uploadGb ? _self.uploadGb : uploadGb // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [UsageBucketEntity].
extension UsageBucketEntityPatterns on UsageBucketEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsageBucketEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsageBucketEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsageBucketEntity value)  $default,){
final _that = this;
switch (_that) {
case _UsageBucketEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsageBucketEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UsageBucketEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  double downloadGb,  double uploadGb)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsageBucketEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  double downloadGb,  double uploadGb)  $default,) {final _that = this;
switch (_that) {
case _UsageBucketEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  double downloadGb,  double uploadGb)?  $default,) {final _that = this;
switch (_that) {
case _UsageBucketEntity() when $default != null:
return $default(_that.label,_that.downloadGb,_that.uploadGb);case _:
  return null;

}
}

}

/// @nodoc


class _UsageBucketEntity implements UsageBucketEntity {
  const _UsageBucketEntity({required this.label, required this.downloadGb, required this.uploadGb});
  

@override final  String label;
@override final  double downloadGb;
@override final  double uploadGb;

/// Create a copy of UsageBucketEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageBucketEntityCopyWith<_UsageBucketEntity> get copyWith => __$UsageBucketEntityCopyWithImpl<_UsageBucketEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsageBucketEntity&&(identical(other.label, label) || other.label == label)&&(identical(other.downloadGb, downloadGb) || other.downloadGb == downloadGb)&&(identical(other.uploadGb, uploadGb) || other.uploadGb == uploadGb));
}


@override
int get hashCode => Object.hash(runtimeType,label,downloadGb,uploadGb);

@override
String toString() {
  return 'UsageBucketEntity(label: $label, downloadGb: $downloadGb, uploadGb: $uploadGb)';
}


}

/// @nodoc
abstract mixin class _$UsageBucketEntityCopyWith<$Res> implements $UsageBucketEntityCopyWith<$Res> {
  factory _$UsageBucketEntityCopyWith(_UsageBucketEntity value, $Res Function(_UsageBucketEntity) _then) = __$UsageBucketEntityCopyWithImpl;
@override @useResult
$Res call({
 String label, double downloadGb, double uploadGb
});




}
/// @nodoc
class __$UsageBucketEntityCopyWithImpl<$Res>
    implements _$UsageBucketEntityCopyWith<$Res> {
  __$UsageBucketEntityCopyWithImpl(this._self, this._then);

  final _UsageBucketEntity _self;
  final $Res Function(_UsageBucketEntity) _then;

/// Create a copy of UsageBucketEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? downloadGb = null,Object? uploadGb = null,}) {
  return _then(_UsageBucketEntity(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,downloadGb: null == downloadGb ? _self.downloadGb : downloadGb // ignore: cast_nullable_to_non_nullable
as double,uploadGb: null == uploadGb ? _self.uploadGb : uploadGb // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$SpeedTestResultEntity {

 double get downloadMbps; double get uploadMbps; int get pingMs; int get jitterMs; DateTime get measuredAt; String? get serverLabel;
/// Create a copy of SpeedTestResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpeedTestResultEntityCopyWith<SpeedTestResultEntity> get copyWith => _$SpeedTestResultEntityCopyWithImpl<SpeedTestResultEntity>(this as SpeedTestResultEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeedTestResultEntity&&(identical(other.downloadMbps, downloadMbps) || other.downloadMbps == downloadMbps)&&(identical(other.uploadMbps, uploadMbps) || other.uploadMbps == uploadMbps)&&(identical(other.pingMs, pingMs) || other.pingMs == pingMs)&&(identical(other.jitterMs, jitterMs) || other.jitterMs == jitterMs)&&(identical(other.measuredAt, measuredAt) || other.measuredAt == measuredAt)&&(identical(other.serverLabel, serverLabel) || other.serverLabel == serverLabel));
}


@override
int get hashCode => Object.hash(runtimeType,downloadMbps,uploadMbps,pingMs,jitterMs,measuredAt,serverLabel);

@override
String toString() {
  return 'SpeedTestResultEntity(downloadMbps: $downloadMbps, uploadMbps: $uploadMbps, pingMs: $pingMs, jitterMs: $jitterMs, measuredAt: $measuredAt, serverLabel: $serverLabel)';
}


}

/// @nodoc
abstract mixin class $SpeedTestResultEntityCopyWith<$Res>  {
  factory $SpeedTestResultEntityCopyWith(SpeedTestResultEntity value, $Res Function(SpeedTestResultEntity) _then) = _$SpeedTestResultEntityCopyWithImpl;
@useResult
$Res call({
 double downloadMbps, double uploadMbps, int pingMs, int jitterMs, DateTime measuredAt, String? serverLabel
});




}
/// @nodoc
class _$SpeedTestResultEntityCopyWithImpl<$Res>
    implements $SpeedTestResultEntityCopyWith<$Res> {
  _$SpeedTestResultEntityCopyWithImpl(this._self, this._then);

  final SpeedTestResultEntity _self;
  final $Res Function(SpeedTestResultEntity) _then;

/// Create a copy of SpeedTestResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? downloadMbps = null,Object? uploadMbps = null,Object? pingMs = null,Object? jitterMs = null,Object? measuredAt = null,Object? serverLabel = freezed,}) {
  return _then(_self.copyWith(
downloadMbps: null == downloadMbps ? _self.downloadMbps : downloadMbps // ignore: cast_nullable_to_non_nullable
as double,uploadMbps: null == uploadMbps ? _self.uploadMbps : uploadMbps // ignore: cast_nullable_to_non_nullable
as double,pingMs: null == pingMs ? _self.pingMs : pingMs // ignore: cast_nullable_to_non_nullable
as int,jitterMs: null == jitterMs ? _self.jitterMs : jitterMs // ignore: cast_nullable_to_non_nullable
as int,measuredAt: null == measuredAt ? _self.measuredAt : measuredAt // ignore: cast_nullable_to_non_nullable
as DateTime,serverLabel: freezed == serverLabel ? _self.serverLabel : serverLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpeedTestResultEntity].
extension SpeedTestResultEntityPatterns on SpeedTestResultEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpeedTestResultEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpeedTestResultEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpeedTestResultEntity value)  $default,){
final _that = this;
switch (_that) {
case _SpeedTestResultEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpeedTestResultEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SpeedTestResultEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double downloadMbps,  double uploadMbps,  int pingMs,  int jitterMs,  DateTime measuredAt,  String? serverLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpeedTestResultEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double downloadMbps,  double uploadMbps,  int pingMs,  int jitterMs,  DateTime measuredAt,  String? serverLabel)  $default,) {final _that = this;
switch (_that) {
case _SpeedTestResultEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double downloadMbps,  double uploadMbps,  int pingMs,  int jitterMs,  DateTime measuredAt,  String? serverLabel)?  $default,) {final _that = this;
switch (_that) {
case _SpeedTestResultEntity() when $default != null:
return $default(_that.downloadMbps,_that.uploadMbps,_that.pingMs,_that.jitterMs,_that.measuredAt,_that.serverLabel);case _:
  return null;

}
}

}

/// @nodoc


class _SpeedTestResultEntity extends SpeedTestResultEntity {
  const _SpeedTestResultEntity({required this.downloadMbps, required this.uploadMbps, required this.pingMs, required this.jitterMs, required this.measuredAt, this.serverLabel}): super._();
  

@override final  double downloadMbps;
@override final  double uploadMbps;
@override final  int pingMs;
@override final  int jitterMs;
@override final  DateTime measuredAt;
@override final  String? serverLabel;

/// Create a copy of SpeedTestResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpeedTestResultEntityCopyWith<_SpeedTestResultEntity> get copyWith => __$SpeedTestResultEntityCopyWithImpl<_SpeedTestResultEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpeedTestResultEntity&&(identical(other.downloadMbps, downloadMbps) || other.downloadMbps == downloadMbps)&&(identical(other.uploadMbps, uploadMbps) || other.uploadMbps == uploadMbps)&&(identical(other.pingMs, pingMs) || other.pingMs == pingMs)&&(identical(other.jitterMs, jitterMs) || other.jitterMs == jitterMs)&&(identical(other.measuredAt, measuredAt) || other.measuredAt == measuredAt)&&(identical(other.serverLabel, serverLabel) || other.serverLabel == serverLabel));
}


@override
int get hashCode => Object.hash(runtimeType,downloadMbps,uploadMbps,pingMs,jitterMs,measuredAt,serverLabel);

@override
String toString() {
  return 'SpeedTestResultEntity(downloadMbps: $downloadMbps, uploadMbps: $uploadMbps, pingMs: $pingMs, jitterMs: $jitterMs, measuredAt: $measuredAt, serverLabel: $serverLabel)';
}


}

/// @nodoc
abstract mixin class _$SpeedTestResultEntityCopyWith<$Res> implements $SpeedTestResultEntityCopyWith<$Res> {
  factory _$SpeedTestResultEntityCopyWith(_SpeedTestResultEntity value, $Res Function(_SpeedTestResultEntity) _then) = __$SpeedTestResultEntityCopyWithImpl;
@override @useResult
$Res call({
 double downloadMbps, double uploadMbps, int pingMs, int jitterMs, DateTime measuredAt, String? serverLabel
});




}
/// @nodoc
class __$SpeedTestResultEntityCopyWithImpl<$Res>
    implements _$SpeedTestResultEntityCopyWith<$Res> {
  __$SpeedTestResultEntityCopyWithImpl(this._self, this._then);

  final _SpeedTestResultEntity _self;
  final $Res Function(_SpeedTestResultEntity) _then;

/// Create a copy of SpeedTestResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? downloadMbps = null,Object? uploadMbps = null,Object? pingMs = null,Object? jitterMs = null,Object? measuredAt = null,Object? serverLabel = freezed,}) {
  return _then(_SpeedTestResultEntity(
downloadMbps: null == downloadMbps ? _self.downloadMbps : downloadMbps // ignore: cast_nullable_to_non_nullable
as double,uploadMbps: null == uploadMbps ? _self.uploadMbps : uploadMbps // ignore: cast_nullable_to_non_nullable
as double,pingMs: null == pingMs ? _self.pingMs : pingMs // ignore: cast_nullable_to_non_nullable
as int,jitterMs: null == jitterMs ? _self.jitterMs : jitterMs // ignore: cast_nullable_to_non_nullable
as int,measuredAt: null == measuredAt ? _self.measuredAt : measuredAt // ignore: cast_nullable_to_non_nullable
as DateTime,serverLabel: freezed == serverLabel ? _self.serverLabel : serverLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$NotificationEntity {

 String get id; String get title; String get body; NotificationCategory get category; DateTime get sentAt; bool get isRead;
/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationEntityCopyWith<NotificationEntity> get copyWith => _$NotificationEntityCopyWithImpl<NotificationEntity>(this as NotificationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.category, category) || other.category == category)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,category,sentAt,isRead);

@override
String toString() {
  return 'NotificationEntity(id: $id, title: $title, body: $body, category: $category, sentAt: $sentAt, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class $NotificationEntityCopyWith<$Res>  {
  factory $NotificationEntityCopyWith(NotificationEntity value, $Res Function(NotificationEntity) _then) = _$NotificationEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String body, NotificationCategory category, DateTime sentAt, bool isRead
});




}
/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._self, this._then);

  final NotificationEntity _self;
  final $Res Function(NotificationEntity) _then;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? body = null,Object? category = null,Object? sentAt = null,Object? isRead = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NotificationCategory,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationEntity].
extension NotificationEntityPatterns on NotificationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationEntity value)  $default,){
final _that = this;
switch (_that) {
case _NotificationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String body,  NotificationCategory category,  DateTime sentAt,  bool isRead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String body,  NotificationCategory category,  DateTime sentAt,  bool isRead)  $default,) {final _that = this;
switch (_that) {
case _NotificationEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String body,  NotificationCategory category,  DateTime sentAt,  bool isRead)?  $default,) {final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.category,_that.sentAt,_that.isRead);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationEntity implements NotificationEntity {
  const _NotificationEntity({required this.id, required this.title, required this.body, required this.category, required this.sentAt, this.isRead = false});
  

@override final  String id;
@override final  String title;
@override final  String body;
@override final  NotificationCategory category;
@override final  DateTime sentAt;
@override@JsonKey() final  bool isRead;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationEntityCopyWith<_NotificationEntity> get copyWith => __$NotificationEntityCopyWithImpl<_NotificationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.category, category) || other.category == category)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,category,sentAt,isRead);

@override
String toString() {
  return 'NotificationEntity(id: $id, title: $title, body: $body, category: $category, sentAt: $sentAt, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class _$NotificationEntityCopyWith<$Res> implements $NotificationEntityCopyWith<$Res> {
  factory _$NotificationEntityCopyWith(_NotificationEntity value, $Res Function(_NotificationEntity) _then) = __$NotificationEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String body, NotificationCategory category, DateTime sentAt, bool isRead
});




}
/// @nodoc
class __$NotificationEntityCopyWithImpl<$Res>
    implements _$NotificationEntityCopyWith<$Res> {
  __$NotificationEntityCopyWithImpl(this._self, this._then);

  final _NotificationEntity _self;
  final $Res Function(_NotificationEntity) _then;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? body = null,Object? category = null,Object? sentAt = null,Object? isRead = null,}) {
  return _then(_NotificationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NotificationCategory,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$NotificationPreferenceEntity {

 NotificationCategory get category; bool get enabled;
/// Create a copy of NotificationPreferenceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPreferenceEntityCopyWith<NotificationPreferenceEntity> get copyWith => _$NotificationPreferenceEntityCopyWithImpl<NotificationPreferenceEntity>(this as NotificationPreferenceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPreferenceEntity&&(identical(other.category, category) || other.category == category)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,category,enabled);

@override
String toString() {
  return 'NotificationPreferenceEntity(category: $category, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class $NotificationPreferenceEntityCopyWith<$Res>  {
  factory $NotificationPreferenceEntityCopyWith(NotificationPreferenceEntity value, $Res Function(NotificationPreferenceEntity) _then) = _$NotificationPreferenceEntityCopyWithImpl;
@useResult
$Res call({
 NotificationCategory category, bool enabled
});




}
/// @nodoc
class _$NotificationPreferenceEntityCopyWithImpl<$Res>
    implements $NotificationPreferenceEntityCopyWith<$Res> {
  _$NotificationPreferenceEntityCopyWithImpl(this._self, this._then);

  final NotificationPreferenceEntity _self;
  final $Res Function(NotificationPreferenceEntity) _then;

/// Create a copy of NotificationPreferenceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? enabled = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NotificationCategory,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationPreferenceEntity].
extension NotificationPreferenceEntityPatterns on NotificationPreferenceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPreferenceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPreferenceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPreferenceEntity value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPreferenceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPreferenceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPreferenceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NotificationCategory category,  bool enabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPreferenceEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NotificationCategory category,  bool enabled)  $default,) {final _that = this;
switch (_that) {
case _NotificationPreferenceEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NotificationCategory category,  bool enabled)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPreferenceEntity() when $default != null:
return $default(_that.category,_that.enabled);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationPreferenceEntity implements NotificationPreferenceEntity {
  const _NotificationPreferenceEntity({required this.category, required this.enabled});
  

@override final  NotificationCategory category;
@override final  bool enabled;

/// Create a copy of NotificationPreferenceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPreferenceEntityCopyWith<_NotificationPreferenceEntity> get copyWith => __$NotificationPreferenceEntityCopyWithImpl<_NotificationPreferenceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPreferenceEntity&&(identical(other.category, category) || other.category == category)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,category,enabled);

@override
String toString() {
  return 'NotificationPreferenceEntity(category: $category, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$NotificationPreferenceEntityCopyWith<$Res> implements $NotificationPreferenceEntityCopyWith<$Res> {
  factory _$NotificationPreferenceEntityCopyWith(_NotificationPreferenceEntity value, $Res Function(_NotificationPreferenceEntity) _then) = __$NotificationPreferenceEntityCopyWithImpl;
@override @useResult
$Res call({
 NotificationCategory category, bool enabled
});




}
/// @nodoc
class __$NotificationPreferenceEntityCopyWithImpl<$Res>
    implements _$NotificationPreferenceEntityCopyWith<$Res> {
  __$NotificationPreferenceEntityCopyWithImpl(this._self, this._then);

  final _NotificationPreferenceEntity _self;
  final $Res Function(_NotificationPreferenceEntity) _then;

/// Create a copy of NotificationPreferenceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? enabled = null,}) {
  return _then(_NotificationPreferenceEntity(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NotificationCategory,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$OfferEntity {

 String get id; String get kicker; String get title; String get body; String? get imageUrl;
/// Create a copy of OfferEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferEntityCopyWith<OfferEntity> get copyWith => _$OfferEntityCopyWithImpl<OfferEntity>(this as OfferEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfferEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.kicker, kicker) || other.kicker == kicker)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,kicker,title,body,imageUrl);

@override
String toString() {
  return 'OfferEntity(id: $id, kicker: $kicker, title: $title, body: $body, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $OfferEntityCopyWith<$Res>  {
  factory $OfferEntityCopyWith(OfferEntity value, $Res Function(OfferEntity) _then) = _$OfferEntityCopyWithImpl;
@useResult
$Res call({
 String id, String kicker, String title, String body, String? imageUrl
});




}
/// @nodoc
class _$OfferEntityCopyWithImpl<$Res>
    implements $OfferEntityCopyWith<$Res> {
  _$OfferEntityCopyWithImpl(this._self, this._then);

  final OfferEntity _self;
  final $Res Function(OfferEntity) _then;

/// Create a copy of OfferEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? kicker = null,Object? title = null,Object? body = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kicker: null == kicker ? _self.kicker : kicker // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OfferEntity].
extension OfferEntityPatterns on OfferEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfferEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfferEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfferEntity value)  $default,){
final _that = this;
switch (_that) {
case _OfferEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfferEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OfferEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String kicker,  String title,  String body,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfferEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String kicker,  String title,  String body,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _OfferEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String kicker,  String title,  String body,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _OfferEntity() when $default != null:
return $default(_that.id,_that.kicker,_that.title,_that.body,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _OfferEntity implements OfferEntity {
  const _OfferEntity({required this.id, required this.kicker, required this.title, required this.body, this.imageUrl});
  

@override final  String id;
@override final  String kicker;
@override final  String title;
@override final  String body;
@override final  String? imageUrl;

/// Create a copy of OfferEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferEntityCopyWith<_OfferEntity> get copyWith => __$OfferEntityCopyWithImpl<_OfferEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfferEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.kicker, kicker) || other.kicker == kicker)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,kicker,title,body,imageUrl);

@override
String toString() {
  return 'OfferEntity(id: $id, kicker: $kicker, title: $title, body: $body, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$OfferEntityCopyWith<$Res> implements $OfferEntityCopyWith<$Res> {
  factory _$OfferEntityCopyWith(_OfferEntity value, $Res Function(_OfferEntity) _then) = __$OfferEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String kicker, String title, String body, String? imageUrl
});




}
/// @nodoc
class __$OfferEntityCopyWithImpl<$Res>
    implements _$OfferEntityCopyWith<$Res> {
  __$OfferEntityCopyWithImpl(this._self, this._then);

  final _OfferEntity _self;
  final $Res Function(_OfferEntity) _then;

/// Create a copy of OfferEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? kicker = null,Object? title = null,Object? body = null,Object? imageUrl = freezed,}) {
  return _then(_OfferEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kicker: null == kicker ? _self.kicker : kicker // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$PackageEntity {

 int get id; String get name; String get code; int get downloadKbps; int get uploadKbps; double get price; String get currency; int get validityDays; bool get isActive; String? get description;
/// Create a copy of PackageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageEntityCopyWith<PackageEntity> get copyWith => _$PackageEntityCopyWithImpl<PackageEntity>(this as PackageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.downloadKbps, downloadKbps) || other.downloadKbps == downloadKbps)&&(identical(other.uploadKbps, uploadKbps) || other.uploadKbps == uploadKbps)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.validityDays, validityDays) || other.validityDays == validityDays)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,code,downloadKbps,uploadKbps,price,currency,validityDays,isActive,description);

@override
String toString() {
  return 'PackageEntity(id: $id, name: $name, code: $code, downloadKbps: $downloadKbps, uploadKbps: $uploadKbps, price: $price, currency: $currency, validityDays: $validityDays, isActive: $isActive, description: $description)';
}


}

/// @nodoc
abstract mixin class $PackageEntityCopyWith<$Res>  {
  factory $PackageEntityCopyWith(PackageEntity value, $Res Function(PackageEntity) _then) = _$PackageEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String code, int downloadKbps, int uploadKbps, double price, String currency, int validityDays, bool isActive, String? description
});




}
/// @nodoc
class _$PackageEntityCopyWithImpl<$Res>
    implements $PackageEntityCopyWith<$Res> {
  _$PackageEntityCopyWithImpl(this._self, this._then);

  final PackageEntity _self;
  final $Res Function(PackageEntity) _then;

/// Create a copy of PackageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = null,Object? downloadKbps = null,Object? uploadKbps = null,Object? price = null,Object? currency = null,Object? validityDays = null,Object? isActive = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,downloadKbps: null == downloadKbps ? _self.downloadKbps : downloadKbps // ignore: cast_nullable_to_non_nullable
as int,uploadKbps: null == uploadKbps ? _self.uploadKbps : uploadKbps // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,validityDays: null == validityDays ? _self.validityDays : validityDays // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageEntity].
extension PackageEntityPatterns on PackageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageEntity value)  $default,){
final _that = this;
switch (_that) {
case _PackageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PackageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String code,  int downloadKbps,  int uploadKbps,  double price,  String currency,  int validityDays,  bool isActive,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageEntity() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.downloadKbps,_that.uploadKbps,_that.price,_that.currency,_that.validityDays,_that.isActive,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String code,  int downloadKbps,  int uploadKbps,  double price,  String currency,  int validityDays,  bool isActive,  String? description)  $default,) {final _that = this;
switch (_that) {
case _PackageEntity():
return $default(_that.id,_that.name,_that.code,_that.downloadKbps,_that.uploadKbps,_that.price,_that.currency,_that.validityDays,_that.isActive,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String code,  int downloadKbps,  int uploadKbps,  double price,  String currency,  int validityDays,  bool isActive,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _PackageEntity() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.downloadKbps,_that.uploadKbps,_that.price,_that.currency,_that.validityDays,_that.isActive,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _PackageEntity extends PackageEntity {
  const _PackageEntity({required this.id, required this.name, required this.code, required this.downloadKbps, required this.uploadKbps, required this.price, required this.currency, required this.validityDays, this.isActive = true, this.description}): super._();
  

@override final  int id;
@override final  String name;
@override final  String code;
@override final  int downloadKbps;
@override final  int uploadKbps;
@override final  double price;
@override final  String currency;
@override final  int validityDays;
@override@JsonKey() final  bool isActive;
@override final  String? description;

/// Create a copy of PackageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageEntityCopyWith<_PackageEntity> get copyWith => __$PackageEntityCopyWithImpl<_PackageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.downloadKbps, downloadKbps) || other.downloadKbps == downloadKbps)&&(identical(other.uploadKbps, uploadKbps) || other.uploadKbps == uploadKbps)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.validityDays, validityDays) || other.validityDays == validityDays)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,code,downloadKbps,uploadKbps,price,currency,validityDays,isActive,description);

@override
String toString() {
  return 'PackageEntity(id: $id, name: $name, code: $code, downloadKbps: $downloadKbps, uploadKbps: $uploadKbps, price: $price, currency: $currency, validityDays: $validityDays, isActive: $isActive, description: $description)';
}


}

/// @nodoc
abstract mixin class _$PackageEntityCopyWith<$Res> implements $PackageEntityCopyWith<$Res> {
  factory _$PackageEntityCopyWith(_PackageEntity value, $Res Function(_PackageEntity) _then) = __$PackageEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String code, int downloadKbps, int uploadKbps, double price, String currency, int validityDays, bool isActive, String? description
});




}
/// @nodoc
class __$PackageEntityCopyWithImpl<$Res>
    implements _$PackageEntityCopyWith<$Res> {
  __$PackageEntityCopyWithImpl(this._self, this._then);

  final _PackageEntity _self;
  final $Res Function(_PackageEntity) _then;

/// Create a copy of PackageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = null,Object? downloadKbps = null,Object? uploadKbps = null,Object? price = null,Object? currency = null,Object? validityDays = null,Object? isActive = null,Object? description = freezed,}) {
  return _then(_PackageEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,downloadKbps: null == downloadKbps ? _self.downloadKbps : downloadKbps // ignore: cast_nullable_to_non_nullable
as int,uploadKbps: null == uploadKbps ? _self.uploadKbps : uploadKbps // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,validityDays: null == validityDays ? _self.validityDays : validityDays // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$RewardsEntity {

 int get points;/// How many points buy one unit of currency — 100 points = Tk 10 means a
/// rate of 10. Carried from the server so a promotion can change it
/// without an app release.
 int get pointsPerCurrencyUnit; List<RedeemOptionEntity> get options; List<RewardLedgerEntryEntity> get ledger;
/// Create a copy of RewardsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardsEntityCopyWith<RewardsEntity> get copyWith => _$RewardsEntityCopyWithImpl<RewardsEntity>(this as RewardsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardsEntity&&(identical(other.points, points) || other.points == points)&&(identical(other.pointsPerCurrencyUnit, pointsPerCurrencyUnit) || other.pointsPerCurrencyUnit == pointsPerCurrencyUnit)&&const DeepCollectionEquality().equals(other.options, options)&&const DeepCollectionEquality().equals(other.ledger, ledger));
}


@override
int get hashCode => Object.hash(runtimeType,points,pointsPerCurrencyUnit,const DeepCollectionEquality().hash(options),const DeepCollectionEquality().hash(ledger));

@override
String toString() {
  return 'RewardsEntity(points: $points, pointsPerCurrencyUnit: $pointsPerCurrencyUnit, options: $options, ledger: $ledger)';
}


}

/// @nodoc
abstract mixin class $RewardsEntityCopyWith<$Res>  {
  factory $RewardsEntityCopyWith(RewardsEntity value, $Res Function(RewardsEntity) _then) = _$RewardsEntityCopyWithImpl;
@useResult
$Res call({
 int points, int pointsPerCurrencyUnit, List<RedeemOptionEntity> options, List<RewardLedgerEntryEntity> ledger
});




}
/// @nodoc
class _$RewardsEntityCopyWithImpl<$Res>
    implements $RewardsEntityCopyWith<$Res> {
  _$RewardsEntityCopyWithImpl(this._self, this._then);

  final RewardsEntity _self;
  final $Res Function(RewardsEntity) _then;

/// Create a copy of RewardsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = null,Object? pointsPerCurrencyUnit = null,Object? options = null,Object? ledger = null,}) {
  return _then(_self.copyWith(
points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,pointsPerCurrencyUnit: null == pointsPerCurrencyUnit ? _self.pointsPerCurrencyUnit : pointsPerCurrencyUnit // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<RedeemOptionEntity>,ledger: null == ledger ? _self.ledger : ledger // ignore: cast_nullable_to_non_nullable
as List<RewardLedgerEntryEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [RewardsEntity].
extension RewardsEntityPatterns on RewardsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardsEntity value)  $default,){
final _that = this;
switch (_that) {
case _RewardsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RewardsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int points,  int pointsPerCurrencyUnit,  List<RedeemOptionEntity> options,  List<RewardLedgerEntryEntity> ledger)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardsEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int points,  int pointsPerCurrencyUnit,  List<RedeemOptionEntity> options,  List<RewardLedgerEntryEntity> ledger)  $default,) {final _that = this;
switch (_that) {
case _RewardsEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int points,  int pointsPerCurrencyUnit,  List<RedeemOptionEntity> options,  List<RewardLedgerEntryEntity> ledger)?  $default,) {final _that = this;
switch (_that) {
case _RewardsEntity() when $default != null:
return $default(_that.points,_that.pointsPerCurrencyUnit,_that.options,_that.ledger);case _:
  return null;

}
}

}

/// @nodoc


class _RewardsEntity extends RewardsEntity {
  const _RewardsEntity({required this.points, this.pointsPerCurrencyUnit = 10, final  List<RedeemOptionEntity> options = const <RedeemOptionEntity>[], final  List<RewardLedgerEntryEntity> ledger = const <RewardLedgerEntryEntity>[]}): _options = options,_ledger = ledger,super._();
  

@override final  int points;
/// How many points buy one unit of currency — 100 points = Tk 10 means a
/// rate of 10. Carried from the server so a promotion can change it
/// without an app release.
@override@JsonKey() final  int pointsPerCurrencyUnit;
 final  List<RedeemOptionEntity> _options;
@override@JsonKey() List<RedeemOptionEntity> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

 final  List<RewardLedgerEntryEntity> _ledger;
@override@JsonKey() List<RewardLedgerEntryEntity> get ledger {
  if (_ledger is EqualUnmodifiableListView) return _ledger;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ledger);
}


/// Create a copy of RewardsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardsEntityCopyWith<_RewardsEntity> get copyWith => __$RewardsEntityCopyWithImpl<_RewardsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardsEntity&&(identical(other.points, points) || other.points == points)&&(identical(other.pointsPerCurrencyUnit, pointsPerCurrencyUnit) || other.pointsPerCurrencyUnit == pointsPerCurrencyUnit)&&const DeepCollectionEquality().equals(other._options, _options)&&const DeepCollectionEquality().equals(other._ledger, _ledger));
}


@override
int get hashCode => Object.hash(runtimeType,points,pointsPerCurrencyUnit,const DeepCollectionEquality().hash(_options),const DeepCollectionEquality().hash(_ledger));

@override
String toString() {
  return 'RewardsEntity(points: $points, pointsPerCurrencyUnit: $pointsPerCurrencyUnit, options: $options, ledger: $ledger)';
}


}

/// @nodoc
abstract mixin class _$RewardsEntityCopyWith<$Res> implements $RewardsEntityCopyWith<$Res> {
  factory _$RewardsEntityCopyWith(_RewardsEntity value, $Res Function(_RewardsEntity) _then) = __$RewardsEntityCopyWithImpl;
@override @useResult
$Res call({
 int points, int pointsPerCurrencyUnit, List<RedeemOptionEntity> options, List<RewardLedgerEntryEntity> ledger
});




}
/// @nodoc
class __$RewardsEntityCopyWithImpl<$Res>
    implements _$RewardsEntityCopyWith<$Res> {
  __$RewardsEntityCopyWithImpl(this._self, this._then);

  final _RewardsEntity _self;
  final $Res Function(_RewardsEntity) _then;

/// Create a copy of RewardsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = null,Object? pointsPerCurrencyUnit = null,Object? options = null,Object? ledger = null,}) {
  return _then(_RewardsEntity(
points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,pointsPerCurrencyUnit: null == pointsPerCurrencyUnit ? _self.pointsPerCurrencyUnit : pointsPerCurrencyUnit // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<RedeemOptionEntity>,ledger: null == ledger ? _self._ledger : ledger // ignore: cast_nullable_to_non_nullable
as List<RewardLedgerEntryEntity>,
  ));
}


}

/// @nodoc
mixin _$RedeemOptionEntity {

 String get id; String get title; int get cost;
/// Create a copy of RedeemOptionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedeemOptionEntityCopyWith<RedeemOptionEntity> get copyWith => _$RedeemOptionEntityCopyWithImpl<RedeemOptionEntity>(this as RedeemOptionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedeemOptionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.cost, cost) || other.cost == cost));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,cost);

@override
String toString() {
  return 'RedeemOptionEntity(id: $id, title: $title, cost: $cost)';
}


}

/// @nodoc
abstract mixin class $RedeemOptionEntityCopyWith<$Res>  {
  factory $RedeemOptionEntityCopyWith(RedeemOptionEntity value, $Res Function(RedeemOptionEntity) _then) = _$RedeemOptionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, int cost
});




}
/// @nodoc
class _$RedeemOptionEntityCopyWithImpl<$Res>
    implements $RedeemOptionEntityCopyWith<$Res> {
  _$RedeemOptionEntityCopyWithImpl(this._self, this._then);

  final RedeemOptionEntity _self;
  final $Res Function(RedeemOptionEntity) _then;

/// Create a copy of RedeemOptionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? cost = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RedeemOptionEntity].
extension RedeemOptionEntityPatterns on RedeemOptionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedeemOptionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedeemOptionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedeemOptionEntity value)  $default,){
final _that = this;
switch (_that) {
case _RedeemOptionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedeemOptionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RedeemOptionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  int cost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedeemOptionEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  int cost)  $default,) {final _that = this;
switch (_that) {
case _RedeemOptionEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  int cost)?  $default,) {final _that = this;
switch (_that) {
case _RedeemOptionEntity() when $default != null:
return $default(_that.id,_that.title,_that.cost);case _:
  return null;

}
}

}

/// @nodoc


class _RedeemOptionEntity implements RedeemOptionEntity {
  const _RedeemOptionEntity({required this.id, required this.title, required this.cost});
  

@override final  String id;
@override final  String title;
@override final  int cost;

/// Create a copy of RedeemOptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedeemOptionEntityCopyWith<_RedeemOptionEntity> get copyWith => __$RedeemOptionEntityCopyWithImpl<_RedeemOptionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedeemOptionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.cost, cost) || other.cost == cost));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,cost);

@override
String toString() {
  return 'RedeemOptionEntity(id: $id, title: $title, cost: $cost)';
}


}

/// @nodoc
abstract mixin class _$RedeemOptionEntityCopyWith<$Res> implements $RedeemOptionEntityCopyWith<$Res> {
  factory _$RedeemOptionEntityCopyWith(_RedeemOptionEntity value, $Res Function(_RedeemOptionEntity) _then) = __$RedeemOptionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int cost
});




}
/// @nodoc
class __$RedeemOptionEntityCopyWithImpl<$Res>
    implements _$RedeemOptionEntityCopyWith<$Res> {
  __$RedeemOptionEntityCopyWithImpl(this._self, this._then);

  final _RedeemOptionEntity _self;
  final $Res Function(_RedeemOptionEntity) _then;

/// Create a copy of RedeemOptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? cost = null,}) {
  return _then(_RedeemOptionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$RewardLedgerEntryEntity {

 String get id; String get description; DateTime get occurredAt;/// Signed: positive for points earned, negative for points spent.
 int get delta;
/// Create a copy of RewardLedgerEntryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardLedgerEntryEntityCopyWith<RewardLedgerEntryEntity> get copyWith => _$RewardLedgerEntryEntityCopyWithImpl<RewardLedgerEntryEntity>(this as RewardLedgerEntryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardLedgerEntryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.delta, delta) || other.delta == delta));
}


@override
int get hashCode => Object.hash(runtimeType,id,description,occurredAt,delta);

@override
String toString() {
  return 'RewardLedgerEntryEntity(id: $id, description: $description, occurredAt: $occurredAt, delta: $delta)';
}


}

/// @nodoc
abstract mixin class $RewardLedgerEntryEntityCopyWith<$Res>  {
  factory $RewardLedgerEntryEntityCopyWith(RewardLedgerEntryEntity value, $Res Function(RewardLedgerEntryEntity) _then) = _$RewardLedgerEntryEntityCopyWithImpl;
@useResult
$Res call({
 String id, String description, DateTime occurredAt, int delta
});




}
/// @nodoc
class _$RewardLedgerEntryEntityCopyWithImpl<$Res>
    implements $RewardLedgerEntryEntityCopyWith<$Res> {
  _$RewardLedgerEntryEntityCopyWithImpl(this._self, this._then);

  final RewardLedgerEntryEntity _self;
  final $Res Function(RewardLedgerEntryEntity) _then;

/// Create a copy of RewardLedgerEntryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? description = null,Object? occurredAt = null,Object? delta = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,delta: null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RewardLedgerEntryEntity].
extension RewardLedgerEntryEntityPatterns on RewardLedgerEntryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardLedgerEntryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardLedgerEntryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardLedgerEntryEntity value)  $default,){
final _that = this;
switch (_that) {
case _RewardLedgerEntryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardLedgerEntryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RewardLedgerEntryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String description,  DateTime occurredAt,  int delta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardLedgerEntryEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String description,  DateTime occurredAt,  int delta)  $default,) {final _that = this;
switch (_that) {
case _RewardLedgerEntryEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String description,  DateTime occurredAt,  int delta)?  $default,) {final _that = this;
switch (_that) {
case _RewardLedgerEntryEntity() when $default != null:
return $default(_that.id,_that.description,_that.occurredAt,_that.delta);case _:
  return null;

}
}

}

/// @nodoc


class _RewardLedgerEntryEntity extends RewardLedgerEntryEntity {
  const _RewardLedgerEntryEntity({required this.id, required this.description, required this.occurredAt, required this.delta}): super._();
  

@override final  String id;
@override final  String description;
@override final  DateTime occurredAt;
/// Signed: positive for points earned, negative for points spent.
@override final  int delta;

/// Create a copy of RewardLedgerEntryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardLedgerEntryEntityCopyWith<_RewardLedgerEntryEntity> get copyWith => __$RewardLedgerEntryEntityCopyWithImpl<_RewardLedgerEntryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardLedgerEntryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.delta, delta) || other.delta == delta));
}


@override
int get hashCode => Object.hash(runtimeType,id,description,occurredAt,delta);

@override
String toString() {
  return 'RewardLedgerEntryEntity(id: $id, description: $description, occurredAt: $occurredAt, delta: $delta)';
}


}

/// @nodoc
abstract mixin class _$RewardLedgerEntryEntityCopyWith<$Res> implements $RewardLedgerEntryEntityCopyWith<$Res> {
  factory _$RewardLedgerEntryEntityCopyWith(_RewardLedgerEntryEntity value, $Res Function(_RewardLedgerEntryEntity) _then) = __$RewardLedgerEntryEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String description, DateTime occurredAt, int delta
});




}
/// @nodoc
class __$RewardLedgerEntryEntityCopyWithImpl<$Res>
    implements _$RewardLedgerEntryEntityCopyWith<$Res> {
  __$RewardLedgerEntryEntityCopyWithImpl(this._self, this._then);

  final _RewardLedgerEntryEntity _self;
  final $Res Function(_RewardLedgerEntryEntity) _then;

/// Create a copy of RewardLedgerEntryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? description = null,Object? occurredAt = null,Object? delta = null,}) {
  return _then(_RewardLedgerEntryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,delta: null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ReferralEntity {

 String get code; int get invitesUsed; int get pointsEarned; List<ReferralInviteEntity> get invites;
/// Create a copy of ReferralEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferralEntityCopyWith<ReferralEntity> get copyWith => _$ReferralEntityCopyWithImpl<ReferralEntity>(this as ReferralEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferralEntity&&(identical(other.code, code) || other.code == code)&&(identical(other.invitesUsed, invitesUsed) || other.invitesUsed == invitesUsed)&&(identical(other.pointsEarned, pointsEarned) || other.pointsEarned == pointsEarned)&&const DeepCollectionEquality().equals(other.invites, invites));
}


@override
int get hashCode => Object.hash(runtimeType,code,invitesUsed,pointsEarned,const DeepCollectionEquality().hash(invites));

@override
String toString() {
  return 'ReferralEntity(code: $code, invitesUsed: $invitesUsed, pointsEarned: $pointsEarned, invites: $invites)';
}


}

/// @nodoc
abstract mixin class $ReferralEntityCopyWith<$Res>  {
  factory $ReferralEntityCopyWith(ReferralEntity value, $Res Function(ReferralEntity) _then) = _$ReferralEntityCopyWithImpl;
@useResult
$Res call({
 String code, int invitesUsed, int pointsEarned, List<ReferralInviteEntity> invites
});




}
/// @nodoc
class _$ReferralEntityCopyWithImpl<$Res>
    implements $ReferralEntityCopyWith<$Res> {
  _$ReferralEntityCopyWithImpl(this._self, this._then);

  final ReferralEntity _self;
  final $Res Function(ReferralEntity) _then;

/// Create a copy of ReferralEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? invitesUsed = null,Object? pointsEarned = null,Object? invites = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,invitesUsed: null == invitesUsed ? _self.invitesUsed : invitesUsed // ignore: cast_nullable_to_non_nullable
as int,pointsEarned: null == pointsEarned ? _self.pointsEarned : pointsEarned // ignore: cast_nullable_to_non_nullable
as int,invites: null == invites ? _self.invites : invites // ignore: cast_nullable_to_non_nullable
as List<ReferralInviteEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [ReferralEntity].
extension ReferralEntityPatterns on ReferralEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferralEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferralEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferralEntity value)  $default,){
final _that = this;
switch (_that) {
case _ReferralEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferralEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ReferralEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  int invitesUsed,  int pointsEarned,  List<ReferralInviteEntity> invites)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferralEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  int invitesUsed,  int pointsEarned,  List<ReferralInviteEntity> invites)  $default,) {final _that = this;
switch (_that) {
case _ReferralEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  int invitesUsed,  int pointsEarned,  List<ReferralInviteEntity> invites)?  $default,) {final _that = this;
switch (_that) {
case _ReferralEntity() when $default != null:
return $default(_that.code,_that.invitesUsed,_that.pointsEarned,_that.invites);case _:
  return null;

}
}

}

/// @nodoc


class _ReferralEntity implements ReferralEntity {
  const _ReferralEntity({required this.code, this.invitesUsed = 0, this.pointsEarned = 0, final  List<ReferralInviteEntity> invites = const <ReferralInviteEntity>[]}): _invites = invites;
  

@override final  String code;
@override@JsonKey() final  int invitesUsed;
@override@JsonKey() final  int pointsEarned;
 final  List<ReferralInviteEntity> _invites;
@override@JsonKey() List<ReferralInviteEntity> get invites {
  if (_invites is EqualUnmodifiableListView) return _invites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_invites);
}


/// Create a copy of ReferralEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferralEntityCopyWith<_ReferralEntity> get copyWith => __$ReferralEntityCopyWithImpl<_ReferralEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferralEntity&&(identical(other.code, code) || other.code == code)&&(identical(other.invitesUsed, invitesUsed) || other.invitesUsed == invitesUsed)&&(identical(other.pointsEarned, pointsEarned) || other.pointsEarned == pointsEarned)&&const DeepCollectionEquality().equals(other._invites, _invites));
}


@override
int get hashCode => Object.hash(runtimeType,code,invitesUsed,pointsEarned,const DeepCollectionEquality().hash(_invites));

@override
String toString() {
  return 'ReferralEntity(code: $code, invitesUsed: $invitesUsed, pointsEarned: $pointsEarned, invites: $invites)';
}


}

/// @nodoc
abstract mixin class _$ReferralEntityCopyWith<$Res> implements $ReferralEntityCopyWith<$Res> {
  factory _$ReferralEntityCopyWith(_ReferralEntity value, $Res Function(_ReferralEntity) _then) = __$ReferralEntityCopyWithImpl;
@override @useResult
$Res call({
 String code, int invitesUsed, int pointsEarned, List<ReferralInviteEntity> invites
});




}
/// @nodoc
class __$ReferralEntityCopyWithImpl<$Res>
    implements _$ReferralEntityCopyWith<$Res> {
  __$ReferralEntityCopyWithImpl(this._self, this._then);

  final _ReferralEntity _self;
  final $Res Function(_ReferralEntity) _then;

/// Create a copy of ReferralEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? invitesUsed = null,Object? pointsEarned = null,Object? invites = null,}) {
  return _then(_ReferralEntity(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,invitesUsed: null == invitesUsed ? _self.invitesUsed : invitesUsed // ignore: cast_nullable_to_non_nullable
as int,pointsEarned: null == pointsEarned ? _self.pointsEarned : pointsEarned // ignore: cast_nullable_to_non_nullable
as int,invites: null == invites ? _self._invites : invites // ignore: cast_nullable_to_non_nullable
as List<ReferralInviteEntity>,
  ));
}


}

/// @nodoc
mixin _$ReferralInviteEntity {

 String get id; String get name; ReferralInviteStatus get status; String get progressLabel;
/// Create a copy of ReferralInviteEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferralInviteEntityCopyWith<ReferralInviteEntity> get copyWith => _$ReferralInviteEntityCopyWithImpl<ReferralInviteEntity>(this as ReferralInviteEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferralInviteEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.progressLabel, progressLabel) || other.progressLabel == progressLabel));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,status,progressLabel);

@override
String toString() {
  return 'ReferralInviteEntity(id: $id, name: $name, status: $status, progressLabel: $progressLabel)';
}


}

/// @nodoc
abstract mixin class $ReferralInviteEntityCopyWith<$Res>  {
  factory $ReferralInviteEntityCopyWith(ReferralInviteEntity value, $Res Function(ReferralInviteEntity) _then) = _$ReferralInviteEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, ReferralInviteStatus status, String progressLabel
});




}
/// @nodoc
class _$ReferralInviteEntityCopyWithImpl<$Res>
    implements $ReferralInviteEntityCopyWith<$Res> {
  _$ReferralInviteEntityCopyWithImpl(this._self, this._then);

  final ReferralInviteEntity _self;
  final $Res Function(ReferralInviteEntity) _then;

/// Create a copy of ReferralInviteEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? progressLabel = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReferralInviteStatus,progressLabel: null == progressLabel ? _self.progressLabel : progressLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReferralInviteEntity].
extension ReferralInviteEntityPatterns on ReferralInviteEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferralInviteEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferralInviteEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferralInviteEntity value)  $default,){
final _that = this;
switch (_that) {
case _ReferralInviteEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferralInviteEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ReferralInviteEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  ReferralInviteStatus status,  String progressLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferralInviteEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  ReferralInviteStatus status,  String progressLabel)  $default,) {final _that = this;
switch (_that) {
case _ReferralInviteEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  ReferralInviteStatus status,  String progressLabel)?  $default,) {final _that = this;
switch (_that) {
case _ReferralInviteEntity() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.progressLabel);case _:
  return null;

}
}

}

/// @nodoc


class _ReferralInviteEntity implements ReferralInviteEntity {
  const _ReferralInviteEntity({required this.id, required this.name, required this.status, required this.progressLabel});
  

@override final  String id;
@override final  String name;
@override final  ReferralInviteStatus status;
@override final  String progressLabel;

/// Create a copy of ReferralInviteEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferralInviteEntityCopyWith<_ReferralInviteEntity> get copyWith => __$ReferralInviteEntityCopyWithImpl<_ReferralInviteEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferralInviteEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.progressLabel, progressLabel) || other.progressLabel == progressLabel));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,status,progressLabel);

@override
String toString() {
  return 'ReferralInviteEntity(id: $id, name: $name, status: $status, progressLabel: $progressLabel)';
}


}

/// @nodoc
abstract mixin class _$ReferralInviteEntityCopyWith<$Res> implements $ReferralInviteEntityCopyWith<$Res> {
  factory _$ReferralInviteEntityCopyWith(_ReferralInviteEntity value, $Res Function(_ReferralInviteEntity) _then) = __$ReferralInviteEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, ReferralInviteStatus status, String progressLabel
});




}
/// @nodoc
class __$ReferralInviteEntityCopyWithImpl<$Res>
    implements _$ReferralInviteEntityCopyWith<$Res> {
  __$ReferralInviteEntityCopyWithImpl(this._self, this._then);

  final _ReferralInviteEntity _self;
  final $Res Function(_ReferralInviteEntity) _then;

/// Create a copy of ReferralInviteEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? progressLabel = null,}) {
  return _then(_ReferralInviteEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReferralInviteStatus,progressLabel: null == progressLabel ? _self.progressLabel : progressLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TicketEntity {

 String get id; String get title; TicketStatus get status; DateTime get createdAt; int get replyCount; int? get connectionId; String? get eta;
/// Create a copy of TicketEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketEntityCopyWith<TicketEntity> get copyWith => _$TicketEntityCopyWithImpl<TicketEntity>(this as TicketEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.connectionId, connectionId) || other.connectionId == connectionId)&&(identical(other.eta, eta) || other.eta == eta));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,status,createdAt,replyCount,connectionId,eta);

@override
String toString() {
  return 'TicketEntity(id: $id, title: $title, status: $status, createdAt: $createdAt, replyCount: $replyCount, connectionId: $connectionId, eta: $eta)';
}


}

/// @nodoc
abstract mixin class $TicketEntityCopyWith<$Res>  {
  factory $TicketEntityCopyWith(TicketEntity value, $Res Function(TicketEntity) _then) = _$TicketEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, TicketStatus status, DateTime createdAt, int replyCount, int? connectionId, String? eta
});




}
/// @nodoc
class _$TicketEntityCopyWithImpl<$Res>
    implements $TicketEntityCopyWith<$Res> {
  _$TicketEntityCopyWithImpl(this._self, this._then);

  final TicketEntity _self;
  final $Res Function(TicketEntity) _then;

/// Create a copy of TicketEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? status = null,Object? createdAt = null,Object? replyCount = null,Object? connectionId = freezed,Object? eta = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,connectionId: freezed == connectionId ? _self.connectionId : connectionId // ignore: cast_nullable_to_non_nullable
as int?,eta: freezed == eta ? _self.eta : eta // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketEntity].
extension TicketEntityPatterns on TicketEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  TicketStatus status,  DateTime createdAt,  int replyCount,  int? connectionId,  String? eta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  TicketStatus status,  DateTime createdAt,  int replyCount,  int? connectionId,  String? eta)  $default,) {final _that = this;
switch (_that) {
case _TicketEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  TicketStatus status,  DateTime createdAt,  int replyCount,  int? connectionId,  String? eta)?  $default,) {final _that = this;
switch (_that) {
case _TicketEntity() when $default != null:
return $default(_that.id,_that.title,_that.status,_that.createdAt,_that.replyCount,_that.connectionId,_that.eta);case _:
  return null;

}
}

}

/// @nodoc


class _TicketEntity implements TicketEntity {
  const _TicketEntity({required this.id, required this.title, required this.status, required this.createdAt, this.replyCount = 0, this.connectionId, this.eta});
  

@override final  String id;
@override final  String title;
@override final  TicketStatus status;
@override final  DateTime createdAt;
@override@JsonKey() final  int replyCount;
@override final  int? connectionId;
@override final  String? eta;

/// Create a copy of TicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketEntityCopyWith<_TicketEntity> get copyWith => __$TicketEntityCopyWithImpl<_TicketEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.connectionId, connectionId) || other.connectionId == connectionId)&&(identical(other.eta, eta) || other.eta == eta));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,status,createdAt,replyCount,connectionId,eta);

@override
String toString() {
  return 'TicketEntity(id: $id, title: $title, status: $status, createdAt: $createdAt, replyCount: $replyCount, connectionId: $connectionId, eta: $eta)';
}


}

/// @nodoc
abstract mixin class _$TicketEntityCopyWith<$Res> implements $TicketEntityCopyWith<$Res> {
  factory _$TicketEntityCopyWith(_TicketEntity value, $Res Function(_TicketEntity) _then) = __$TicketEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, TicketStatus status, DateTime createdAt, int replyCount, int? connectionId, String? eta
});




}
/// @nodoc
class __$TicketEntityCopyWithImpl<$Res>
    implements _$TicketEntityCopyWith<$Res> {
  __$TicketEntityCopyWithImpl(this._self, this._then);

  final _TicketEntity _self;
  final $Res Function(_TicketEntity) _then;

/// Create a copy of TicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? status = null,Object? createdAt = null,Object? replyCount = null,Object? connectionId = freezed,Object? eta = freezed,}) {
  return _then(_TicketEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,connectionId: freezed == connectionId ? _self.connectionId : connectionId // ignore: cast_nullable_to_non_nullable
as int?,eta: freezed == eta ? _self.eta : eta // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$TicketMessageEntity {

 String get id; String get body; DateTime get sentAt;/// Whether the customer wrote it — drives which side of the thread it
/// sits on and how it is coloured.
 bool get fromCustomer; String? get authorLabel;
/// Create a copy of TicketMessageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketMessageEntityCopyWith<TicketMessageEntity> get copyWith => _$TicketMessageEntityCopyWithImpl<TicketMessageEntity>(this as TicketMessageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketMessageEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.body, body) || other.body == body)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.fromCustomer, fromCustomer) || other.fromCustomer == fromCustomer)&&(identical(other.authorLabel, authorLabel) || other.authorLabel == authorLabel));
}


@override
int get hashCode => Object.hash(runtimeType,id,body,sentAt,fromCustomer,authorLabel);

@override
String toString() {
  return 'TicketMessageEntity(id: $id, body: $body, sentAt: $sentAt, fromCustomer: $fromCustomer, authorLabel: $authorLabel)';
}


}

/// @nodoc
abstract mixin class $TicketMessageEntityCopyWith<$Res>  {
  factory $TicketMessageEntityCopyWith(TicketMessageEntity value, $Res Function(TicketMessageEntity) _then) = _$TicketMessageEntityCopyWithImpl;
@useResult
$Res call({
 String id, String body, DateTime sentAt, bool fromCustomer, String? authorLabel
});




}
/// @nodoc
class _$TicketMessageEntityCopyWithImpl<$Res>
    implements $TicketMessageEntityCopyWith<$Res> {
  _$TicketMessageEntityCopyWithImpl(this._self, this._then);

  final TicketMessageEntity _self;
  final $Res Function(TicketMessageEntity) _then;

/// Create a copy of TicketMessageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? body = null,Object? sentAt = null,Object? fromCustomer = null,Object? authorLabel = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,fromCustomer: null == fromCustomer ? _self.fromCustomer : fromCustomer // ignore: cast_nullable_to_non_nullable
as bool,authorLabel: freezed == authorLabel ? _self.authorLabel : authorLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketMessageEntity].
extension TicketMessageEntityPatterns on TicketMessageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketMessageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketMessageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketMessageEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketMessageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketMessageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketMessageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String body,  DateTime sentAt,  bool fromCustomer,  String? authorLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketMessageEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String body,  DateTime sentAt,  bool fromCustomer,  String? authorLabel)  $default,) {final _that = this;
switch (_that) {
case _TicketMessageEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String body,  DateTime sentAt,  bool fromCustomer,  String? authorLabel)?  $default,) {final _that = this;
switch (_that) {
case _TicketMessageEntity() when $default != null:
return $default(_that.id,_that.body,_that.sentAt,_that.fromCustomer,_that.authorLabel);case _:
  return null;

}
}

}

/// @nodoc


class _TicketMessageEntity implements TicketMessageEntity {
  const _TicketMessageEntity({required this.id, required this.body, required this.sentAt, required this.fromCustomer, this.authorLabel});
  

@override final  String id;
@override final  String body;
@override final  DateTime sentAt;
/// Whether the customer wrote it — drives which side of the thread it
/// sits on and how it is coloured.
@override final  bool fromCustomer;
@override final  String? authorLabel;

/// Create a copy of TicketMessageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketMessageEntityCopyWith<_TicketMessageEntity> get copyWith => __$TicketMessageEntityCopyWithImpl<_TicketMessageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketMessageEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.body, body) || other.body == body)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.fromCustomer, fromCustomer) || other.fromCustomer == fromCustomer)&&(identical(other.authorLabel, authorLabel) || other.authorLabel == authorLabel));
}


@override
int get hashCode => Object.hash(runtimeType,id,body,sentAt,fromCustomer,authorLabel);

@override
String toString() {
  return 'TicketMessageEntity(id: $id, body: $body, sentAt: $sentAt, fromCustomer: $fromCustomer, authorLabel: $authorLabel)';
}


}

/// @nodoc
abstract mixin class _$TicketMessageEntityCopyWith<$Res> implements $TicketMessageEntityCopyWith<$Res> {
  factory _$TicketMessageEntityCopyWith(_TicketMessageEntity value, $Res Function(_TicketMessageEntity) _then) = __$TicketMessageEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String body, DateTime sentAt, bool fromCustomer, String? authorLabel
});




}
/// @nodoc
class __$TicketMessageEntityCopyWithImpl<$Res>
    implements _$TicketMessageEntityCopyWith<$Res> {
  __$TicketMessageEntityCopyWithImpl(this._self, this._then);

  final _TicketMessageEntity _self;
  final $Res Function(_TicketMessageEntity) _then;

/// Create a copy of TicketMessageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? body = null,Object? sentAt = null,Object? fromCustomer = null,Object? authorLabel = freezed,}) {
  return _then(_TicketMessageEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,fromCustomer: null == fromCustomer ? _self.fromCustomer : fromCustomer // ignore: cast_nullable_to_non_nullable
as bool,authorLabel: freezed == authorLabel ? _self.authorLabel : authorLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SupportContactEntity {

 SupportChannel get channel; String get value;
/// Create a copy of SupportContactEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportContactEntityCopyWith<SupportContactEntity> get copyWith => _$SupportContactEntityCopyWithImpl<SupportContactEntity>(this as SupportContactEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportContactEntity&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,channel,value);

@override
String toString() {
  return 'SupportContactEntity(channel: $channel, value: $value)';
}


}

/// @nodoc
abstract mixin class $SupportContactEntityCopyWith<$Res>  {
  factory $SupportContactEntityCopyWith(SupportContactEntity value, $Res Function(SupportContactEntity) _then) = _$SupportContactEntityCopyWithImpl;
@useResult
$Res call({
 SupportChannel channel, String value
});




}
/// @nodoc
class _$SupportContactEntityCopyWithImpl<$Res>
    implements $SupportContactEntityCopyWith<$Res> {
  _$SupportContactEntityCopyWithImpl(this._self, this._then);

  final SupportContactEntity _self;
  final $Res Function(SupportContactEntity) _then;

/// Create a copy of SupportContactEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? channel = null,Object? value = null,}) {
  return _then(_self.copyWith(
channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as SupportChannel,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportContactEntity].
extension SupportContactEntityPatterns on SupportContactEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportContactEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportContactEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportContactEntity value)  $default,){
final _that = this;
switch (_that) {
case _SupportContactEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportContactEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SupportContactEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SupportChannel channel,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportContactEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SupportChannel channel,  String value)  $default,) {final _that = this;
switch (_that) {
case _SupportContactEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SupportChannel channel,  String value)?  $default,) {final _that = this;
switch (_that) {
case _SupportContactEntity() when $default != null:
return $default(_that.channel,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _SupportContactEntity implements SupportContactEntity {
  const _SupportContactEntity({required this.channel, required this.value});
  

@override final  SupportChannel channel;
@override final  String value;

/// Create a copy of SupportContactEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportContactEntityCopyWith<_SupportContactEntity> get copyWith => __$SupportContactEntityCopyWithImpl<_SupportContactEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportContactEntity&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,channel,value);

@override
String toString() {
  return 'SupportContactEntity(channel: $channel, value: $value)';
}


}

/// @nodoc
abstract mixin class _$SupportContactEntityCopyWith<$Res> implements $SupportContactEntityCopyWith<$Res> {
  factory _$SupportContactEntityCopyWith(_SupportContactEntity value, $Res Function(_SupportContactEntity) _then) = __$SupportContactEntityCopyWithImpl;
@override @useResult
$Res call({
 SupportChannel channel, String value
});




}
/// @nodoc
class __$SupportContactEntityCopyWithImpl<$Res>
    implements _$SupportContactEntityCopyWith<$Res> {
  __$SupportContactEntityCopyWithImpl(this._self, this._then);

  final _SupportContactEntity _self;
  final $Res Function(_SupportContactEntity) _then;

/// Create a copy of SupportContactEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? channel = null,Object? value = null,}) {
  return _then(_SupportContactEntity(
channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as SupportChannel,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LineCheckEntity {

 bool get faultFound; DateTime get checkedAt; String? get detail;
/// Create a copy of LineCheckEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LineCheckEntityCopyWith<LineCheckEntity> get copyWith => _$LineCheckEntityCopyWithImpl<LineCheckEntity>(this as LineCheckEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LineCheckEntity&&(identical(other.faultFound, faultFound) || other.faultFound == faultFound)&&(identical(other.checkedAt, checkedAt) || other.checkedAt == checkedAt)&&(identical(other.detail, detail) || other.detail == detail));
}


@override
int get hashCode => Object.hash(runtimeType,faultFound,checkedAt,detail);

@override
String toString() {
  return 'LineCheckEntity(faultFound: $faultFound, checkedAt: $checkedAt, detail: $detail)';
}


}

/// @nodoc
abstract mixin class $LineCheckEntityCopyWith<$Res>  {
  factory $LineCheckEntityCopyWith(LineCheckEntity value, $Res Function(LineCheckEntity) _then) = _$LineCheckEntityCopyWithImpl;
@useResult
$Res call({
 bool faultFound, DateTime checkedAt, String? detail
});




}
/// @nodoc
class _$LineCheckEntityCopyWithImpl<$Res>
    implements $LineCheckEntityCopyWith<$Res> {
  _$LineCheckEntityCopyWithImpl(this._self, this._then);

  final LineCheckEntity _self;
  final $Res Function(LineCheckEntity) _then;

/// Create a copy of LineCheckEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? faultFound = null,Object? checkedAt = null,Object? detail = freezed,}) {
  return _then(_self.copyWith(
faultFound: null == faultFound ? _self.faultFound : faultFound // ignore: cast_nullable_to_non_nullable
as bool,checkedAt: null == checkedAt ? _self.checkedAt : checkedAt // ignore: cast_nullable_to_non_nullable
as DateTime,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LineCheckEntity].
extension LineCheckEntityPatterns on LineCheckEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LineCheckEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LineCheckEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LineCheckEntity value)  $default,){
final _that = this;
switch (_that) {
case _LineCheckEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LineCheckEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LineCheckEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool faultFound,  DateTime checkedAt,  String? detail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LineCheckEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool faultFound,  DateTime checkedAt,  String? detail)  $default,) {final _that = this;
switch (_that) {
case _LineCheckEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool faultFound,  DateTime checkedAt,  String? detail)?  $default,) {final _that = this;
switch (_that) {
case _LineCheckEntity() when $default != null:
return $default(_that.faultFound,_that.checkedAt,_that.detail);case _:
  return null;

}
}

}

/// @nodoc


class _LineCheckEntity implements LineCheckEntity {
  const _LineCheckEntity({required this.faultFound, required this.checkedAt, this.detail});
  

@override final  bool faultFound;
@override final  DateTime checkedAt;
@override final  String? detail;

/// Create a copy of LineCheckEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LineCheckEntityCopyWith<_LineCheckEntity> get copyWith => __$LineCheckEntityCopyWithImpl<_LineCheckEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LineCheckEntity&&(identical(other.faultFound, faultFound) || other.faultFound == faultFound)&&(identical(other.checkedAt, checkedAt) || other.checkedAt == checkedAt)&&(identical(other.detail, detail) || other.detail == detail));
}


@override
int get hashCode => Object.hash(runtimeType,faultFound,checkedAt,detail);

@override
String toString() {
  return 'LineCheckEntity(faultFound: $faultFound, checkedAt: $checkedAt, detail: $detail)';
}


}

/// @nodoc
abstract mixin class _$LineCheckEntityCopyWith<$Res> implements $LineCheckEntityCopyWith<$Res> {
  factory _$LineCheckEntityCopyWith(_LineCheckEntity value, $Res Function(_LineCheckEntity) _then) = __$LineCheckEntityCopyWithImpl;
@override @useResult
$Res call({
 bool faultFound, DateTime checkedAt, String? detail
});




}
/// @nodoc
class __$LineCheckEntityCopyWithImpl<$Res>
    implements _$LineCheckEntityCopyWith<$Res> {
  __$LineCheckEntityCopyWithImpl(this._self, this._then);

  final _LineCheckEntity _self;
  final $Res Function(_LineCheckEntity) _then;

/// Create a copy of LineCheckEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? faultFound = null,Object? checkedAt = null,Object? detail = freezed,}) {
  return _then(_LineCheckEntity(
faultFound: null == faultFound ? _self.faultFound : faultFound // ignore: cast_nullable_to_non_nullable
as bool,checkedAt: null == checkedAt ? _self.checkedAt : checkedAt // ignore: cast_nullable_to_non_nullable
as DateTime,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ServiceAreaEntity {

 String get id; String get name;/// Outside coverage the operator must survey before quoting, which is a
/// materially different promise from "we can move you".
 bool get isCovered;
/// Create a copy of ServiceAreaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceAreaEntityCopyWith<ServiceAreaEntity> get copyWith => _$ServiceAreaEntityCopyWithImpl<ServiceAreaEntity>(this as ServiceAreaEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceAreaEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isCovered, isCovered) || other.isCovered == isCovered));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,isCovered);

@override
String toString() {
  return 'ServiceAreaEntity(id: $id, name: $name, isCovered: $isCovered)';
}


}

/// @nodoc
abstract mixin class $ServiceAreaEntityCopyWith<$Res>  {
  factory $ServiceAreaEntityCopyWith(ServiceAreaEntity value, $Res Function(ServiceAreaEntity) _then) = _$ServiceAreaEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool isCovered
});




}
/// @nodoc
class _$ServiceAreaEntityCopyWithImpl<$Res>
    implements $ServiceAreaEntityCopyWith<$Res> {
  _$ServiceAreaEntityCopyWithImpl(this._self, this._then);

  final ServiceAreaEntity _self;
  final $Res Function(ServiceAreaEntity) _then;

/// Create a copy of ServiceAreaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isCovered = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isCovered: null == isCovered ? _self.isCovered : isCovered // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceAreaEntity].
extension ServiceAreaEntityPatterns on ServiceAreaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceAreaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceAreaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceAreaEntity value)  $default,){
final _that = this;
switch (_that) {
case _ServiceAreaEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceAreaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceAreaEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool isCovered)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceAreaEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool isCovered)  $default,) {final _that = this;
switch (_that) {
case _ServiceAreaEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool isCovered)?  $default,) {final _that = this;
switch (_that) {
case _ServiceAreaEntity() when $default != null:
return $default(_that.id,_that.name,_that.isCovered);case _:
  return null;

}
}

}

/// @nodoc


class _ServiceAreaEntity implements ServiceAreaEntity {
  const _ServiceAreaEntity({required this.id, required this.name, required this.isCovered});
  

@override final  String id;
@override final  String name;
/// Outside coverage the operator must survey before quoting, which is a
/// materially different promise from "we can move you".
@override final  bool isCovered;

/// Create a copy of ServiceAreaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceAreaEntityCopyWith<_ServiceAreaEntity> get copyWith => __$ServiceAreaEntityCopyWithImpl<_ServiceAreaEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceAreaEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isCovered, isCovered) || other.isCovered == isCovered));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,isCovered);

@override
String toString() {
  return 'ServiceAreaEntity(id: $id, name: $name, isCovered: $isCovered)';
}


}

/// @nodoc
abstract mixin class _$ServiceAreaEntityCopyWith<$Res> implements $ServiceAreaEntityCopyWith<$Res> {
  factory _$ServiceAreaEntityCopyWith(_ServiceAreaEntity value, $Res Function(_ServiceAreaEntity) _then) = __$ServiceAreaEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool isCovered
});




}
/// @nodoc
class __$ServiceAreaEntityCopyWithImpl<$Res>
    implements _$ServiceAreaEntityCopyWith<$Res> {
  __$ServiceAreaEntityCopyWithImpl(this._self, this._then);

  final _ServiceAreaEntity _self;
  final $Res Function(_ServiceAreaEntity) _then;

/// Create a copy of ServiceAreaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isCovered = null,}) {
  return _then(_ServiceAreaEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isCovered: null == isCovered ? _self.isCovered : isCovered // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$UserEntity {

 String get name; String get email; String get address; String get city; double get latitude; double get longitude;
/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEntityCopyWith<UserEntity> get copyWith => _$UserEntityCopyWithImpl<UserEntity>(this as UserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,address,city,latitude,longitude);

@override
String toString() {
  return 'UserEntity(name: $name, email: $email, address: $address, city: $city, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $UserEntityCopyWith<$Res>  {
  factory $UserEntityCopyWith(UserEntity value, $Res Function(UserEntity) _then) = _$UserEntityCopyWithImpl;
@useResult
$Res call({
 String name, String email, String address, String city, double latitude, double longitude
});




}
/// @nodoc
class _$UserEntityCopyWithImpl<$Res>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._self, this._then);

  final UserEntity _self;
  final $Res Function(UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? address = null,Object? city = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [UserEntity].
extension UserEntityPatterns on UserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String email,  String address,  String city,  double latitude,  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.name,_that.email,_that.address,_that.city,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String email,  String address,  String city,  double latitude,  double longitude)  $default,) {final _that = this;
switch (_that) {
case _UserEntity():
return $default(_that.name,_that.email,_that.address,_that.city,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String email,  String address,  String city,  double latitude,  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.name,_that.email,_that.address,_that.city,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc


class _UserEntity implements UserEntity {
  const _UserEntity({required this.name, required this.email, required this.address, required this.city, required this.latitude, required this.longitude});
  

@override final  String name;
@override final  String email;
@override final  String address;
@override final  String city;
@override final  double latitude;
@override final  double longitude;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserEntityCopyWith<_UserEntity> get copyWith => __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,address,city,latitude,longitude);

@override
String toString() {
  return 'UserEntity(name: $name, email: $email, address: $address, city: $city, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$UserEntityCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(_UserEntity value, $Res Function(_UserEntity) _then) = __$UserEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String address, String city, double latitude, double longitude
});




}
/// @nodoc
class __$UserEntityCopyWithImpl<$Res>
    implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(this._self, this._then);

  final _UserEntity _self;
  final $Res Function(_UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? address = null,Object? city = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_UserEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
