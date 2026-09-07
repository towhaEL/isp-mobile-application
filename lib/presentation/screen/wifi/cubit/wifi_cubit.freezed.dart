// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wifi_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WifiState {

 BaseStatus get status; BaseStatus get saveStatus; List<ConnectedDeviceEntity> get devices; bool get isPasswordVisible;/// What the router currently holds.
 WifiSettingsEntity? get settings;/// What the form holds. Equal to [settings] until the customer edits.
 WifiSettingsEntity? get draft;
/// Create a copy of WifiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WifiStateCopyWith<WifiState> get copyWith => _$WifiStateCopyWithImpl<WifiState>(this as WifiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WifiState&&(identical(other.status, status) || other.status == status)&&(identical(other.saveStatus, saveStatus) || other.saveStatus == saveStatus)&&const DeepCollectionEquality().equals(other.devices, devices)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.draft, draft) || other.draft == draft));
}


@override
int get hashCode => Object.hash(runtimeType,status,saveStatus,const DeepCollectionEquality().hash(devices),isPasswordVisible,settings,draft);

@override
String toString() {
  return 'WifiState(status: $status, saveStatus: $saveStatus, devices: $devices, isPasswordVisible: $isPasswordVisible, settings: $settings, draft: $draft)';
}


}

/// @nodoc
abstract mixin class $WifiStateCopyWith<$Res>  {
  factory $WifiStateCopyWith(WifiState value, $Res Function(WifiState) _then) = _$WifiStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, BaseStatus saveStatus, List<ConnectedDeviceEntity> devices, bool isPasswordVisible, WifiSettingsEntity? settings, WifiSettingsEntity? draft
});


$BaseStatusCopyWith<$Res> get status;$BaseStatusCopyWith<$Res> get saveStatus;$WifiSettingsEntityCopyWith<$Res>? get settings;$WifiSettingsEntityCopyWith<$Res>? get draft;

}
/// @nodoc
class _$WifiStateCopyWithImpl<$Res>
    implements $WifiStateCopyWith<$Res> {
  _$WifiStateCopyWithImpl(this._self, this._then);

  final WifiState _self;
  final $Res Function(WifiState) _then;

/// Create a copy of WifiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? saveStatus = null,Object? devices = null,Object? isPasswordVisible = null,Object? settings = freezed,Object? draft = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,saveStatus: null == saveStatus ? _self.saveStatus : saveStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,devices: null == devices ? _self.devices : devices // ignore: cast_nullable_to_non_nullable
as List<ConnectedDeviceEntity>,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as WifiSettingsEntity?,draft: freezed == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as WifiSettingsEntity?,
  ));
}
/// Create a copy of WifiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of WifiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get saveStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.saveStatus, (value) {
    return _then(_self.copyWith(saveStatus: value));
  });
}/// Create a copy of WifiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WifiSettingsEntityCopyWith<$Res>? get settings {
    if (_self.settings == null) {
    return null;
  }

  return $WifiSettingsEntityCopyWith<$Res>(_self.settings!, (value) {
    return _then(_self.copyWith(settings: value));
  });
}/// Create a copy of WifiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WifiSettingsEntityCopyWith<$Res>? get draft {
    if (_self.draft == null) {
    return null;
  }

  return $WifiSettingsEntityCopyWith<$Res>(_self.draft!, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}


/// Adds pattern-matching-related methods to [WifiState].
extension WifiStatePatterns on WifiState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WifiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WifiState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WifiState value)  $default,){
final _that = this;
switch (_that) {
case _WifiState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WifiState value)?  $default,){
final _that = this;
switch (_that) {
case _WifiState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus saveStatus,  List<ConnectedDeviceEntity> devices,  bool isPasswordVisible,  WifiSettingsEntity? settings,  WifiSettingsEntity? draft)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WifiState() when $default != null:
return $default(_that.status,_that.saveStatus,_that.devices,_that.isPasswordVisible,_that.settings,_that.draft);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  BaseStatus saveStatus,  List<ConnectedDeviceEntity> devices,  bool isPasswordVisible,  WifiSettingsEntity? settings,  WifiSettingsEntity? draft)  $default,) {final _that = this;
switch (_that) {
case _WifiState():
return $default(_that.status,_that.saveStatus,_that.devices,_that.isPasswordVisible,_that.settings,_that.draft);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  BaseStatus saveStatus,  List<ConnectedDeviceEntity> devices,  bool isPasswordVisible,  WifiSettingsEntity? settings,  WifiSettingsEntity? draft)?  $default,) {final _that = this;
switch (_that) {
case _WifiState() when $default != null:
return $default(_that.status,_that.saveStatus,_that.devices,_that.isPasswordVisible,_that.settings,_that.draft);case _:
  return null;

}
}

}

/// @nodoc


class _WifiState extends WifiState {
  const _WifiState({this.status = const BaseStatus.initial(), this.saveStatus = const BaseStatus.initial(), final  List<ConnectedDeviceEntity> devices = const <ConnectedDeviceEntity>[], this.isPasswordVisible = false, this.settings, this.draft}): _devices = devices,super._();
  

@override@JsonKey() final  BaseStatus status;
@override@JsonKey() final  BaseStatus saveStatus;
 final  List<ConnectedDeviceEntity> _devices;
@override@JsonKey() List<ConnectedDeviceEntity> get devices {
  if (_devices is EqualUnmodifiableListView) return _devices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_devices);
}

@override@JsonKey() final  bool isPasswordVisible;
/// What the router currently holds.
@override final  WifiSettingsEntity? settings;
/// What the form holds. Equal to [settings] until the customer edits.
@override final  WifiSettingsEntity? draft;

/// Create a copy of WifiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WifiStateCopyWith<_WifiState> get copyWith => __$WifiStateCopyWithImpl<_WifiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WifiState&&(identical(other.status, status) || other.status == status)&&(identical(other.saveStatus, saveStatus) || other.saveStatus == saveStatus)&&const DeepCollectionEquality().equals(other._devices, _devices)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.draft, draft) || other.draft == draft));
}


@override
int get hashCode => Object.hash(runtimeType,status,saveStatus,const DeepCollectionEquality().hash(_devices),isPasswordVisible,settings,draft);

@override
String toString() {
  return 'WifiState(status: $status, saveStatus: $saveStatus, devices: $devices, isPasswordVisible: $isPasswordVisible, settings: $settings, draft: $draft)';
}


}

/// @nodoc
abstract mixin class _$WifiStateCopyWith<$Res> implements $WifiStateCopyWith<$Res> {
  factory _$WifiStateCopyWith(_WifiState value, $Res Function(_WifiState) _then) = __$WifiStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, BaseStatus saveStatus, List<ConnectedDeviceEntity> devices, bool isPasswordVisible, WifiSettingsEntity? settings, WifiSettingsEntity? draft
});


@override $BaseStatusCopyWith<$Res> get status;@override $BaseStatusCopyWith<$Res> get saveStatus;@override $WifiSettingsEntityCopyWith<$Res>? get settings;@override $WifiSettingsEntityCopyWith<$Res>? get draft;

}
/// @nodoc
class __$WifiStateCopyWithImpl<$Res>
    implements _$WifiStateCopyWith<$Res> {
  __$WifiStateCopyWithImpl(this._self, this._then);

  final _WifiState _self;
  final $Res Function(_WifiState) _then;

/// Create a copy of WifiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? saveStatus = null,Object? devices = null,Object? isPasswordVisible = null,Object? settings = freezed,Object? draft = freezed,}) {
  return _then(_WifiState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,saveStatus: null == saveStatus ? _self.saveStatus : saveStatus // ignore: cast_nullable_to_non_nullable
as BaseStatus,devices: null == devices ? _self._devices : devices // ignore: cast_nullable_to_non_nullable
as List<ConnectedDeviceEntity>,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as WifiSettingsEntity?,draft: freezed == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as WifiSettingsEntity?,
  ));
}

/// Create a copy of WifiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of WifiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get saveStatus {
  
  return $BaseStatusCopyWith<$Res>(_self.saveStatus, (value) {
    return _then(_self.copyWith(saveStatus: value));
  });
}/// Create a copy of WifiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WifiSettingsEntityCopyWith<$Res>? get settings {
    if (_self.settings == null) {
    return null;
  }

  return $WifiSettingsEntityCopyWith<$Res>(_self.settings!, (value) {
    return _then(_self.copyWith(settings: value));
  });
}/// Create a copy of WifiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WifiSettingsEntityCopyWith<$Res>? get draft {
    if (_self.draft == null) {
    return null;
  }

  return $WifiSettingsEntityCopyWith<$Res>(_self.draft!, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}

// dart format on
