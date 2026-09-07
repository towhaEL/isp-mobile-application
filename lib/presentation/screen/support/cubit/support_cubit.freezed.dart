// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SupportState {

 BaseStatus get status; List<SupportContactEntity> get contacts; List<TicketEntity> get tickets; LineCheckEntity? get lineCheck;
/// Create a copy of SupportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportStateCopyWith<SupportState> get copyWith => _$SupportStateCopyWithImpl<SupportState>(this as SupportState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.contacts, contacts)&&const DeepCollectionEquality().equals(other.tickets, tickets)&&(identical(other.lineCheck, lineCheck) || other.lineCheck == lineCheck));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(contacts),const DeepCollectionEquality().hash(tickets),lineCheck);

@override
String toString() {
  return 'SupportState(status: $status, contacts: $contacts, tickets: $tickets, lineCheck: $lineCheck)';
}


}

/// @nodoc
abstract mixin class $SupportStateCopyWith<$Res>  {
  factory $SupportStateCopyWith(SupportState value, $Res Function(SupportState) _then) = _$SupportStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, List<SupportContactEntity> contacts, List<TicketEntity> tickets, LineCheckEntity? lineCheck
});


$BaseStatusCopyWith<$Res> get status;$LineCheckEntityCopyWith<$Res>? get lineCheck;

}
/// @nodoc
class _$SupportStateCopyWithImpl<$Res>
    implements $SupportStateCopyWith<$Res> {
  _$SupportStateCopyWithImpl(this._self, this._then);

  final SupportState _self;
  final $Res Function(SupportState) _then;

/// Create a copy of SupportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? contacts = null,Object? tickets = null,Object? lineCheck = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,contacts: null == contacts ? _self.contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<SupportContactEntity>,tickets: null == tickets ? _self.tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketEntity>,lineCheck: freezed == lineCheck ? _self.lineCheck : lineCheck // ignore: cast_nullable_to_non_nullable
as LineCheckEntity?,
  ));
}
/// Create a copy of SupportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of SupportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LineCheckEntityCopyWith<$Res>? get lineCheck {
    if (_self.lineCheck == null) {
    return null;
  }

  return $LineCheckEntityCopyWith<$Res>(_self.lineCheck!, (value) {
    return _then(_self.copyWith(lineCheck: value));
  });
}
}


/// Adds pattern-matching-related methods to [SupportState].
extension SupportStatePatterns on SupportState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportState value)  $default,){
final _that = this;
switch (_that) {
case _SupportState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportState value)?  $default,){
final _that = this;
switch (_that) {
case _SupportState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  List<SupportContactEntity> contacts,  List<TicketEntity> tickets,  LineCheckEntity? lineCheck)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportState() when $default != null:
return $default(_that.status,_that.contacts,_that.tickets,_that.lineCheck);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  List<SupportContactEntity> contacts,  List<TicketEntity> tickets,  LineCheckEntity? lineCheck)  $default,) {final _that = this;
switch (_that) {
case _SupportState():
return $default(_that.status,_that.contacts,_that.tickets,_that.lineCheck);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  List<SupportContactEntity> contacts,  List<TicketEntity> tickets,  LineCheckEntity? lineCheck)?  $default,) {final _that = this;
switch (_that) {
case _SupportState() when $default != null:
return $default(_that.status,_that.contacts,_that.tickets,_that.lineCheck);case _:
  return null;

}
}

}

/// @nodoc


class _SupportState extends SupportState {
  const _SupportState({this.status = const BaseStatus.initial(), final  List<SupportContactEntity> contacts = const <SupportContactEntity>[], final  List<TicketEntity> tickets = const <TicketEntity>[], this.lineCheck}): _contacts = contacts,_tickets = tickets,super._();
  

@override@JsonKey() final  BaseStatus status;
 final  List<SupportContactEntity> _contacts;
@override@JsonKey() List<SupportContactEntity> get contacts {
  if (_contacts is EqualUnmodifiableListView) return _contacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contacts);
}

 final  List<TicketEntity> _tickets;
@override@JsonKey() List<TicketEntity> get tickets {
  if (_tickets is EqualUnmodifiableListView) return _tickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tickets);
}

@override final  LineCheckEntity? lineCheck;

/// Create a copy of SupportState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportStateCopyWith<_SupportState> get copyWith => __$SupportStateCopyWithImpl<_SupportState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._contacts, _contacts)&&const DeepCollectionEquality().equals(other._tickets, _tickets)&&(identical(other.lineCheck, lineCheck) || other.lineCheck == lineCheck));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_contacts),const DeepCollectionEquality().hash(_tickets),lineCheck);

@override
String toString() {
  return 'SupportState(status: $status, contacts: $contacts, tickets: $tickets, lineCheck: $lineCheck)';
}


}

/// @nodoc
abstract mixin class _$SupportStateCopyWith<$Res> implements $SupportStateCopyWith<$Res> {
  factory _$SupportStateCopyWith(_SupportState value, $Res Function(_SupportState) _then) = __$SupportStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, List<SupportContactEntity> contacts, List<TicketEntity> tickets, LineCheckEntity? lineCheck
});


@override $BaseStatusCopyWith<$Res> get status;@override $LineCheckEntityCopyWith<$Res>? get lineCheck;

}
/// @nodoc
class __$SupportStateCopyWithImpl<$Res>
    implements _$SupportStateCopyWith<$Res> {
  __$SupportStateCopyWithImpl(this._self, this._then);

  final _SupportState _self;
  final $Res Function(_SupportState) _then;

/// Create a copy of SupportState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? contacts = null,Object? tickets = null,Object? lineCheck = freezed,}) {
  return _then(_SupportState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,contacts: null == contacts ? _self._contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<SupportContactEntity>,tickets: null == tickets ? _self._tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketEntity>,lineCheck: freezed == lineCheck ? _self.lineCheck : lineCheck // ignore: cast_nullable_to_non_nullable
as LineCheckEntity?,
  ));
}

/// Create a copy of SupportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of SupportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LineCheckEntityCopyWith<$Res>? get lineCheck {
    if (_self.lineCheck == null) {
    return null;
  }

  return $LineCheckEntityCopyWith<$Res>(_self.lineCheck!, (value) {
    return _then(_self.copyWith(lineCheck: value));
  });
}
}

// dart format on
