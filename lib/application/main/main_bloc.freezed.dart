// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainStateTearOff {
  const _$MainStateTearOff();

  _MainState call(
      {int index = 0, bool isLoading = false, bool isRunnerActivated = false}) {
    return _MainState(
      index: index,
      isLoading: isLoading,
      isRunnerActivated: isRunnerActivated,
    );
  }
}

/// @nodoc
const $MainState = _$MainStateTearOff();

/// @nodoc
mixin _$MainState {
  int get index => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isRunnerActivated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res>;
  $Res call({int index, bool isLoading, bool isRunnerActivated});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res> implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  final MainState _value;
  // ignore: unused_field
  final $Res Function(MainState) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? isLoading = freezed,
    Object? isRunnerActivated = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRunnerActivated: isRunnerActivated == freezed
          ? _value.isRunnerActivated
          : isRunnerActivated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$MainStateCopyWith(
          _MainState value, $Res Function(_MainState) then) =
      __$MainStateCopyWithImpl<$Res>;
  @override
  $Res call({int index, bool isLoading, bool isRunnerActivated});
}

/// @nodoc
class __$MainStateCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$MainStateCopyWith<$Res> {
  __$MainStateCopyWithImpl(_MainState _value, $Res Function(_MainState) _then)
      : super(_value, (v) => _then(v as _MainState));

  @override
  _MainState get _value => super._value as _MainState;

  @override
  $Res call({
    Object? index = freezed,
    Object? isLoading = freezed,
    Object? isRunnerActivated = freezed,
  }) {
    return _then(_MainState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRunnerActivated: isRunnerActivated == freezed
          ? _value.isRunnerActivated
          : isRunnerActivated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MainState extends _MainState {
  const _$_MainState(
      {this.index = 0, this.isLoading = false, this.isRunnerActivated = false})
      : super._();

  @JsonKey(defaultValue: 0)
  @override
  final int index;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isRunnerActivated;

  @override
  String toString() {
    return 'MainState(index: $index, isLoading: $isLoading, isRunnerActivated: $isRunnerActivated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainState &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isRunnerActivated, isRunnerActivated) ||
                const DeepCollectionEquality()
                    .equals(other.isRunnerActivated, isRunnerActivated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isRunnerActivated);

  @JsonKey(ignore: true)
  @override
  _$MainStateCopyWith<_MainState> get copyWith =>
      __$MainStateCopyWithImpl<_MainState>(this, _$identity);
}

abstract class _MainState extends MainState {
  const factory _MainState(
      {int index, bool isLoading, bool isRunnerActivated}) = _$_MainState;
  const _MainState._() : super._();

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isRunnerActivated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainStateCopyWith<_MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MainEventTearOff {
  const _$MainEventTearOff();

  _TabChanged tabChanged(int tabIndex) {
    return _TabChanged(
      tabIndex,
    );
  }

  _Load load({required bool isLoading}) {
    return _Load(
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $MainEvent = _$MainEventTearOff();

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function(bool isLoading) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(bool isLoading)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(bool isLoading)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabChanged value) tabChanged,
    required TResult Function(_Load value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_Load value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res> implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  final MainEvent _value;
  // ignore: unused_field
  final $Res Function(MainEvent) _then;
}

/// @nodoc
abstract class _$TabChangedCopyWith<$Res> {
  factory _$TabChangedCopyWith(
          _TabChanged value, $Res Function(_TabChanged) then) =
      __$TabChangedCopyWithImpl<$Res>;
  $Res call({int tabIndex});
}

/// @nodoc
class __$TabChangedCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res>
    implements _$TabChangedCopyWith<$Res> {
  __$TabChangedCopyWithImpl(
      _TabChanged _value, $Res Function(_TabChanged) _then)
      : super(_value, (v) => _then(v as _TabChanged));

  @override
  _TabChanged get _value => super._value as _TabChanged;

  @override
  $Res call({
    Object? tabIndex = freezed,
  }) {
    return _then(_TabChanged(
      tabIndex == freezed
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabChanged implements _TabChanged {
  const _$_TabChanged(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'MainEvent.tabChanged(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TabChanged &&
            (identical(other.tabIndex, tabIndex) ||
                const DeepCollectionEquality()
                    .equals(other.tabIndex, tabIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tabIndex);

  @JsonKey(ignore: true)
  @override
  _$TabChangedCopyWith<_TabChanged> get copyWith =>
      __$TabChangedCopyWithImpl<_TabChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function(bool isLoading) load,
  }) {
    return tabChanged(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(bool isLoading)? load,
  }) {
    return tabChanged?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(bool isLoading)? load,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabChanged value) tabChanged,
    required TResult Function(_Load value) load,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_Load value)? load,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class _TabChanged implements MainEvent {
  const factory _TabChanged(int tabIndex) = _$_TabChanged;

  int get tabIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TabChangedCopyWith<_TabChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_Load(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'MainEvent.load(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Load &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$LoadCopyWith<_Load> get copyWith =>
      __$LoadCopyWithImpl<_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function(bool isLoading) load,
  }) {
    return load(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(bool isLoading)? load,
  }) {
    return load?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(bool isLoading)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabChanged value) tabChanged,
    required TResult Function(_Load value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_Load value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements MainEvent {
  const factory _Load({required bool isLoading}) = _$_Load;

  bool get isLoading => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadCopyWith<_Load> get copyWith => throw _privateConstructorUsedError;
}
