// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_thread_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TicketThreadState {

 BaseStatus get status; BaseStatus get sendStatus; List<TicketMessageEntity> get messages; String get draft;
/// Create a copy of TicketThreadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketThreadStateCopyWith<TicketThreadState> get copyWith => _$TicketThreadStateCopyWithImpl<TicketThreadState>(this as TicketThreadState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketThreadState&&(identical(other.status, status) || other.status == status)&&(identical(other.sendStatus, sendStatus) || other.sendStatus == sendStatus)&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.draft, draft) || other.draft == draft));
}


@override
int get hashCode => Object.hash(runtimeType,status,sendStatus,const DeepCollectionEquality().hash(messages),draft);

@override
String toString() {
  return 'TicketThreadState(status: $status, sendStatus: $sendStatus, messages: $messages, draft: $draft)';
}


}

/// @nodoc
abstract mixin class $TicketThreadStateCopyWith<$Res>  {
  factory $TicketThreadStateCopyWith(TicketThreadState value, $Res Function(TicketThreadState) _then) = _$TicketThreadStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, BaseStatus sendStatus, List<TicketMessageEntity> messages, String draft
});


$BaseStatusCopyWith<$Res> get status;$BaseStatusCopyWith<$Res> get sendStatus;

}
/// @nodoc
class _$TicketThreadStateCopyWithImpl<$Res>
    implements $TicketThreadStateCopyWith<$Res> {
  _$TicketThreadStateCopyWithImpl(this._self, this._then);

  final TicketThreadState _self;
  final $Res Function(TicketThreadState) _then;

/// Create a copy of TicketThreadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? sendStatus = null,Object? messages = null,Object? draft = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,sendStatus: null == sendStatus ? _self.sendStatus : sendStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<TicketMessageEntity>,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of TicketThreadState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of TicketThreadState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get sendStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.sendStatus, (value) {
    return _then(_self.copyWith(sendStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [TicketThreadState].
extension TicketThreadStatePatterns on TicketThreadState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketThreadState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketThreadState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketThreadState value)  $default,){
final _that = this;
switch (_that) {
case _TicketThreadState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketThreadState value)?  $default,){
final _that = this;
switch (_that) {
case _TicketThreadState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus sendStatus,  List<TicketMessageEntity> messages,  String draft)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketThreadState() when $default != null:
return $default(_that.status,_that.sendStatus,_that.messages,_that.draft);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus sendStatus,  List<TicketMessageEntity> messages,  String draft)  $default,) {final _that = this;
switch (_that) {
case _TicketThreadState():
return $default(_that.status,_that.sendStatus,_that.messages,_that.draft);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  BaseStatus sendStatus,  List<TicketMessageEntity> messages,  String draft)?  $default,) {final _that = this;
switch (_that) {
case _TicketThreadState() when $default != null:
return $default(_that.status,_that.sendStatus,_that.messages,_that.draft);case _:
  return null;

}
}

}

/// @nodoc


class _TicketThreadState extends TicketThreadState {
  const _TicketThreadState({this.status = const BaseStatus.initial(), this.sendStatus = const BaseStatus.initial(), final  List<TicketMessageEntity> messages = const <TicketMessageEntity>[], this.draft = ''}): _messages = messages,super._();
  

@override@JsonKey() final  BaseStatus status;
@override@JsonKey() final  BaseStatus sendStatus;
 final  List<TicketMessageEntity> _messages;
@override@JsonKey() List<TicketMessageEntity> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey() final  String draft;

/// Create a copy of TicketThreadState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketThreadStateCopyWith<_TicketThreadState> get copyWith => __$TicketThreadStateCopyWithImpl<_TicketThreadState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketThreadState&&(identical(other.status, status) || other.status == status)&&(identical(other.sendStatus, sendStatus) || other.sendStatus == sendStatus)&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.draft, draft) || other.draft == draft));
}


@override
int get hashCode => Object.hash(runtimeType,status,sendStatus,const DeepCollectionEquality().hash(_messages),draft);

@override
String toString() {
  return 'TicketThreadState(status: $status, sendStatus: $sendStatus, messages: $messages, draft: $draft)';
}


}

/// @nodoc
abstract mixin class _$TicketThreadStateCopyWith<$Res> implements $TicketThreadStateCopyWith<$Res> {
  factory _$TicketThreadStateCopyWith(_TicketThreadState value, $Res Function(_TicketThreadState) _then) = __$TicketThreadStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, BaseStatus sendStatus, List<TicketMessageEntity> messages, String draft
});


@override $BaseStatusCopyWith<$Res> get status;@override $BaseStatusCopyWith<$Res> get sendStatus;

}
/// @nodoc
class __$TicketThreadStateCopyWithImpl<$Res>
    implements _$TicketThreadStateCopyWith<$Res> {
  __$TicketThreadStateCopyWithImpl(this._self, this._then);

  final _TicketThreadState _self;
  final $Res Function(_TicketThreadState) _then;

/// Create a copy of TicketThreadState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? sendStatus = null,Object? messages = null,Object? draft = null,}) {
  return _then(_TicketThreadState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,sendStatus: null == sendStatus ? _self.sendStatus : sendStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<TicketMessageEntity>,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of TicketThreadState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of TicketThreadState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get sendStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.sendStatus, (value) {
    return _then(_self.copyWith(sendStatus: value));
  });
}
}

// dart format on
