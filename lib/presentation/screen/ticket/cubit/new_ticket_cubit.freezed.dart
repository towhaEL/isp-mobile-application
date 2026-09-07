// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_ticket_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewTicketState {

 BaseStatus get status; String get description; String get preferredVisitTime; TicketIssueType? get issue; TicketEntity? get createdTicket;
/// Create a copy of NewTicketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewTicketStateCopyWith<NewTicketState> get copyWith => _$NewTicketStateCopyWithImpl<NewTicketState>(this as NewTicketState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewTicketState&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.preferredVisitTime, preferredVisitTime) || other.preferredVisitTime == preferredVisitTime)&&(identical(other.issue, issue) || other.issue == issue)&&(identical(other.createdTicket, createdTicket) || other.createdTicket == createdTicket));
}


@override
int get hashCode => Object.hash(runtimeType,status,description,preferredVisitTime,issue,createdTicket);

@override
String toString() {
  return 'NewTicketState(status: $status, description: $description, preferredVisitTime: $preferredVisitTime, issue: $issue, createdTicket: $createdTicket)';
}


}

/// @nodoc
abstract mixin class $NewTicketStateCopyWith<$Res>  {
  factory $NewTicketStateCopyWith(NewTicketState value, $Res Function(NewTicketState) _then) = _$NewTicketStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, String description, String preferredVisitTime, TicketIssueType? issue, TicketEntity? createdTicket
});


$BaseStatusCopyWith<$Res> get status;$TicketEntityCopyWith<$Res>? get createdTicket;

}
/// @nodoc
class _$NewTicketStateCopyWithImpl<$Res>
    implements $NewTicketStateCopyWith<$Res> {
  _$NewTicketStateCopyWithImpl(this._self, this._then);

  final NewTicketState _self;
  final $Res Function(NewTicketState) _then;

/// Create a copy of NewTicketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? description = null,Object? preferredVisitTime = null,Object? issue = freezed,Object? createdTicket = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,preferredVisitTime: null == preferredVisitTime ? _self.preferredVisitTime : preferredVisitTime // ignore: cast_nullable_to_non_nullable
as String,issue: freezed == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as TicketIssueType?,createdTicket: freezed == createdTicket ? _self.createdTicket : createdTicket // ignore: cast_nullable_to_non_nullable
as TicketEntity?,
  ));
}
/// Create a copy of NewTicketState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of NewTicketState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketEntityCopyWith<$Res>? get createdTicket {
    if (_self.createdTicket == null) {
    return null;
  }

  return $TicketEntityCopyWith<$Res>(_self.createdTicket!, (value) {
    return _then(_self.copyWith(createdTicket: value));
  });
}
}


/// Adds pattern-matching-related methods to [NewTicketState].
extension NewTicketStatePatterns on NewTicketState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewTicketState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewTicketState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewTicketState value)  $default,){
final _that = this;
switch (_that) {
case _NewTicketState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewTicketState value)?  $default,){
final _that = this;
switch (_that) {
case _NewTicketState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  String description,  String preferredVisitTime,  TicketIssueType? issue,  TicketEntity? createdTicket)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewTicketState() when $default != null:
return $default(_that.status,_that.description,_that.preferredVisitTime,_that.issue,_that.createdTicket);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  String description,  String preferredVisitTime,  TicketIssueType? issue,  TicketEntity? createdTicket)  $default,) {final _that = this;
switch (_that) {
case _NewTicketState():
return $default(_that.status,_that.description,_that.preferredVisitTime,_that.issue,_that.createdTicket);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  String description,  String preferredVisitTime,  TicketIssueType? issue,  TicketEntity? createdTicket)?  $default,) {final _that = this;
switch (_that) {
case _NewTicketState() when $default != null:
return $default(_that.status,_that.description,_that.preferredVisitTime,_that.issue,_that.createdTicket);case _:
  return null;

}
}

}

/// @nodoc


class _NewTicketState extends NewTicketState {
  const _NewTicketState({this.status = const BaseStatus.initial(), this.description = '', this.preferredVisitTime = '', this.issue, this.createdTicket}): super._();
  

@override@JsonKey() final  BaseStatus status;
@override@JsonKey() final  String description;
@override@JsonKey() final  String preferredVisitTime;
@override final  TicketIssueType? issue;
@override final  TicketEntity? createdTicket;

/// Create a copy of NewTicketState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewTicketStateCopyWith<_NewTicketState> get copyWith => __$NewTicketStateCopyWithImpl<_NewTicketState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewTicketState&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.preferredVisitTime, preferredVisitTime) || other.preferredVisitTime == preferredVisitTime)&&(identical(other.issue, issue) || other.issue == issue)&&(identical(other.createdTicket, createdTicket) || other.createdTicket == createdTicket));
}


@override
int get hashCode => Object.hash(runtimeType,status,description,preferredVisitTime,issue,createdTicket);

@override
String toString() {
  return 'NewTicketState(status: $status, description: $description, preferredVisitTime: $preferredVisitTime, issue: $issue, createdTicket: $createdTicket)';
}


}

/// @nodoc
abstract mixin class _$NewTicketStateCopyWith<$Res> implements $NewTicketStateCopyWith<$Res> {
  factory _$NewTicketStateCopyWith(_NewTicketState value, $Res Function(_NewTicketState) _then) = __$NewTicketStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, String description, String preferredVisitTime, TicketIssueType? issue, TicketEntity? createdTicket
});


@override $BaseStatusCopyWith<$Res> get status;@override $TicketEntityCopyWith<$Res>? get createdTicket;

}
/// @nodoc
class __$NewTicketStateCopyWithImpl<$Res>
    implements _$NewTicketStateCopyWith<$Res> {
  __$NewTicketStateCopyWithImpl(this._self, this._then);

  final _NewTicketState _self;
  final $Res Function(_NewTicketState) _then;

/// Create a copy of NewTicketState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? description = null,Object? preferredVisitTime = null,Object? issue = freezed,Object? createdTicket = freezed,}) {
  return _then(_NewTicketState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,preferredVisitTime: null == preferredVisitTime ? _self.preferredVisitTime : preferredVisitTime // ignore: cast_nullable_to_non_nullable
as String,issue: freezed == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as TicketIssueType?,createdTicket: freezed == createdTicket ? _self.createdTicket : createdTicket // ignore: cast_nullable_to_non_nullable
as TicketEntity?,
  ));
}

/// Create a copy of NewTicketState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of NewTicketState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketEntityCopyWith<$Res>? get createdTicket {
    if (_self.createdTicket == null) {
    return null;
  }

  return $TicketEntityCopyWith<$Res>(_self.createdTicket!, (value) {
    return _then(_self.copyWith(createdTicket: value));
  });
}
}

// dart format on
