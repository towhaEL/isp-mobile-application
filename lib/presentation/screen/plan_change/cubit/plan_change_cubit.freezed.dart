// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_change_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlanChangeState {

 BaseStatus get status; BaseStatus get confirmStatus; PackageEntity? get target; ProrationQuoteEntity? get quote;
/// Create a copy of PlanChangeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanChangeStateCopyWith<PlanChangeState> get copyWith => _$PlanChangeStateCopyWithImpl<PlanChangeState>(this as PlanChangeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanChangeState&&(identical(other.status, status) || other.status == status)&&(identical(other.confirmStatus, confirmStatus) || other.confirmStatus == confirmStatus)&&(identical(other.target, target) || other.target == target)&&(identical(other.quote, quote) || other.quote == quote));
}


@override
int get hashCode => Object.hash(runtimeType,status,confirmStatus,target,quote);

@override
String toString() {
  return 'PlanChangeState(status: $status, confirmStatus: $confirmStatus, target: $target, quote: $quote)';
}


}

/// @nodoc
abstract mixin class $PlanChangeStateCopyWith<$Res>  {
  factory $PlanChangeStateCopyWith(PlanChangeState value, $Res Function(PlanChangeState) _then) = _$PlanChangeStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, BaseStatus confirmStatus, PackageEntity? target, ProrationQuoteEntity? quote
});


$BaseStatusCopyWith<$Res> get status;$BaseStatusCopyWith<$Res> get confirmStatus;$PackageEntityCopyWith<$Res>? get target;$ProrationQuoteEntityCopyWith<$Res>? get quote;

}
/// @nodoc
class _$PlanChangeStateCopyWithImpl<$Res>
    implements $PlanChangeStateCopyWith<$Res> {
  _$PlanChangeStateCopyWithImpl(this._self, this._then);

  final PlanChangeState _self;
  final $Res Function(PlanChangeState) _then;

/// Create a copy of PlanChangeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? confirmStatus = null,Object? target = freezed,Object? quote = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,confirmStatus: null == confirmStatus ? _self.confirmStatus : confirmStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as PackageEntity?,quote: freezed == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as ProrationQuoteEntity?,
  ));
}
/// Create a copy of PlanChangeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of PlanChangeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get confirmStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.confirmStatus, (value) {
    return _then(_self.copyWith(confirmStatus: value));
  });
}/// Create a copy of PlanChangeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageEntityCopyWith<$Res>? get target {
    if (_self.target == null) {
    return null;
  }

  return $PackageEntityCopyWith<$Res>(_self.target!, (value) {
    return _then(_self.copyWith(target: value));
  });
}/// Create a copy of PlanChangeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProrationQuoteEntityCopyWith<$Res>? get quote {
    if (_self.quote == null) {
    return null;
  }

  return $ProrationQuoteEntityCopyWith<$Res>(_self.quote!, (value) {
    return _then(_self.copyWith(quote: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlanChangeState].
extension PlanChangeStatePatterns on PlanChangeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanChangeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanChangeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanChangeState value)  $default,){
final _that = this;
switch (_that) {
case _PlanChangeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanChangeState value)?  $default,){
final _that = this;
switch (_that) {
case _PlanChangeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus confirmStatus,  PackageEntity? target,  ProrationQuoteEntity? quote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlanChangeState() when $default != null:
return $default(_that.status,_that.confirmStatus,_that.target,_that.quote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus confirmStatus,  PackageEntity? target,  ProrationQuoteEntity? quote)  $default,) {final _that = this;
switch (_that) {
case _PlanChangeState():
return $default(_that.status,_that.confirmStatus,_that.target,_that.quote);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  BaseStatus confirmStatus,  PackageEntity? target,  ProrationQuoteEntity? quote)?  $default,) {final _that = this;
switch (_that) {
case _PlanChangeState() when $default != null:
return $default(_that.status,_that.confirmStatus,_that.target,_that.quote);case _:
  return null;

}
}

}

/// @nodoc


class _PlanChangeState extends PlanChangeState {
  const _PlanChangeState({this.status = const BaseStatus.initial(), this.confirmStatus = const BaseStatus.initial(), this.target, this.quote}): super._();
  

@override@JsonKey() final  BaseStatus status;
@override@JsonKey() final  BaseStatus confirmStatus;
@override final  PackageEntity? target;
@override final  ProrationQuoteEntity? quote;

/// Create a copy of PlanChangeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanChangeStateCopyWith<_PlanChangeState> get copyWith => __$PlanChangeStateCopyWithImpl<_PlanChangeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanChangeState&&(identical(other.status, status) || other.status == status)&&(identical(other.confirmStatus, confirmStatus) || other.confirmStatus == confirmStatus)&&(identical(other.target, target) || other.target == target)&&(identical(other.quote, quote) || other.quote == quote));
}


@override
int get hashCode => Object.hash(runtimeType,status,confirmStatus,target,quote);

@override
String toString() {
  return 'PlanChangeState(status: $status, confirmStatus: $confirmStatus, target: $target, quote: $quote)';
}


}

/// @nodoc
abstract mixin class _$PlanChangeStateCopyWith<$Res> implements $PlanChangeStateCopyWith<$Res> {
  factory _$PlanChangeStateCopyWith(_PlanChangeState value, $Res Function(_PlanChangeState) _then) = __$PlanChangeStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, BaseStatus confirmStatus, PackageEntity? target, ProrationQuoteEntity? quote
});


@override $BaseStatusCopyWith<$Res> get status;@override $BaseStatusCopyWith<$Res> get confirmStatus;@override $PackageEntityCopyWith<$Res>? get target;@override $ProrationQuoteEntityCopyWith<$Res>? get quote;

}
/// @nodoc
class __$PlanChangeStateCopyWithImpl<$Res>
    implements _$PlanChangeStateCopyWith<$Res> {
  __$PlanChangeStateCopyWithImpl(this._self, this._then);

  final _PlanChangeState _self;
  final $Res Function(_PlanChangeState) _then;

/// Create a copy of PlanChangeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? confirmStatus = null,Object? target = freezed,Object? quote = freezed,}) {
  return _then(_PlanChangeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,confirmStatus: null == confirmStatus ? _self.confirmStatus : confirmStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,target: freezed == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as PackageEntity?,quote: freezed == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as ProrationQuoteEntity?,
  ));
}

/// Create a copy of PlanChangeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of PlanChangeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get confirmStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.confirmStatus, (value) {
    return _then(_self.copyWith(confirmStatus: value));
  });
}/// Create a copy of PlanChangeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageEntityCopyWith<$Res>? get target {
    if (_self.target == null) {
    return null;
  }

  return $PackageEntityCopyWith<$Res>(_self.target!, (value) {
    return _then(_self.copyWith(target: value));
  });
}/// Create a copy of PlanChangeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProrationQuoteEntityCopyWith<$Res>? get quote {
    if (_self.quote == null) {
    return null;
  }

  return $ProrationQuoteEntityCopyWith<$Res>(_self.quote!, (value) {
    return _then(_self.copyWith(quote: value));
  });
}
}

// dart format on
