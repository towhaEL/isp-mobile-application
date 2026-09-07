// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autopay_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AutopayState {

 BaseStatus get status; BaseStatus get saveStatus; List<PaymentMethodEntity> get methods;/// What the server holds.
 AutopayConfigEntity? get config;/// What the form holds.
 AutopayConfigEntity? get draft;/// Whether the confirmation panel should be showing instead of the form.
 bool get isSaved;
/// Create a copy of AutopayState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutopayStateCopyWith<AutopayState> get copyWith => _$AutopayStateCopyWithImpl<AutopayState>(this as AutopayState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutopayState&&(identical(other.status, status) || other.status == status)&&(identical(other.saveStatus, saveStatus) || other.saveStatus == saveStatus)&&const DeepCollectionEquality().equals(other.methods, methods)&&(identical(other.config, config) || other.config == config)&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved));
}


@override
int get hashCode => Object.hash(runtimeType,status,saveStatus,const DeepCollectionEquality().hash(methods),config,draft,isSaved);

@override
String toString() {
  return 'AutopayState(status: $status, saveStatus: $saveStatus, methods: $methods, config: $config, draft: $draft, isSaved: $isSaved)';
}


}

/// @nodoc
abstract mixin class $AutopayStateCopyWith<$Res>  {
  factory $AutopayStateCopyWith(AutopayState value, $Res Function(AutopayState) _then) = _$AutopayStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, BaseStatus saveStatus, List<PaymentMethodEntity> methods, AutopayConfigEntity? config, AutopayConfigEntity? draft, bool isSaved
});


$BaseStatusCopyWith<$Res> get status;$BaseStatusCopyWith<$Res> get saveStatus;$AutopayConfigEntityCopyWith<$Res>? get config;$AutopayConfigEntityCopyWith<$Res>? get draft;

}
/// @nodoc
class _$AutopayStateCopyWithImpl<$Res>
    implements $AutopayStateCopyWith<$Res> {
  _$AutopayStateCopyWithImpl(this._self, this._then);

  final AutopayState _self;
  final $Res Function(AutopayState) _then;

/// Create a copy of AutopayState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? saveStatus = null,Object? methods = null,Object? config = freezed,Object? draft = freezed,Object? isSaved = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,saveStatus: null == saveStatus ? _self.saveStatus : saveStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,methods: null == methods ? _self.methods : methods // ignore: cast_nullable_to_non_nullable
as List<PaymentMethodEntity>,config: freezed == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as AutopayConfigEntity?,draft: freezed == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as AutopayConfigEntity?,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AutopayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of AutopayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get saveStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.saveStatus, (value) {
    return _then(_self.copyWith(saveStatus: value));
  });
}/// Create a copy of AutopayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AutopayConfigEntityCopyWith<$Res>? get config {
    if (_self.config == null) {
    return null;
  }

  return $AutopayConfigEntityCopyWith<$Res>(_self.config!, (value) {
    return _then(_self.copyWith(config: value));
  });
}/// Create a copy of AutopayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AutopayConfigEntityCopyWith<$Res>? get draft {
    if (_self.draft == null) {
    return null;
  }

  return $AutopayConfigEntityCopyWith<$Res>(_self.draft!, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}


/// Adds pattern-matching-related methods to [AutopayState].
extension AutopayStatePatterns on AutopayState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AutopayState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AutopayState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AutopayState value)  $default,){
final _that = this;
switch (_that) {
case _AutopayState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AutopayState value)?  $default,){
final _that = this;
switch (_that) {
case _AutopayState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus saveStatus,  List<PaymentMethodEntity> methods,  AutopayConfigEntity? config,  AutopayConfigEntity? draft,  bool isSaved)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AutopayState() when $default != null:
return $default(_that.status,_that.saveStatus,_that.methods,_that.config,_that.draft,_that.isSaved);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus saveStatus,  List<PaymentMethodEntity> methods,  AutopayConfigEntity? config,  AutopayConfigEntity? draft,  bool isSaved)  $default,) {final _that = this;
switch (_that) {
case _AutopayState():
return $default(_that.status,_that.saveStatus,_that.methods,_that.config,_that.draft,_that.isSaved);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  BaseStatus saveStatus,  List<PaymentMethodEntity> methods,  AutopayConfigEntity? config,  AutopayConfigEntity? draft,  bool isSaved)?  $default,) {final _that = this;
switch (_that) {
case _AutopayState() when $default != null:
return $default(_that.status,_that.saveStatus,_that.methods,_that.config,_that.draft,_that.isSaved);case _:
  return null;

}
}

}

/// @nodoc


class _AutopayState extends AutopayState {
  const _AutopayState({this.status = const BaseStatus.initial(), this.saveStatus = const BaseStatus.initial(), final  List<PaymentMethodEntity> methods = const <PaymentMethodEntity>[], this.config, this.draft, this.isSaved = false}): _methods = methods,super._();
  

@override@JsonKey() final  BaseStatus status;
@override@JsonKey() final  BaseStatus saveStatus;
 final  List<PaymentMethodEntity> _methods;
@override@JsonKey() List<PaymentMethodEntity> get methods {
  if (_methods is EqualUnmodifiableListView) return _methods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_methods);
}

/// What the server holds.
@override final  AutopayConfigEntity? config;
/// What the form holds.
@override final  AutopayConfigEntity? draft;
/// Whether the confirmation panel should be showing instead of the form.
@override@JsonKey() final  bool isSaved;

/// Create a copy of AutopayState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutopayStateCopyWith<_AutopayState> get copyWith => __$AutopayStateCopyWithImpl<_AutopayState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutopayState&&(identical(other.status, status) || other.status == status)&&(identical(other.saveStatus, saveStatus) || other.saveStatus == saveStatus)&&const DeepCollectionEquality().equals(other._methods, _methods)&&(identical(other.config, config) || other.config == config)&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved));
}


@override
int get hashCode => Object.hash(runtimeType,status,saveStatus,const DeepCollectionEquality().hash(_methods),config,draft,isSaved);

@override
String toString() {
  return 'AutopayState(status: $status, saveStatus: $saveStatus, methods: $methods, config: $config, draft: $draft, isSaved: $isSaved)';
}


}

/// @nodoc
abstract mixin class _$AutopayStateCopyWith<$Res> implements $AutopayStateCopyWith<$Res> {
  factory _$AutopayStateCopyWith(_AutopayState value, $Res Function(_AutopayState) _then) = __$AutopayStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, BaseStatus saveStatus, List<PaymentMethodEntity> methods, AutopayConfigEntity? config, AutopayConfigEntity? draft, bool isSaved
});


@override $BaseStatusCopyWith<$Res> get status;@override $BaseStatusCopyWith<$Res> get saveStatus;@override $AutopayConfigEntityCopyWith<$Res>? get config;@override $AutopayConfigEntityCopyWith<$Res>? get draft;

}
/// @nodoc
class __$AutopayStateCopyWithImpl<$Res>
    implements _$AutopayStateCopyWith<$Res> {
  __$AutopayStateCopyWithImpl(this._self, this._then);

  final _AutopayState _self;
  final $Res Function(_AutopayState) _then;

/// Create a copy of AutopayState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? saveStatus = null,Object? methods = null,Object? config = freezed,Object? draft = freezed,Object? isSaved = null,}) {
  return _then(_AutopayState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,saveStatus: null == saveStatus ? _self.saveStatus : saveStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,methods: null == methods ? _self._methods : methods // ignore: cast_nullable_to_non_nullable
as List<PaymentMethodEntity>,config: freezed == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as AutopayConfigEntity?,draft: freezed == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as AutopayConfigEntity?,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AutopayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of AutopayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get saveStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.saveStatus, (value) {
    return _then(_self.copyWith(saveStatus: value));
  });
}/// Create a copy of AutopayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AutopayConfigEntityCopyWith<$Res>? get config {
    if (_self.config == null) {
    return null;
  }

  return $AutopayConfigEntityCopyWith<$Res>(_self.config!, (value) {
    return _then(_self.copyWith(config: value));
  });
}/// Create a copy of AutopayState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AutopayConfigEntityCopyWith<$Res>? get draft {
    if (_self.draft == null) {
    return null;
  }

  return $AutopayConfigEntityCopyWith<$Res>(_self.draft!, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}

// dart format on
