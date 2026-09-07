// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PayState {

 BaseStatus get status; BaseStatus get payStatus; List<PaymentMethodEntity> get methods; String? get selectedMethodId; PaymentReceiptEntity? get receipt;
/// Create a copy of PayState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayStateCopyWith<PayState> get copyWith => _$PayStateCopyWithImpl<PayState>(this as PayState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayState&&(identical(other.status, status) || other.status == status)&&(identical(other.payStatus, payStatus) || other.payStatus == payStatus)&&const DeepCollectionEquality().equals(other.methods, methods)&&(identical(other.selectedMethodId, selectedMethodId) || other.selectedMethodId == selectedMethodId)&&(identical(other.receipt, receipt) || other.receipt == receipt));
}


@override
int get hashCode => Object.hash(runtimeType,status,payStatus,const DeepCollectionEquality().hash(methods),selectedMethodId,receipt);

@override
String toString() {
  return 'PayState(status: $status, payStatus: $payStatus, methods: $methods, selectedMethodId: $selectedMethodId, receipt: $receipt)';
}


}

/// @nodoc
abstract mixin class $PayStateCopyWith<$Res>  {
  factory $PayStateCopyWith(PayState value, $Res Function(PayState) _then) = _$PayStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, BaseStatus payStatus, List<PaymentMethodEntity> methods, String? selectedMethodId, PaymentReceiptEntity? receipt
});


$BaseStatusCopyWith<$Res> get status;$BaseStatusCopyWith<$Res> get payStatus;$PaymentReceiptEntityCopyWith<$Res>? get receipt;

}
/// @nodoc
class _$PayStateCopyWithImpl<$Res>
    implements $PayStateCopyWith<$Res> {
  _$PayStateCopyWithImpl(this._self, this._then);

  final PayState _self;
  final $Res Function(PayState) _then;

/// Create a copy of PayState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? payStatus = null,Object? methods = null,Object? selectedMethodId = freezed,Object? receipt = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,payStatus: null == payStatus ? _self.payStatus : payStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,methods: null == methods ? _self.methods : methods // ignore: cast_nullable_to_non_nullable
as List<PaymentMethodEntity>,selectedMethodId: freezed == selectedMethodId ? _self.selectedMethodId : selectedMethodId // ignore: cast_nullable_to_non_nullable
as String?,receipt: freezed == receipt ? _self.receipt : receipt // ignore: cast_nullable_to_non_nullable
as PaymentReceiptEntity?,
  ));
}
/// Create a copy of PayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of PayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get payStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.payStatus, (value) {
    return _then(_self.copyWith(payStatus: value));
  });
}/// Create a copy of PayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentReceiptEntityCopyWith<$Res>? get receipt {
    if (_self.receipt == null) {
    return null;
  }

  return $PaymentReceiptEntityCopyWith<$Res>(_self.receipt!, (value) {
    return _then(_self.copyWith(receipt: value));
  });
}
}


/// Adds pattern-matching-related methods to [PayState].
extension PayStatePatterns on PayState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayState value)  $default,){
final _that = this;
switch (_that) {
case _PayState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayState value)?  $default,){
final _that = this;
switch (_that) {
case _PayState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus payStatus,  List<PaymentMethodEntity> methods,  String? selectedMethodId,  PaymentReceiptEntity? receipt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayState() when $default != null:
return $default(_that.status,_that.payStatus,_that.methods,_that.selectedMethodId,_that.receipt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus payStatus,  List<PaymentMethodEntity> methods,  String? selectedMethodId,  PaymentReceiptEntity? receipt)  $default,) {final _that = this;
switch (_that) {
case _PayState():
return $default(_that.status,_that.payStatus,_that.methods,_that.selectedMethodId,_that.receipt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  BaseStatus payStatus,  List<PaymentMethodEntity> methods,  String? selectedMethodId,  PaymentReceiptEntity? receipt)?  $default,) {final _that = this;
switch (_that) {
case _PayState() when $default != null:
return $default(_that.status,_that.payStatus,_that.methods,_that.selectedMethodId,_that.receipt);case _:
  return null;

}
}

}

/// @nodoc


class _PayState extends PayState {
  const _PayState({this.status = const BaseStatus.initial(), this.payStatus = const BaseStatus.initial(), final  List<PaymentMethodEntity> methods = const <PaymentMethodEntity>[], this.selectedMethodId, this.receipt}): _methods = methods,super._();
  

@override@JsonKey() final  BaseStatus status;
@override@JsonKey() final  BaseStatus payStatus;
 final  List<PaymentMethodEntity> _methods;
@override@JsonKey() List<PaymentMethodEntity> get methods {
  if (_methods is EqualUnmodifiableListView) return _methods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_methods);
}

@override final  String? selectedMethodId;
@override final  PaymentReceiptEntity? receipt;

/// Create a copy of PayState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayStateCopyWith<_PayState> get copyWith => __$PayStateCopyWithImpl<_PayState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayState&&(identical(other.status, status) || other.status == status)&&(identical(other.payStatus, payStatus) || other.payStatus == payStatus)&&const DeepCollectionEquality().equals(other._methods, _methods)&&(identical(other.selectedMethodId, selectedMethodId) || other.selectedMethodId == selectedMethodId)&&(identical(other.receipt, receipt) || other.receipt == receipt));
}


@override
int get hashCode => Object.hash(runtimeType,status,payStatus,const DeepCollectionEquality().hash(_methods),selectedMethodId,receipt);

@override
String toString() {
  return 'PayState(status: $status, payStatus: $payStatus, methods: $methods, selectedMethodId: $selectedMethodId, receipt: $receipt)';
}


}

/// @nodoc
abstract mixin class _$PayStateCopyWith<$Res> implements $PayStateCopyWith<$Res> {
  factory _$PayStateCopyWith(_PayState value, $Res Function(_PayState) _then) = __$PayStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, BaseStatus payStatus, List<PaymentMethodEntity> methods, String? selectedMethodId, PaymentReceiptEntity? receipt
});


@override $BaseStatusCopyWith<$Res> get status;@override $BaseStatusCopyWith<$Res> get payStatus;@override $PaymentReceiptEntityCopyWith<$Res>? get receipt;

}
/// @nodoc
class __$PayStateCopyWithImpl<$Res>
    implements _$PayStateCopyWith<$Res> {
  __$PayStateCopyWithImpl(this._self, this._then);

  final _PayState _self;
  final $Res Function(_PayState) _then;

/// Create a copy of PayState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? payStatus = null,Object? methods = null,Object? selectedMethodId = freezed,Object? receipt = freezed,}) {
  return _then(_PayState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,payStatus: null == payStatus ? _self.payStatus : payStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,methods: null == methods ? _self._methods : methods // ignore: cast_nullable_to_non_nullable
as List<PaymentMethodEntity>,selectedMethodId: freezed == selectedMethodId ? _self.selectedMethodId : selectedMethodId // ignore: cast_nullable_to_non_nullable
as String?,receipt: freezed == receipt ? _self.receipt : receipt // ignore: cast_nullable_to_non_nullable
as PaymentReceiptEntity?,
  ));
}

/// Create a copy of PayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of PayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get payStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.payStatus, (value) {
    return _then(_self.copyWith(payStatus: value));
  });
}/// Create a copy of PayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentReceiptEntityCopyWith<$Res>? get receipt {
    if (_self.receipt == null) {
    return null;
  }

  return $PaymentReceiptEntityCopyWith<$Res>(_self.receipt!, (value) {
    return _then(_self.copyWith(receipt: value));
  });
}
}

// dart format on
