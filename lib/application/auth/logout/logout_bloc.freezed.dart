// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'logout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LogoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLogOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLogOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLogOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLogOutPressed value) onLogOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogOutPressed value)? onLogOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogOutPressed value)? onLogOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutEventCopyWith<$Res> {
  factory $LogoutEventCopyWith(
          LogoutEvent value, $Res Function(LogoutEvent) then) =
      _$LogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutEventCopyWithImpl<$Res> implements $LogoutEventCopyWith<$Res> {
  _$LogoutEventCopyWithImpl(this._value, this._then);

  final LogoutEvent _value;
  // ignore: unused_field
  final $Res Function(LogoutEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$LogoutEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LogoutEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLogOutPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLogOutPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLogOutPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLogOutPressed value) onLogOutPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogOutPressed value)? onLogOutPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogOutPressed value)? onLogOutPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LogoutEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_OnLogOutPressedCopyWith<$Res> {
  factory _$$_OnLogOutPressedCopyWith(
          _$_OnLogOutPressed value, $Res Function(_$_OnLogOutPressed) then) =
      __$$_OnLogOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnLogOutPressedCopyWithImpl<$Res>
    extends _$LogoutEventCopyWithImpl<$Res>
    implements _$$_OnLogOutPressedCopyWith<$Res> {
  __$$_OnLogOutPressedCopyWithImpl(
      _$_OnLogOutPressed _value, $Res Function(_$_OnLogOutPressed) _then)
      : super(_value, (v) => _then(v as _$_OnLogOutPressed));

  @override
  _$_OnLogOutPressed get _value => super._value as _$_OnLogOutPressed;
}

/// @nodoc

class _$_OnLogOutPressed implements _OnLogOutPressed {
  const _$_OnLogOutPressed();

  @override
  String toString() {
    return 'LogoutEvent.onLogOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnLogOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLogOutPressed,
  }) {
    return onLogOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLogOutPressed,
  }) {
    return onLogOutPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLogOutPressed,
    required TResult orElse(),
  }) {
    if (onLogOutPressed != null) {
      return onLogOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLogOutPressed value) onLogOutPressed,
  }) {
    return onLogOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogOutPressed value)? onLogOutPressed,
  }) {
    return onLogOutPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLogOutPressed value)? onLogOutPressed,
    required TResult orElse(),
  }) {
    if (onLogOutPressed != null) {
      return onLogOutPressed(this);
    }
    return orElse();
  }
}

abstract class _OnLogOutPressed implements LogoutEvent {
  const factory _OnLogOutPressed() = _$_OnLogOutPressed;
}

/// @nodoc
mixin _$LogoutState {
  AuthRepository get authRepository => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoggedOut => throw _privateConstructorUsedError;
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogoutStateCopyWith<LogoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutStateCopyWith<$Res> {
  factory $LogoutStateCopyWith(
          LogoutState value, $Res Function(LogoutState) then) =
      _$LogoutStateCopyWithImpl<$Res>;
  $Res call(
      {AuthRepository authRepository,
      bool isLoading,
      bool isLoggedOut,
      AppStateNotifier appStateNotifier});
}

/// @nodoc
class _$LogoutStateCopyWithImpl<$Res> implements $LogoutStateCopyWith<$Res> {
  _$LogoutStateCopyWithImpl(this._value, this._then);

  final LogoutState _value;
  // ignore: unused_field
  final $Res Function(LogoutState) _then;

  @override
  $Res call({
    Object? authRepository = freezed,
    Object? isLoading = freezed,
    Object? isLoggedOut = freezed,
    Object? appStateNotifier = freezed,
  }) {
    return _then(_value.copyWith(
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedOut: isLoggedOut == freezed
          ? _value.isLoggedOut
          : isLoggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
    ));
  }
}

/// @nodoc
abstract class _$$_LogoutStateCopyWith<$Res>
    implements $LogoutStateCopyWith<$Res> {
  factory _$$_LogoutStateCopyWith(
          _$_LogoutState value, $Res Function(_$_LogoutState) then) =
      __$$_LogoutStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthRepository authRepository,
      bool isLoading,
      bool isLoggedOut,
      AppStateNotifier appStateNotifier});
}

/// @nodoc
class __$$_LogoutStateCopyWithImpl<$Res> extends _$LogoutStateCopyWithImpl<$Res>
    implements _$$_LogoutStateCopyWith<$Res> {
  __$$_LogoutStateCopyWithImpl(
      _$_LogoutState _value, $Res Function(_$_LogoutState) _then)
      : super(_value, (v) => _then(v as _$_LogoutState));

  @override
  _$_LogoutState get _value => super._value as _$_LogoutState;

  @override
  $Res call({
    Object? authRepository = freezed,
    Object? isLoading = freezed,
    Object? isLoggedOut = freezed,
    Object? appStateNotifier = freezed,
  }) {
    return _then(_$_LogoutState(
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedOut: isLoggedOut == freezed
          ? _value.isLoggedOut
          : isLoggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
    ));
  }
}

/// @nodoc

class _$_LogoutState implements _LogoutState {
  const _$_LogoutState(
      {required this.authRepository,
      required this.isLoading,
      required this.isLoggedOut,
      required this.appStateNotifier});

  @override
  final AuthRepository authRepository;
  @override
  final bool isLoading;
  @override
  final bool isLoggedOut;
  @override
  final AppStateNotifier appStateNotifier;

  @override
  String toString() {
    return 'LogoutState(authRepository: $authRepository, isLoading: $isLoading, isLoggedOut: $isLoggedOut, appStateNotifier: $appStateNotifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogoutState &&
            const DeepCollectionEquality()
                .equals(other.authRepository, authRepository) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isLoggedOut, isLoggedOut) &&
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authRepository),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isLoggedOut),
      const DeepCollectionEquality().hash(appStateNotifier));

  @JsonKey(ignore: true)
  @override
  _$$_LogoutStateCopyWith<_$_LogoutState> get copyWith =>
      __$$_LogoutStateCopyWithImpl<_$_LogoutState>(this, _$identity);
}

abstract class _LogoutState implements LogoutState {
  const factory _LogoutState(
      {required final AuthRepository authRepository,
      required final bool isLoading,
      required final bool isLoggedOut,
      required final AppStateNotifier appStateNotifier}) = _$_LogoutState;

  @override
  AuthRepository get authRepository;
  @override
  bool get isLoading;
  @override
  bool get isLoggedOut;
  @override
  AppStateNotifier get appStateNotifier;
  @override
  @JsonKey(ignore: true)
  _$$_LogoutStateCopyWith<_$_LogoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
