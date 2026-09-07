// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relocate_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RelocateState {

 BaseStatus get status; BaseStatus get submitStatus; List<ServiceAreaEntity> get areas; String get address; String get preferredDate; bool get isSubmitted; String? get selectedAreaId;
/// Create a copy of RelocateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelocateStateCopyWith<RelocateState> get copyWith => _$RelocateStateCopyWithImpl<RelocateState>(this as RelocateState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelocateState&&(identical(other.status, status) || other.status == status)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&const DeepCollectionEquality().equals(other.areas, areas)&&(identical(other.address, address) || other.address == address)&&(identical(other.preferredDate, preferredDate) || other.preferredDate == preferredDate)&&(identical(other.isSubmitted, isSubmitted) || other.isSubmitted == isSubmitted)&&(identical(other.selectedAreaId, selectedAreaId) || other.selectedAreaId == selectedAreaId));
}


@override
int get hashCode => Object.hash(runtimeType,status,submitStatus,const DeepCollectionEquality().hash(areas),address,preferredDate,isSubmitted,selectedAreaId);

@override
String toString() {
  return 'RelocateState(status: $status, submitStatus: $submitStatus, areas: $areas, address: $address, preferredDate: $preferredDate, isSubmitted: $isSubmitted, selectedAreaId: $selectedAreaId)';
}


}

/// @nodoc
abstract mixin class $RelocateStateCopyWith<$Res>  {
  factory $RelocateStateCopyWith(RelocateState value, $Res Function(RelocateState) _then) = _$RelocateStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, BaseStatus submitStatus, List<ServiceAreaEntity> areas, String address, String preferredDate, bool isSubmitted, String? selectedAreaId
});


$BaseStatusCopyWith<$Res> get status;$BaseStatusCopyWith<$Res> get submitStatus;

}
/// @nodoc
class _$RelocateStateCopyWithImpl<$Res>
    implements $RelocateStateCopyWith<$Res> {
  _$RelocateStateCopyWithImpl(this._self, this._then);

  final RelocateState _self;
  final $Res Function(RelocateState) _then;

/// Create a copy of RelocateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? submitStatus = null,Object? areas = null,Object? address = null,Object? preferredDate = null,Object? isSubmitted = null,Object? selectedAreaId = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,areas: null == areas ? _self.areas : areas // ignore: cast_nullable_to_non_nullable
as List<ServiceAreaEntity>,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,preferredDate: null == preferredDate ? _self.preferredDate : preferredDate // ignore: cast_nullable_to_non_nullable
as String,isSubmitted: null == isSubmitted ? _self.isSubmitted : isSubmitted // ignore: cast_nullable_to_non_nullable
as bool,selectedAreaId: freezed == selectedAreaId ? _self.selectedAreaId : selectedAreaId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RelocateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of RelocateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get submitStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.submitStatus, (value) {
    return _then(_self.copyWith(submitStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [RelocateState].
extension RelocateStatePatterns on RelocateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RelocateState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RelocateState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RelocateState value)  $default,){
final _that = this;
switch (_that) {
case _RelocateState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RelocateState value)?  $default,){
final _that = this;
switch (_that) {
case _RelocateState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus submitStatus,  List<ServiceAreaEntity> areas,  String address,  String preferredDate,  bool isSubmitted,  String? selectedAreaId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RelocateState() when $default != null:
return $default(_that.status,_that.submitStatus,_that.areas,_that.address,_that.preferredDate,_that.isSubmitted,_that.selectedAreaId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus submitStatus,  List<ServiceAreaEntity> areas,  String address,  String preferredDate,  bool isSubmitted,  String? selectedAreaId)  $default,) {final _that = this;
switch (_that) {
case _RelocateState():
return $default(_that.status,_that.submitStatus,_that.areas,_that.address,_that.preferredDate,_that.isSubmitted,_that.selectedAreaId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  BaseStatus submitStatus,  List<ServiceAreaEntity> areas,  String address,  String preferredDate,  bool isSubmitted,  String? selectedAreaId)?  $default,) {final _that = this;
switch (_that) {
case _RelocateState() when $default != null:
return $default(_that.status,_that.submitStatus,_that.areas,_that.address,_that.preferredDate,_that.isSubmitted,_that.selectedAreaId);case _:
  return null;

}
}

}

/// @nodoc


class _RelocateState extends RelocateState {
  const _RelocateState({this.status = const BaseStatus.initial(), this.submitStatus = const BaseStatus.initial(), final  List<ServiceAreaEntity> areas = const <ServiceAreaEntity>[], this.address = '', this.preferredDate = '', this.isSubmitted = false, this.selectedAreaId}): _areas = areas,super._();
  

@override@JsonKey() final  BaseStatus status;
@override@JsonKey() final  BaseStatus submitStatus;
 final  List<ServiceAreaEntity> _areas;
@override@JsonKey() List<ServiceAreaEntity> get areas {
  if (_areas is EqualUnmodifiableListView) return _areas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_areas);
}

@override@JsonKey() final  String address;
@override@JsonKey() final  String preferredDate;
@override@JsonKey() final  bool isSubmitted;
@override final  String? selectedAreaId;

/// Create a copy of RelocateState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelocateStateCopyWith<_RelocateState> get copyWith => __$RelocateStateCopyWithImpl<_RelocateState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelocateState&&(identical(other.status, status) || other.status == status)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&const DeepCollectionEquality().equals(other._areas, _areas)&&(identical(other.address, address) || other.address == address)&&(identical(other.preferredDate, preferredDate) || other.preferredDate == preferredDate)&&(identical(other.isSubmitted, isSubmitted) || other.isSubmitted == isSubmitted)&&(identical(other.selectedAreaId, selectedAreaId) || other.selectedAreaId == selectedAreaId));
}


@override
int get hashCode => Object.hash(runtimeType,status,submitStatus,const DeepCollectionEquality().hash(_areas),address,preferredDate,isSubmitted,selectedAreaId);

@override
String toString() {
  return 'RelocateState(status: $status, submitStatus: $submitStatus, areas: $areas, address: $address, preferredDate: $preferredDate, isSubmitted: $isSubmitted, selectedAreaId: $selectedAreaId)';
}


}

/// @nodoc
abstract mixin class _$RelocateStateCopyWith<$Res> implements $RelocateStateCopyWith<$Res> {
  factory _$RelocateStateCopyWith(_RelocateState value, $Res Function(_RelocateState) _then) = __$RelocateStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, BaseStatus submitStatus, List<ServiceAreaEntity> areas, String address, String preferredDate, bool isSubmitted, String? selectedAreaId
});


@override $BaseStatusCopyWith<$Res> get status;@override $BaseStatusCopyWith<$Res> get submitStatus;

}
/// @nodoc
class __$RelocateStateCopyWithImpl<$Res>
    implements _$RelocateStateCopyWith<$Res> {
  __$RelocateStateCopyWithImpl(this._self, this._then);

  final _RelocateState _self;
  final $Res Function(_RelocateState) _then;

/// Create a copy of RelocateState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? submitStatus = null,Object? areas = null,Object? address = null,Object? preferredDate = null,Object? isSubmitted = null,Object? selectedAreaId = freezed,}) {
  return _then(_RelocateState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,areas: null == areas ? _self._areas : areas // ignore: cast_nullable_to_non_nullable
as List<ServiceAreaEntity>,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,preferredDate: null == preferredDate ? _self.preferredDate : preferredDate // ignore: cast_nullable_to_non_nullable
as String,isSubmitted: null == isSubmitted ? _self.isSubmitted : isSubmitted // ignore: cast_nullable_to_non_nullable
as bool,selectedAreaId: freezed == selectedAreaId ? _self.selectedAreaId : selectedAreaId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RelocateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of RelocateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get submitStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.submitStatus, (value) {
    return _then(_self.copyWith(submitStatus: value));
  });
}
}

// dart format on
