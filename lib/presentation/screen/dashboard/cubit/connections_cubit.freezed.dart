// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connections_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectionsState {

 BaseStatus get status; List<ConnectionEntity> get connections; List<InvoiceEntity> get invoices; int get selectedIndex;/// Whether the header's line switcher is expanded.
 bool get isSwitcherOpen; CustomerEntity? get customer; AccountSummaryEntity? get summary;
/// Create a copy of ConnectionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionsStateCopyWith<ConnectionsState> get copyWith => _$ConnectionsStateCopyWithImpl<ConnectionsState>(this as ConnectionsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.connections, connections)&&const DeepCollectionEquality().equals(other.invoices, invoices)&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex)&&(identical(other.isSwitcherOpen, isSwitcherOpen) || other.isSwitcherOpen == isSwitcherOpen)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.summary, summary) || other.summary == summary));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(connections),const DeepCollectionEquality().hash(invoices),selectedIndex,isSwitcherOpen,customer,summary);

@override
String toString() {
  return 'ConnectionsState(status: $status, connections: $connections, invoices: $invoices, selectedIndex: $selectedIndex, isSwitcherOpen: $isSwitcherOpen, customer: $customer, summary: $summary)';
}


}

/// @nodoc
abstract mixin class $ConnectionsStateCopyWith<$Res>  {
  factory $ConnectionsStateCopyWith(ConnectionsState value, $Res Function(ConnectionsState) _then) = _$ConnectionsStateCopyWithImpl;
@useResult
$Res call({
 BaseStatus status, List<ConnectionEntity> connections, List<InvoiceEntity> invoices, int selectedIndex, bool isSwitcherOpen, CustomerEntity? customer, AccountSummaryEntity? summary
});


$BaseStatusCopyWith<$Res> get status;$CustomerEntityCopyWith<$Res>? get customer;$AccountSummaryEntityCopyWith<$Res>? get summary;

}
/// @nodoc
class _$ConnectionsStateCopyWithImpl<$Res>
    implements $ConnectionsStateCopyWith<$Res> {
  _$ConnectionsStateCopyWithImpl(this._self, this._then);

  final ConnectionsState _self;
  final $Res Function(ConnectionsState) _then;

/// Create a copy of ConnectionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? connections = null,Object? invoices = null,Object? selectedIndex = null,Object? isSwitcherOpen = null,Object? customer = freezed,Object? summary = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,connections: null == connections ? _self.connections : connections // ignore: cast_nullable_to_non_nullable
as List<ConnectionEntity>,invoices: null == invoices ? _self.invoices : invoices // ignore: cast_nullable_to_non_nullable
as List<InvoiceEntity>,selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,isSwitcherOpen: null == isSwitcherOpen ? _self.isSwitcherOpen : isSwitcherOpen // ignore: cast_nullable_to_non_nullable
as bool,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as CustomerEntity?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as AccountSummaryEntity?,
  ));
}
/// Create a copy of ConnectionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ConnectionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerEntityCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $CustomerEntityCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of ConnectionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountSummaryEntityCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $AccountSummaryEntityCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConnectionsState].
extension ConnectionsStatePatterns on ConnectionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectionsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectionsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectionsState value)  $default,){
final _that = this;
switch (_that) {
case _ConnectionsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectionsState value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectionsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseStatus status,  List<ConnectionEntity> connections,  List<InvoiceEntity> invoices,  int selectedIndex,  bool isSwitcherOpen,  CustomerEntity? customer,  AccountSummaryEntity? summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectionsState() when $default != null:
return $default(_that.status,_that.connections,_that.invoices,_that.selectedIndex,_that.isSwitcherOpen,_that.customer,_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseStatus status,  List<ConnectionEntity> connections,  List<InvoiceEntity> invoices,  int selectedIndex,  bool isSwitcherOpen,  CustomerEntity? customer,  AccountSummaryEntity? summary)  $default,) {final _that = this;
switch (_that) {
case _ConnectionsState():
return $default(_that.status,_that.connections,_that.invoices,_that.selectedIndex,_that.isSwitcherOpen,_that.customer,_that.summary);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseStatus status,  List<ConnectionEntity> connections,  List<InvoiceEntity> invoices,  int selectedIndex,  bool isSwitcherOpen,  CustomerEntity? customer,  AccountSummaryEntity? summary)?  $default,) {final _that = this;
switch (_that) {
case _ConnectionsState() when $default != null:
return $default(_that.status,_that.connections,_that.invoices,_that.selectedIndex,_that.isSwitcherOpen,_that.customer,_that.summary);case _:
  return null;

}
}

}

/// @nodoc


class _ConnectionsState extends ConnectionsState {
  const _ConnectionsState({this.status = const BaseStatus.initial(), final  List<ConnectionEntity> connections = const <ConnectionEntity>[], final  List<InvoiceEntity> invoices = const <InvoiceEntity>[], this.selectedIndex = 0, this.isSwitcherOpen = false, this.customer, this.summary}): _connections = connections,_invoices = invoices,super._();
  

@override@JsonKey() final  BaseStatus status;
 final  List<ConnectionEntity> _connections;
@override@JsonKey() List<ConnectionEntity> get connections {
  if (_connections is EqualUnmodifiableListView) return _connections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_connections);
}

 final  List<InvoiceEntity> _invoices;
@override@JsonKey() List<InvoiceEntity> get invoices {
  if (_invoices is EqualUnmodifiableListView) return _invoices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_invoices);
}

@override@JsonKey() final  int selectedIndex;
/// Whether the header's line switcher is expanded.
@override@JsonKey() final  bool isSwitcherOpen;
@override final  CustomerEntity? customer;
@override final  AccountSummaryEntity? summary;

/// Create a copy of ConnectionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionsStateCopyWith<_ConnectionsState> get copyWith => __$ConnectionsStateCopyWithImpl<_ConnectionsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._connections, _connections)&&const DeepCollectionEquality().equals(other._invoices, _invoices)&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex)&&(identical(other.isSwitcherOpen, isSwitcherOpen) || other.isSwitcherOpen == isSwitcherOpen)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.summary, summary) || other.summary == summary));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_connections),const DeepCollectionEquality().hash(_invoices),selectedIndex,isSwitcherOpen,customer,summary);

@override
String toString() {
  return 'ConnectionsState(status: $status, connections: $connections, invoices: $invoices, selectedIndex: $selectedIndex, isSwitcherOpen: $isSwitcherOpen, customer: $customer, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$ConnectionsStateCopyWith<$Res> implements $ConnectionsStateCopyWith<$Res> {
  factory _$ConnectionsStateCopyWith(_ConnectionsState value, $Res Function(_ConnectionsState) _then) = __$ConnectionsStateCopyWithImpl;
@override @useResult
$Res call({
 BaseStatus status, List<ConnectionEntity> connections, List<InvoiceEntity> invoices, int selectedIndex, bool isSwitcherOpen, CustomerEntity? customer, AccountSummaryEntity? summary
});


@override $BaseStatusCopyWith<$Res> get status;@override $CustomerEntityCopyWith<$Res>? get customer;@override $AccountSummaryEntityCopyWith<$Res>? get summary;

}
/// @nodoc
class __$ConnectionsStateCopyWithImpl<$Res>
    implements _$ConnectionsStateCopyWith<$Res> {
  __$ConnectionsStateCopyWithImpl(this._self, this._then);

  final _ConnectionsState _self;
  final $Res Function(_ConnectionsState) _then;

/// Create a copy of ConnectionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? connections = null,Object? invoices = null,Object? selectedIndex = null,Object? isSwitcherOpen = null,Object? customer = freezed,Object? summary = freezed,}) {
  return _then(_ConnectionsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BaseStatus,connections: null == connections ? _self._connections : connections // ignore: cast_nullable_to_non_nullable
as List<ConnectionEntity>,invoices: null == invoices ? _self._invoices : invoices // ignore: cast_nullable_to_non_nullable
as List<InvoiceEntity>,selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,isSwitcherOpen: null == isSwitcherOpen ? _self.isSwitcherOpen : isSwitcherOpen // ignore: cast_nullable_to_non_nullable
as bool,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as CustomerEntity?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as AccountSummaryEntity?,
  ));
}

/// Create a copy of ConnectionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStatusCopyWith<$Res> get status {
  
  return $BaseStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}/// Create a copy of ConnectionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerEntityCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $CustomerEntityCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of ConnectionsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountSummaryEntityCopyWith<$Res>? get summary {
    if (_self.summary == null) {
    return null;
  }

  return $AccountSummaryEntityCopyWith<$Res>(_self.summary!, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

// dart format on
