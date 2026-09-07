// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UsageState {

 BaseStatus get status; UsageRange get range; UsageSummaryEntity? get summary;
/// Create a copy of UsageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsageStateCopyWith<UsageState> get copyWith => _$UsageStateCopyWithImpl<UsageState>(this as UsageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsageState&&(identical(other.status, status) || other.status == status)&&(identical(other.range, range) || other.range == range)&&(identical(other.summary, summary) || other.summary == summary));
}


@override
int get hashCode => Object.hash(runtimeType,status,range,summary);

@override
String toString() {
  return 'UsageState(status: $status, range: $range, summary: $summary)';
}


}

/// @nodoc
abstract mixin class $UsageStateCopyWith<$Res>  {
  factory $UsageStateCopyWith(UsageState value, $Res Function(UsageState) _then) = _$UsageStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, UsageRange range, UsageSummaryEntity? summary
});


$BaseStatusCopyWith<$Res> get status;$UsageSummaryEntityCopyWith<$Res>? get summary;

}
/// @nodoc
class _$UsageStateCopyWithImpl<$Res>
    implements $UsageStateCopyWith<$Res> {
  _$UsageStateCopyWithImpl(this._self, this._then);

  final UsageState _self;
  final $Res Function(UsageState) _then;

/// Create a copy of UsageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? range = null,Object? summary = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as UsageRange,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as UsageSummaryEntity?,
  ));
}
/// Create a copy of UsageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of UsageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsageSummaryEntityCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $UsageSummaryEntityCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [UsageState].
extension UsageStatePatterns on UsageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsageState value)  $default,){
final _that = this;
switch (_that) {
case _UsageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsageState value)?  $default,){
final _that = this;
switch (_that) {
case _UsageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  UsageRange range,  UsageSummaryEntity? summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsageState() when $default != null:
return $default(_that.status,_that.range,_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  UsageRange range,  UsageSummaryEntity? summary)  $default,) {final _that = this;
switch (_that) {
case _UsageState():
return $default(_that.status,_that.range,_that.summary);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  UsageRange range,  UsageSummaryEntity? summary)?  $default,) {final _that = this;
switch (_that) {
case _UsageState() when $default != null:
return $default(_that.status,_that.range,_that.summary);case _:
  return null;

}
}

}

/// @nodoc


class _UsageState extends UsageState {
  const _UsageState({this.status = const BaseStatus.initial(), this.range = UsageRange.sevenDays, this.summary}): super._();
  

@override@JsonKey() final  BaseStatus status;
@override@JsonKey() final  UsageRange range;
@override final  UsageSummaryEntity? summary;

/// Create a copy of UsageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsageStateCopyWith<_UsageState> get copyWith => __$UsageStateCopyWithImpl<_UsageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsageState&&(identical(other.status, status) || other.status == status)&&(identical(other.range, range) || other.range == range)&&(identical(other.summary, summary) || other.summary == summary));
}


@override
int get hashCode => Object.hash(runtimeType,status,range,summary);

@override
String toString() {
  return 'UsageState(status: $status, range: $range, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$UsageStateCopyWith<$Res> implements $UsageStateCopyWith<$Res> {
  factory _$UsageStateCopyWith(_UsageState value, $Res Function(_UsageState) _then) = __$UsageStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, UsageRange range, UsageSummaryEntity? summary
});


@override $BaseStatusCopyWith<$Res> get status;@override $UsageSummaryEntityCopyWith<$Res>? get summary;

}
/// @nodoc
class __$UsageStateCopyWithImpl<$Res>
    implements _$UsageStateCopyWith<$Res> {
  __$UsageStateCopyWithImpl(this._self, this._then);

  final _UsageState _self;
  final $Res Function(_UsageState) _then;

/// Create a copy of UsageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? range = null,Object? summary = freezed,}) {
  return _then(_UsageState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as UsageRange,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as UsageSummaryEntity?,
  ));
}

/// Create a copy of UsageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of UsageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UsageSummaryEntityCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $UsageSummaryEntityCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

// dart format on
