// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OffersState {

 BaseStatus get status; List<OfferEntity> get offers;
/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OffersStateCopyWith<OffersState> get copyWith => _$OffersStateCopyWithImpl<OffersState>(this as OffersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OffersState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.offers, offers));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(offers));

@override
String toString() {
  return 'OffersState(status: $status, offers: $offers)';
}


}

/// @nodoc
abstract mixin class $OffersStateCopyWith<$Res>  {
  factory $OffersStateCopyWith(OffersState value, $Res Function(OffersState) _then) = _$OffersStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, List<OfferEntity> offers
});


$BaseStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$OffersStateCopyWithImpl<$Res>
    implements $OffersStateCopyWith<$Res> {
  _$OffersStateCopyWithImpl(this._self, this._then);

  final OffersState _self;
  final $Res Function(OffersState) _then;

/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? offers = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,offers: null == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as List<OfferEntity>,
  ));
}
/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [OffersState].
extension OffersStatePatterns on OffersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OffersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OffersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OffersState value)  $default,){
final _that = this;
switch (_that) {
case _OffersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OffersState value)?  $default,){
final _that = this;
switch (_that) {
case _OffersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  List<OfferEntity> offers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OffersState() when $default != null:
return $default(_that.status,_that.offers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  List<OfferEntity> offers)  $default,) {final _that = this;
switch (_that) {
case _OffersState():
return $default(_that.status,_that.offers);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  List<OfferEntity> offers)?  $default,) {final _that = this;
switch (_that) {
case _OffersState() when $default != null:
return $default(_that.status,_that.offers);case _:
  return null;

}
}

}

/// @nodoc


class _OffersState extends OffersState {
  const _OffersState({this.status = const BaseStatus.initial(), final  List<OfferEntity> offers = const <OfferEntity>[]}): _offers = offers,super._();
  

@override@JsonKey() final  BaseStatus status;
 final  List<OfferEntity> _offers;
@override@JsonKey() List<OfferEntity> get offers {
  if (_offers is EqualUnmodifiableListView) return _offers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_offers);
}


/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OffersStateCopyWith<_OffersState> get copyWith => __$OffersStateCopyWithImpl<_OffersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OffersState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._offers, _offers));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_offers));

@override
String toString() {
  return 'OffersState(status: $status, offers: $offers)';
}


}

/// @nodoc
abstract mixin class _$OffersStateCopyWith<$Res> implements $OffersStateCopyWith<$Res> {
  factory _$OffersStateCopyWith(_OffersState value, $Res Function(_OffersState) _then) = __$OffersStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, List<OfferEntity> offers
});


@override $BaseStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$OffersStateCopyWithImpl<$Res>
    implements _$OffersStateCopyWith<$Res> {
  __$OffersStateCopyWithImpl(this._self, this._then);

  final _OffersState _self;
  final $Res Function(_OffersState) _then;

/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? offers = null,}) {
  return _then(_OffersState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,offers: null == offers ? _self._offers : offers // ignore: cast_nullable_to_non_nullable
as List<OfferEntity>,
  ));
}

/// Create a copy of OffersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
