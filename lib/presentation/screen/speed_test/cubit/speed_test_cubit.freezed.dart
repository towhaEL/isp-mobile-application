// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speed_test_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpeedTestState {

 BaseStatus get status;/// 0–1, driven by the ticker while a test is in flight.
 double get progress; SpeedTestResultEntity? get result;
/// Create a copy of SpeedTestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpeedTestStateCopyWith<SpeedTestState> get copyWith => _$SpeedTestStateCopyWithImpl<SpeedTestState>(this as SpeedTestState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeedTestState&&(identical(other.status, status) || other.status == status)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,status,progress,result);

@override
String toString() {
  return 'SpeedTestState(status: $status, progress: $progress, result: $result)';
}


}

/// @nodoc
abstract mixin class $SpeedTestStateCopyWith<$Res>  {
  factory $SpeedTestStateCopyWith(SpeedTestState value, $Res Function(SpeedTestState) _then) = _$SpeedTestStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, double progress, SpeedTestResultEntity? result
});


$BaseStatusCopyWith<$Res> get status;$SpeedTestResultEntityCopyWith<$Res>? get result;

}
/// @nodoc
class _$SpeedTestStateCopyWithImpl<$Res>
    implements $SpeedTestStateCopyWith<$Res> {
  _$SpeedTestStateCopyWithImpl(this._self, this._then);

  final SpeedTestState _self;
  final $Res Function(SpeedTestState) _then;

/// Create a copy of SpeedTestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? progress = null,Object? result = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as SpeedTestResultEntity?,
  ));
}
/// Create a copy of SpeedTestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of SpeedTestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeedTestResultEntityCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $SpeedTestResultEntityCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [SpeedTestState].
extension SpeedTestStatePatterns on SpeedTestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpeedTestState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpeedTestState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpeedTestState value)  $default,){
final _that = this;
switch (_that) {
case _SpeedTestState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpeedTestState value)?  $default,){
final _that = this;
switch (_that) {
case _SpeedTestState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  double progress,  SpeedTestResultEntity? result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpeedTestState() when $default != null:
return $default(_that.status,_that.progress,_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  double progress,  SpeedTestResultEntity? result)  $default,) {final _that = this;
switch (_that) {
case _SpeedTestState():
return $default(_that.status,_that.progress,_that.result);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  double progress,  SpeedTestResultEntity? result)?  $default,) {final _that = this;
switch (_that) {
case _SpeedTestState() when $default != null:
return $default(_that.status,_that.progress,_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _SpeedTestState extends SpeedTestState {
  const _SpeedTestState({this.status = const BaseStatus.initial(), this.progress = 0.0, this.result}): super._();
  

@override@JsonKey() final  BaseStatus status;
/// 0–1, driven by the ticker while a test is in flight.
@override@JsonKey() final  double progress;
@override final  SpeedTestResultEntity? result;

/// Create a copy of SpeedTestState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpeedTestStateCopyWith<_SpeedTestState> get copyWith => __$SpeedTestStateCopyWithImpl<_SpeedTestState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpeedTestState&&(identical(other.status, status) || other.status == status)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,status,progress,result);

@override
String toString() {
  return 'SpeedTestState(status: $status, progress: $progress, result: $result)';
}


}

/// @nodoc
abstract mixin class _$SpeedTestStateCopyWith<$Res> implements $SpeedTestStateCopyWith<$Res> {
  factory _$SpeedTestStateCopyWith(_SpeedTestState value, $Res Function(_SpeedTestState) _then) = __$SpeedTestStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, double progress, SpeedTestResultEntity? result
});


@override $BaseStatusCopyWith<$Res> get status;@override $SpeedTestResultEntityCopyWith<$Res>? get result;

}
/// @nodoc
class __$SpeedTestStateCopyWithImpl<$Res>
    implements _$SpeedTestStateCopyWith<$Res> {
  __$SpeedTestStateCopyWithImpl(this._self, this._then);

  final _SpeedTestState _self;
  final $Res Function(_SpeedTestState) _then;

/// Create a copy of SpeedTestState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? progress = null,Object? result = freezed,}) {
  return _then(_SpeedTestState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as SpeedTestResultEntity?,
  ));
}

/// Create a copy of SpeedTestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of SpeedTestState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeedTestResultEntityCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $SpeedTestResultEntityCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
