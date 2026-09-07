// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BillState {

 BaseStatus get status; List<PaymentEntity> get payments; AutopayConfigEntity? get autopay;
/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillStateCopyWith<BillState> get copyWith => _$BillStateCopyWithImpl<BillState>(this as BillState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.payments, payments)&&(identical(other.autopay, autopay) || other.autopay == autopay));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(payments),autopay);

@override
String toString() {
  return 'BillState(status: $status, payments: $payments, autopay: $autopay)';
}


}

/// @nodoc
abstract mixin class $BillStateCopyWith<$Res>  {
  factory $BillStateCopyWith(BillState value, $Res Function(BillState) _then) = _$BillStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, List<PaymentEntity> payments, AutopayConfigEntity? autopay
});


$BaseStatusCopyWith<$Res> get status;$AutopayConfigEntityCopyWith<$Res>? get autopay;

}
/// @nodoc
class _$BillStateCopyWithImpl<$Res>
    implements $BillStateCopyWith<$Res> {
  _$BillStateCopyWithImpl(this._self, this._then);

  final BillState _self;
  final $Res Function(BillState) _then;

/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? payments = null,Object? autopay = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,payments: null == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentEntity>,autopay: freezed == autopay ? _self.autopay : autopay // ignore: cast_nullable_to_non_nullable
as AutopayConfigEntity?,
  ));
}
/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AutopayConfigEntityCopyWith<$Res>? get autopay {
    if (_self.autopay == null) {
    return null;
  }

  return $AutopayConfigEntityCopyWith<$Res>(_self.autopay!, (value) {
    return _then(_self.copyWith(autopay: value));
  });
}
}


/// Adds pattern-matching-related methods to [BillState].
extension BillStatePatterns on BillState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillState value)  $default,){
final _that = this;
switch (_that) {
case _BillState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillState value)?  $default,){
final _that = this;
switch (_that) {
case _BillState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  List<PaymentEntity> payments,  AutopayConfigEntity? autopay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillState() when $default != null:
return $default(_that.status,_that.payments,_that.autopay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  List<PaymentEntity> payments,  AutopayConfigEntity? autopay)  $default,) {final _that = this;
switch (_that) {
case _BillState():
return $default(_that.status,_that.payments,_that.autopay);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  List<PaymentEntity> payments,  AutopayConfigEntity? autopay)?  $default,) {final _that = this;
switch (_that) {
case _BillState() when $default != null:
return $default(_that.status,_that.payments,_that.autopay);case _:
  return null;

}
}

}

/// @nodoc


class _BillState extends BillState {
  const _BillState({this.status = const BaseStatus.initial(), final  List<PaymentEntity> payments = const <PaymentEntity>[], this.autopay}): _payments = payments,super._();
  

@override@JsonKey() final  BaseStatus status;
 final  List<PaymentEntity> _payments;
@override@JsonKey() List<PaymentEntity> get payments {
  if (_payments is EqualUnmodifiableListView) return _payments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payments);
}

@override final  AutopayConfigEntity? autopay;

/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillStateCopyWith<_BillState> get copyWith => __$BillStateCopyWithImpl<_BillState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._payments, _payments)&&(identical(other.autopay, autopay) || other.autopay == autopay));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_payments),autopay);

@override
String toString() {
  return 'BillState(status: $status, payments: $payments, autopay: $autopay)';
}


}

/// @nodoc
abstract mixin class _$BillStateCopyWith<$Res> implements $BillStateCopyWith<$Res> {
  factory _$BillStateCopyWith(_BillState value, $Res Function(_BillState) _then) = __$BillStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, List<PaymentEntity> payments, AutopayConfigEntity? autopay
});


@override $BaseStatusCopyWith<$Res> get status;@override $AutopayConfigEntityCopyWith<$Res>? get autopay;

}
/// @nodoc
class __$BillStateCopyWithImpl<$Res>
    implements _$BillStateCopyWith<$Res> {
  __$BillStateCopyWithImpl(this._self, this._then);

  final _BillState _self;
  final $Res Function(_BillState) _then;

/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? payments = null,Object? autopay = freezed,}) {
  return _then(_BillState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,payments: null == payments ? _self._payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentEntity>,autopay: freezed == autopay ? _self.autopay : autopay // ignore: cast_nullable_to_non_nullable
as AutopayConfigEntity?,
  ));
}

/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of BillState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AutopayConfigEntityCopyWith<$Res>? get autopay {
    if (_self.autopay == null) {
    return null;
  }

  return $AutopayConfigEntityCopyWith<$Res>(_self.autopay!, (value) {
    return _then(_self.copyWith(autopay: value));
  });
}
}

// dart format on
