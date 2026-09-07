// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReferralState {

 BaseStatus get status; bool get hasCopied; ReferralEntity? get referral;
/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferralStateCopyWith<ReferralState> get copyWith => _$ReferralStateCopyWithImpl<ReferralState>(this as ReferralState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferralState&&(identical(other.status, status) || other.status == status)&&(identical(other.hasCopied, hasCopied) || other.hasCopied == hasCopied)&&(identical(other.referral, referral) || other.referral == referral));
}


@override
int get hashCode => Object.hash(runtimeType,status,hasCopied,referral);

@override
String toString() {
  return 'ReferralState(status: $status, hasCopied: $hasCopied, referral: $referral)';
}


}

/// @nodoc
abstract mixin class $ReferralStateCopyWith<$Res>  {
  factory $ReferralStateCopyWith(ReferralState value, $Res Function(ReferralState) _then) = _$ReferralStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, bool hasCopied, ReferralEntity? referral
});


$BaseStatusCopyWith<$Res> get status;$ReferralEntityCopyWith<$Res>? get referral;

}
/// @nodoc
class _$ReferralStateCopyWithImpl<$Res>
    implements $ReferralStateCopyWith<$Res> {
  _$ReferralStateCopyWithImpl(this._self, this._then);

  final ReferralState _self;
  final $Res Function(ReferralState) _then;

/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? hasCopied = null,Object? referral = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,hasCopied: null == hasCopied ? _self.hasCopied : hasCopied // ignore: cast_nullable_to_non_nullable
as bool,referral: freezed == referral ? _self.referral : referral // ignore: cast_nullable_to_non_nullable
as ReferralEntity?,
  ));
}
/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferralEntityCopyWith<$Res>? get referral {
    if (_self.referral == null) {
    return null;
  }

  return $ReferralEntityCopyWith<$Res>(_self.referral!, (value) {
    return _then(_self.copyWith(referral: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReferralState].
extension ReferralStatePatterns on ReferralState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferralState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferralState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferralState value)  $default,){
final _that = this;
switch (_that) {
case _ReferralState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferralState value)?  $default,){
final _that = this;
switch (_that) {
case _ReferralState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  bool hasCopied,  ReferralEntity? referral)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferralState() when $default != null:
return $default(_that.status,_that.hasCopied,_that.referral);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  bool hasCopied,  ReferralEntity? referral)  $default,) {final _that = this;
switch (_that) {
case _ReferralState():
return $default(_that.status,_that.hasCopied,_that.referral);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  bool hasCopied,  ReferralEntity? referral)?  $default,) {final _that = this;
switch (_that) {
case _ReferralState() when $default != null:
return $default(_that.status,_that.hasCopied,_that.referral);case _:
  return null;

}
}

}

/// @nodoc


class _ReferralState extends ReferralState {
  const _ReferralState({this.status = const BaseStatus.initial(), this.hasCopied = false, this.referral}): super._();
  

@override@JsonKey() final  BaseStatus status;
@override@JsonKey() final  bool hasCopied;
@override final  ReferralEntity? referral;

/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferralStateCopyWith<_ReferralState> get copyWith => __$ReferralStateCopyWithImpl<_ReferralState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferralState&&(identical(other.status, status) || other.status == status)&&(identical(other.hasCopied, hasCopied) || other.hasCopied == hasCopied)&&(identical(other.referral, referral) || other.referral == referral));
}


@override
int get hashCode => Object.hash(runtimeType,status,hasCopied,referral);

@override
String toString() {
  return 'ReferralState(status: $status, hasCopied: $hasCopied, referral: $referral)';
}


}

/// @nodoc
abstract mixin class _$ReferralStateCopyWith<$Res> implements $ReferralStateCopyWith<$Res> {
  factory _$ReferralStateCopyWith(_ReferralState value, $Res Function(_ReferralState) _then) = __$ReferralStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, bool hasCopied, ReferralEntity? referral
});


@override $BaseStatusCopyWith<$Res> get status;@override $ReferralEntityCopyWith<$Res>? get referral;

}
/// @nodoc
class __$ReferralStateCopyWithImpl<$Res>
    implements _$ReferralStateCopyWith<$Res> {
  __$ReferralStateCopyWithImpl(this._self, this._then);

  final _ReferralState _self;
  final $Res Function(_ReferralState) _then;

/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? hasCopied = null,Object? referral = freezed,}) {
  return _then(_ReferralState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,hasCopied: null == hasCopied ? _self.hasCopied : hasCopied // ignore: cast_nullable_to_non_nullable
as bool,referral: freezed == referral ? _self.referral : referral // ignore: cast_nullable_to_non_nullable
as ReferralEntity?,
  ));
}

/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferralEntityCopyWith<$Res>? get referral {
    if (_self.referral == null) {
    return null;
  }

  return $ReferralEntityCopyWith<$Res>(_self.referral!, (value) {
    return _then(_self.copyWith(referral: value));
  });
}
}

// dart format on
