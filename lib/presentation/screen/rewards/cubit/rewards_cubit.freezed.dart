// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RewardsState {

 BaseStatus get status; BaseStatus get redeemStatus; RewardsEntity? get rewards; String? get selectedOptionId;
/// Create a copy of RewardsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardsStateCopyWith<RewardsState> get copyWith => _$RewardsStateCopyWithImpl<RewardsState>(this as RewardsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardsState&&(identical(other.status, status) || other.status == status)&&(identical(other.redeemStatus, redeemStatus) || other.redeemStatus == redeemStatus)&&(identical(other.rewards, rewards) || other.rewards == rewards)&&(identical(other.selectedOptionId, selectedOptionId) || other.selectedOptionId == selectedOptionId));
}


@override
int get hashCode => Object.hash(runtimeType,status,redeemStatus,rewards,selectedOptionId);

@override
String toString() {
  return 'RewardsState(status: $status, redeemStatus: $redeemStatus, rewards: $rewards, selectedOptionId: $selectedOptionId)';
}


}

/// @nodoc
abstract mixin class $RewardsStateCopyWith<$Res>  {
  factory $RewardsStateCopyWith(RewardsState value, $Res Function(RewardsState) _then) = _$RewardsStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, BaseStatus redeemStatus, RewardsEntity? rewards, String? selectedOptionId
});


$BaseStatusCopyWith<$Res> get status;$BaseStatusCopyWith<$Res> get redeemStatus;$RewardsEntityCopyWith<$Res>? get rewards;

}
/// @nodoc
class _$RewardsStateCopyWithImpl<$Res>
    implements $RewardsStateCopyWith<$Res> {
  _$RewardsStateCopyWithImpl(this._self, this._then);

  final RewardsState _self;
  final $Res Function(RewardsState) _then;

/// Create a copy of RewardsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? redeemStatus = null,Object? rewards = freezed,Object? selectedOptionId = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,redeemStatus: null == redeemStatus ? _self.redeemStatus : redeemStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,rewards: freezed == rewards ? _self.rewards : rewards // ignore: cast_nullable_to_non_nullable
as RewardsEntity?,selectedOptionId: freezed == selectedOptionId ? _self.selectedOptionId : selectedOptionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RewardsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of RewardsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get redeemStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.redeemStatus, (value) {
    return _then(_self.copyWith(redeemStatus: value));
  });
}/// Create a copy of RewardsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardsEntityCopyWith<$Res>? get rewards {
    if (_self.rewards == null) {
    return null;
  }

  return $RewardsEntityCopyWith<$Res>(_self.rewards!, (value) {
    return _then(_self.copyWith(rewards: value));
  });
}
}


/// Adds pattern-matching-related methods to [RewardsState].
extension RewardsStatePatterns on RewardsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardsState value)  $default,){
final _that = this;
switch (_that) {
case _RewardsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardsState value)?  $default,){
final _that = this;
switch (_that) {
case _RewardsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus redeemStatus,  RewardsEntity? rewards,  String? selectedOptionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardsState() when $default != null:
return $default(_that.status,_that.redeemStatus,_that.rewards,_that.selectedOptionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus redeemStatus,  RewardsEntity? rewards,  String? selectedOptionId)  $default,) {final _that = this;
switch (_that) {
case _RewardsState():
return $default(_that.status,_that.redeemStatus,_that.rewards,_that.selectedOptionId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  BaseStatus redeemStatus,  RewardsEntity? rewards,  String? selectedOptionId)?  $default,) {final _that = this;
switch (_that) {
case _RewardsState() when $default != null:
return $default(_that.status,_that.redeemStatus,_that.rewards,_that.selectedOptionId);case _:
  return null;

}
}

}

/// @nodoc


class _RewardsState extends RewardsState {
  const _RewardsState({this.status = const BaseStatus.initial(), this.redeemStatus = const BaseStatus.initial(), this.rewards, this.selectedOptionId}): super._();
  

@override@JsonKey() final  BaseStatus status;
@override@JsonKey() final  BaseStatus redeemStatus;
@override final  RewardsEntity? rewards;
@override final  String? selectedOptionId;

/// Create a copy of RewardsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardsStateCopyWith<_RewardsState> get copyWith => __$RewardsStateCopyWithImpl<_RewardsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardsState&&(identical(other.status, status) || other.status == status)&&(identical(other.redeemStatus, redeemStatus) || other.redeemStatus == redeemStatus)&&(identical(other.rewards, rewards) || other.rewards == rewards)&&(identical(other.selectedOptionId, selectedOptionId) || other.selectedOptionId == selectedOptionId));
}


@override
int get hashCode => Object.hash(runtimeType,status,redeemStatus,rewards,selectedOptionId);

@override
String toString() {
  return 'RewardsState(status: $status, redeemStatus: $redeemStatus, rewards: $rewards, selectedOptionId: $selectedOptionId)';
}


}

/// @nodoc
abstract mixin class _$RewardsStateCopyWith<$Res> implements $RewardsStateCopyWith<$Res> {
  factory _$RewardsStateCopyWith(_RewardsState value, $Res Function(_RewardsState) _then) = __$RewardsStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, BaseStatus redeemStatus, RewardsEntity? rewards, String? selectedOptionId
});


@override $BaseStatusCopyWith<$Res> get status;@override $BaseStatusCopyWith<$Res> get redeemStatus;@override $RewardsEntityCopyWith<$Res>? get rewards;

}
/// @nodoc
class __$RewardsStateCopyWithImpl<$Res>
    implements _$RewardsStateCopyWith<$Res> {
  __$RewardsStateCopyWithImpl(this._self, this._then);

  final _RewardsState _self;
  final $Res Function(_RewardsState) _then;

/// Create a copy of RewardsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? redeemStatus = null,Object? rewards = freezed,Object? selectedOptionId = freezed,}) {
  return _then(_RewardsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,redeemStatus: null == redeemStatus ? _self.redeemStatus : redeemStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,rewards: freezed == rewards ? _self.rewards : rewards // ignore: cast_nullable_to_non_nullable
as RewardsEntity?,selectedOptionId: freezed == selectedOptionId ? _self.selectedOptionId : selectedOptionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RewardsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of RewardsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get redeemStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.redeemStatus, (value) {
    return _then(_self.copyWith(redeemStatus: value));
  });
}/// Create a copy of RewardsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardsEntityCopyWith<$Res>? get rewards {
    if (_self.rewards == null) {
    return null;
  }

  return $RewardsEntityCopyWith<$Res>(_self.rewards!, (value) {
    return _then(_self.copyWith(rewards: value));
  });
}
}

// dart format on
