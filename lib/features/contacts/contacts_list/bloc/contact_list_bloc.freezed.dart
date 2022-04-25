// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactListEventTearOff {
  const _$ContactListEventTearOff();

  _ContactListEventFindAll findAll() {
    return const _ContactListEventFindAll();
  }

  _ContactListEventDelete delete({required Contact model}) {
    return _ContactListEventDelete(
      model: model,
    );
  }
}

/// @nodoc
const $ContactListEvent = _$ContactListEventTearOff();

/// @nodoc
mixin _$ContactListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(Contact model) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(Contact model)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(Contact model)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListEventFindAll value) findAll,
    required TResult Function(_ContactListEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactListEventFindAll value)? findAll,
    TResult Function(_ContactListEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListEventFindAll value)? findAll,
    TResult Function(_ContactListEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListEventCopyWith<$Res> {
  factory $ContactListEventCopyWith(
          ContactListEvent value, $Res Function(ContactListEvent) then) =
      _$ContactListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactListEventCopyWithImpl<$Res>
    implements $ContactListEventCopyWith<$Res> {
  _$ContactListEventCopyWithImpl(this._value, this._then);

  final ContactListEvent _value;
  // ignore: unused_field
  final $Res Function(ContactListEvent) _then;
}

/// @nodoc
abstract class _$ContactListEventFindAllCopyWith<$Res> {
  factory _$ContactListEventFindAllCopyWith(_ContactListEventFindAll value,
          $Res Function(_ContactListEventFindAll) then) =
      __$ContactListEventFindAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$ContactListEventFindAllCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res>
    implements _$ContactListEventFindAllCopyWith<$Res> {
  __$ContactListEventFindAllCopyWithImpl(_ContactListEventFindAll _value,
      $Res Function(_ContactListEventFindAll) _then)
      : super(_value, (v) => _then(v as _ContactListEventFindAll));

  @override
  _ContactListEventFindAll get _value =>
      super._value as _ContactListEventFindAll;
}

/// @nodoc

class _$_ContactListEventFindAll implements _ContactListEventFindAll {
  const _$_ContactListEventFindAll();

  @override
  String toString() {
    return 'ContactListEvent.findAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ContactListEventFindAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(Contact model) delete,
  }) {
    return findAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(Contact model)? delete,
  }) {
    return findAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(Contact model)? delete,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListEventFindAll value) findAll,
    required TResult Function(_ContactListEventDelete value) delete,
  }) {
    return findAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactListEventFindAll value)? findAll,
    TResult Function(_ContactListEventDelete value)? delete,
  }) {
    return findAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListEventFindAll value)? findAll,
    TResult Function(_ContactListEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(this);
    }
    return orElse();
  }
}

abstract class _ContactListEventFindAll implements ContactListEvent {
  const factory _ContactListEventFindAll() = _$_ContactListEventFindAll;
}

/// @nodoc
abstract class _$ContactListEventDeleteCopyWith<$Res> {
  factory _$ContactListEventDeleteCopyWith(_ContactListEventDelete value,
          $Res Function(_ContactListEventDelete) then) =
      __$ContactListEventDeleteCopyWithImpl<$Res>;
  $Res call({Contact model});
}

/// @nodoc
class __$ContactListEventDeleteCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res>
    implements _$ContactListEventDeleteCopyWith<$Res> {
  __$ContactListEventDeleteCopyWithImpl(_ContactListEventDelete _value,
      $Res Function(_ContactListEventDelete) _then)
      : super(_value, (v) => _then(v as _ContactListEventDelete));

  @override
  _ContactListEventDelete get _value => super._value as _ContactListEventDelete;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_ContactListEventDelete(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }
}

/// @nodoc

class _$_ContactListEventDelete implements _ContactListEventDelete {
  const _$_ContactListEventDelete({required this.model});

  @override
  final Contact model;

  @override
  String toString() {
    return 'ContactListEvent.delete(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactListEventDelete &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$ContactListEventDeleteCopyWith<_ContactListEventDelete> get copyWith =>
      __$ContactListEventDeleteCopyWithImpl<_ContactListEventDelete>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
    required TResult Function(Contact model) delete,
  }) {
    return delete(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(Contact model)? delete,
  }) {
    return delete?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    TResult Function(Contact model)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListEventFindAll value) findAll,
    required TResult Function(_ContactListEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactListEventFindAll value)? findAll,
    TResult Function(_ContactListEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListEventFindAll value)? findAll,
    TResult Function(_ContactListEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _ContactListEventDelete implements ContactListEvent {
  const factory _ContactListEventDelete({required Contact model}) =
      _$_ContactListEventDelete;

  Contact get model;
  @JsonKey(ignore: true)
  _$ContactListEventDeleteCopyWith<_ContactListEventDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ContactListStateTearOff {
  const _$ContactListStateTearOff();

  _ContactListStateInitial initial() {
    return const _ContactListStateInitial();
  }

  _ContactListStateLoading loading() {
    return const _ContactListStateLoading();
  }

  _ContactListStateData data({required List<Contact> contacts}) {
    return _ContactListStateData(
      contacts: contacts,
    );
  }

  _ContactListStateError error({required String error}) {
    return _ContactListStateError(
      error: error,
    );
  }
}

/// @nodoc
const $ContactListState = _$ContactListStateTearOff();

/// @nodoc
mixin _$ContactListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Contact> contacts) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListStateCopyWith<$Res> {
  factory $ContactListStateCopyWith(
          ContactListState value, $Res Function(ContactListState) then) =
      _$ContactListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactListStateCopyWithImpl<$Res>
    implements $ContactListStateCopyWith<$Res> {
  _$ContactListStateCopyWithImpl(this._value, this._then);

  final ContactListState _value;
  // ignore: unused_field
  final $Res Function(ContactListState) _then;
}

/// @nodoc
abstract class _$ContactListStateInitialCopyWith<$Res> {
  factory _$ContactListStateInitialCopyWith(_ContactListStateInitial value,
          $Res Function(_ContactListStateInitial) then) =
      __$ContactListStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ContactListStateInitialCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res>
    implements _$ContactListStateInitialCopyWith<$Res> {
  __$ContactListStateInitialCopyWithImpl(_ContactListStateInitial _value,
      $Res Function(_ContactListStateInitial) _then)
      : super(_value, (v) => _then(v as _ContactListStateInitial));

  @override
  _ContactListStateInitial get _value =>
      super._value as _ContactListStateInitial;
}

/// @nodoc

class _$_ContactListStateInitial implements _ContactListStateInitial {
  const _$_ContactListStateInitial();

  @override
  String toString() {
    return 'ContactListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ContactListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Contact> contacts) data,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateInitial implements ContactListState {
  const factory _ContactListStateInitial() = _$_ContactListStateInitial;
}

/// @nodoc
abstract class _$ContactListStateLoadingCopyWith<$Res> {
  factory _$ContactListStateLoadingCopyWith(_ContactListStateLoading value,
          $Res Function(_ContactListStateLoading) then) =
      __$ContactListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ContactListStateLoadingCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res>
    implements _$ContactListStateLoadingCopyWith<$Res> {
  __$ContactListStateLoadingCopyWithImpl(_ContactListStateLoading _value,
      $Res Function(_ContactListStateLoading) _then)
      : super(_value, (v) => _then(v as _ContactListStateLoading));

  @override
  _ContactListStateLoading get _value =>
      super._value as _ContactListStateLoading;
}

/// @nodoc

class _$_ContactListStateLoading implements _ContactListStateLoading {
  const _$_ContactListStateLoading();

  @override
  String toString() {
    return 'ContactListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ContactListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Contact> contacts) data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateLoading implements ContactListState {
  const factory _ContactListStateLoading() = _$_ContactListStateLoading;
}

/// @nodoc
abstract class _$ContactListStateDataCopyWith<$Res> {
  factory _$ContactListStateDataCopyWith(_ContactListStateData value,
          $Res Function(_ContactListStateData) then) =
      __$ContactListStateDataCopyWithImpl<$Res>;
  $Res call({List<Contact> contacts});
}

/// @nodoc
class __$ContactListStateDataCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res>
    implements _$ContactListStateDataCopyWith<$Res> {
  __$ContactListStateDataCopyWithImpl(
      _ContactListStateData _value, $Res Function(_ContactListStateData) _then)
      : super(_value, (v) => _then(v as _ContactListStateData));

  @override
  _ContactListStateData get _value => super._value as _ContactListStateData;

  @override
  $Res call({
    Object? contacts = freezed,
  }) {
    return _then(_ContactListStateData(
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$_ContactListStateData implements _ContactListStateData {
  const _$_ContactListStateData({required this.contacts});

  @override
  final List<Contact> contacts;

  @override
  String toString() {
    return 'ContactListState.data(contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactListStateData &&
            const DeepCollectionEquality().equals(other.contacts, contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(contacts));

  @JsonKey(ignore: true)
  @override
  _$ContactListStateDataCopyWith<_ContactListStateData> get copyWith =>
      __$ContactListStateDataCopyWithImpl<_ContactListStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Contact> contacts) data,
    required TResult Function(String error) error,
  }) {
    return data(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String error)? error,
  }) {
    return data?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateData implements ContactListState {
  const factory _ContactListStateData({required List<Contact> contacts}) =
      _$_ContactListStateData;

  List<Contact> get contacts;
  @JsonKey(ignore: true)
  _$ContactListStateDataCopyWith<_ContactListStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ContactListStateErrorCopyWith<$Res> {
  factory _$ContactListStateErrorCopyWith(_ContactListStateError value,
          $Res Function(_ContactListStateError) then) =
      __$ContactListStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ContactListStateErrorCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res>
    implements _$ContactListStateErrorCopyWith<$Res> {
  __$ContactListStateErrorCopyWithImpl(_ContactListStateError _value,
      $Res Function(_ContactListStateError) _then)
      : super(_value, (v) => _then(v as _ContactListStateError));

  @override
  _ContactListStateError get _value => super._value as _ContactListStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_ContactListStateError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ContactListStateError implements _ContactListStateError {
  const _$_ContactListStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ContactListState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactListStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ContactListStateErrorCopyWith<_ContactListStateError> get copyWith =>
      __$ContactListStateErrorCopyWithImpl<_ContactListStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Contact> contacts) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Contact> contacts)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactListStateInitial value) initial,
    required TResult Function(_ContactListStateLoading value) loading,
    required TResult Function(_ContactListStateData value) data,
    required TResult Function(_ContactListStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactListStateInitial value)? initial,
    TResult Function(_ContactListStateLoading value)? loading,
    TResult Function(_ContactListStateData value)? data,
    TResult Function(_ContactListStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ContactListStateError implements ContactListState {
  const factory _ContactListStateError({required String error}) =
      _$_ContactListStateError;

  String get error;
  @JsonKey(ignore: true)
  _$ContactListStateErrorCopyWith<_ContactListStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
