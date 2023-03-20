// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmailChanged,
    required TResult Function() onPasswordChanged,
    required TResult Function() onLoginPressed,
    required TResult Function() callResetState,
    required TResult Function() signInWithGoogle,
    required TResult Function(LoginState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPressed value) onLoginPressed,
    required TResult Function(_CallResetState value) callResetState,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$_OnEmailChangedCopyWith<$Res> {
  factory _$$_OnEmailChangedCopyWith(
          _$_OnEmailChanged value, $Res Function(_$_OnEmailChanged) then) =
      __$$_OnEmailChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnEmailChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_OnEmailChangedCopyWith<$Res> {
  __$$_OnEmailChangedCopyWithImpl(
      _$_OnEmailChanged _value, $Res Function(_$_OnEmailChanged) _then)
      : super(_value, (v) => _then(v as _$_OnEmailChanged));

  @override
  _$_OnEmailChanged get _value => super._value as _$_OnEmailChanged;
}

/// @nodoc

class _$_OnEmailChanged implements _OnEmailChanged {
  const _$_OnEmailChanged();

  @override
  String toString() {
    return 'LoginEvent.onEmailChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnEmailChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmailChanged,
    required TResult Function() onPasswordChanged,
    required TResult Function() onLoginPressed,
    required TResult Function() callResetState,
    required TResult Function() signInWithGoogle,
    required TResult Function(LoginState state) emitFromAnywhere,
  }) {
    return onEmailChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
  }) {
    return onEmailChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPressed value) onLoginPressed,
    required TResult Function(_CallResetState value) callResetState,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onEmailChanged != null) {
      return onEmailChanged(this);
    }
    return orElse();
  }
}

abstract class _OnEmailChanged implements LoginEvent {
  const factory _OnEmailChanged() = _$_OnEmailChanged;
}

/// @nodoc
abstract class _$$_OnPasswordChangedCopyWith<$Res> {
  factory _$$_OnPasswordChangedCopyWith(_$_OnPasswordChanged value,
          $Res Function(_$_OnPasswordChanged) then) =
      __$$_OnPasswordChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnPasswordChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_OnPasswordChangedCopyWith<$Res> {
  __$$_OnPasswordChangedCopyWithImpl(
      _$_OnPasswordChanged _value, $Res Function(_$_OnPasswordChanged) _then)
      : super(_value, (v) => _then(v as _$_OnPasswordChanged));

  @override
  _$_OnPasswordChanged get _value => super._value as _$_OnPasswordChanged;
}

/// @nodoc

class _$_OnPasswordChanged implements _OnPasswordChanged {
  const _$_OnPasswordChanged();

  @override
  String toString() {
    return 'LoginEvent.onPasswordChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnPasswordChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmailChanged,
    required TResult Function() onPasswordChanged,
    required TResult Function() onLoginPressed,
    required TResult Function() callResetState,
    required TResult Function() signInWithGoogle,
    required TResult Function(LoginState state) emitFromAnywhere,
  }) {
    return onPasswordChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
  }) {
    return onPasswordChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPressed value) onLoginPressed,
    required TResult Function(_CallResetState value) callResetState,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onPasswordChanged != null) {
      return onPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _OnPasswordChanged implements LoginEvent {
  const factory _OnPasswordChanged() = _$_OnPasswordChanged;
}

/// @nodoc
abstract class _$$_OnLoginPressedCopyWith<$Res> {
  factory _$$_OnLoginPressedCopyWith(
          _$_OnLoginPressed value, $Res Function(_$_OnLoginPressed) then) =
      __$$_OnLoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnLoginPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_OnLoginPressedCopyWith<$Res> {
  __$$_OnLoginPressedCopyWithImpl(
      _$_OnLoginPressed _value, $Res Function(_$_OnLoginPressed) _then)
      : super(_value, (v) => _then(v as _$_OnLoginPressed));

  @override
  _$_OnLoginPressed get _value => super._value as _$_OnLoginPressed;
}

/// @nodoc

class _$_OnLoginPressed implements _OnLoginPressed {
  const _$_OnLoginPressed();

  @override
  String toString() {
    return 'LoginEvent.onLoginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnLoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmailChanged,
    required TResult Function() onPasswordChanged,
    required TResult Function() onLoginPressed,
    required TResult Function() callResetState,
    required TResult Function() signInWithGoogle,
    required TResult Function(LoginState state) emitFromAnywhere,
  }) {
    return onLoginPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
  }) {
    return onLoginPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onLoginPressed != null) {
      return onLoginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPressed value) onLoginPressed,
    required TResult Function(_CallResetState value) callResetState,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onLoginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onLoginPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onLoginPressed != null) {
      return onLoginPressed(this);
    }
    return orElse();
  }
}

abstract class _OnLoginPressed implements LoginEvent {
  const factory _OnLoginPressed() = _$_OnLoginPressed;
}

/// @nodoc
abstract class _$$_CallResetStateCopyWith<$Res> {
  factory _$$_CallResetStateCopyWith(
          _$_CallResetState value, $Res Function(_$_CallResetState) then) =
      __$$_CallResetStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CallResetStateCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_CallResetStateCopyWith<$Res> {
  __$$_CallResetStateCopyWithImpl(
      _$_CallResetState _value, $Res Function(_$_CallResetState) _then)
      : super(_value, (v) => _then(v as _$_CallResetState));

  @override
  _$_CallResetState get _value => super._value as _$_CallResetState;
}

/// @nodoc

class _$_CallResetState implements _CallResetState {
  const _$_CallResetState();

  @override
  String toString() {
    return 'LoginEvent.callResetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CallResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmailChanged,
    required TResult Function() onPasswordChanged,
    required TResult Function() onLoginPressed,
    required TResult Function() callResetState,
    required TResult Function() signInWithGoogle,
    required TResult Function(LoginState state) emitFromAnywhere,
  }) {
    return callResetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
  }) {
    return callResetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (callResetState != null) {
      return callResetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPressed value) onLoginPressed,
    required TResult Function(_CallResetState value) callResetState,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return callResetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return callResetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (callResetState != null) {
      return callResetState(this);
    }
    return orElse();
  }
}

abstract class _CallResetState implements LoginEvent {
  const factory _CallResetState() = _$_CallResetState;
}

/// @nodoc
abstract class _$$_SignInWithGoogleCopyWith<$Res> {
  factory _$$_SignInWithGoogleCopyWith(
          _$_SignInWithGoogle value, $Res Function(_$_SignInWithGoogle) then) =
      __$$_SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithGoogleCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_SignInWithGoogleCopyWith<$Res> {
  __$$_SignInWithGoogleCopyWithImpl(
      _$_SignInWithGoogle _value, $Res Function(_$_SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as _$_SignInWithGoogle));

  @override
  _$_SignInWithGoogle get _value => super._value as _$_SignInWithGoogle;
}

/// @nodoc

class _$_SignInWithGoogle implements _SignInWithGoogle {
  const _$_SignInWithGoogle();

  @override
  String toString() {
    return 'LoginEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmailChanged,
    required TResult Function() onPasswordChanged,
    required TResult Function() onLoginPressed,
    required TResult Function() callResetState,
    required TResult Function() signInWithGoogle,
    required TResult Function(LoginState state) emitFromAnywhere,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPressed value) onLoginPressed,
    required TResult Function(_CallResetState value) callResetState,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements LoginEvent {
  const factory _SignInWithGoogle() = _$_SignInWithGoogle;
}

/// @nodoc
abstract class _$$_EmitFromAnywhereCopyWith<$Res> {
  factory _$$_EmitFromAnywhereCopyWith(
          _$_EmitFromAnywhere value, $Res Function(_$_EmitFromAnywhere) then) =
      __$$_EmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({LoginState state});

  $LoginStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EmitFromAnywhereCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_EmitFromAnywhereCopyWith<$Res> {
  __$$_EmitFromAnywhereCopyWithImpl(
      _$_EmitFromAnywhere _value, $Res Function(_$_EmitFromAnywhere) _then)
      : super(_value, (v) => _then(v as _$_EmitFromAnywhere));

  @override
  _$_EmitFromAnywhere get _value => super._value as _$_EmitFromAnywhere;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$_EmitFromAnywhere(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as LoginState,
    ));
  }

  @override
  $LoginStateCopyWith<$Res> get state {
    return $LoginStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EmitFromAnywhere implements _EmitFromAnywhere {
  const _$_EmitFromAnywhere({required this.state});

  @override
  final LoginState state;

  @override
  String toString() {
    return 'LoginEvent.emitFromAnywhere(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmitFromAnywhere &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$$_EmitFromAnywhereCopyWith<_$_EmitFromAnywhere> get copyWith =>
      __$$_EmitFromAnywhereCopyWithImpl<_$_EmitFromAnywhere>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onEmailChanged,
    required TResult Function() onPasswordChanged,
    required TResult Function() onLoginPressed,
    required TResult Function() callResetState,
    required TResult Function() signInWithGoogle,
    required TResult Function(LoginState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onEmailChanged,
    TResult Function()? onPasswordChanged,
    TResult Function()? onLoginPressed,
    TResult Function()? callResetState,
    TResult Function()? signInWithGoogle,
    TResult Function(LoginState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnEmailChanged value) onEmailChanged,
    required TResult Function(_OnPasswordChanged value) onPasswordChanged,
    required TResult Function(_OnLoginPressed value) onLoginPressed,
    required TResult Function(_CallResetState value) callResetState,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnEmailChanged value)? onEmailChanged,
    TResult Function(_OnPasswordChanged value)? onPasswordChanged,
    TResult Function(_OnLoginPressed value)? onLoginPressed,
    TResult Function(_CallResetState value)? callResetState,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements LoginEvent {
  const factory _EmitFromAnywhere({required final LoginState state}) =
      _$_EmitFromAnywhere;

  LoginState get state;
  @JsonKey(ignore: true)
  _$$_EmitFromAnywhereCopyWith<_$_EmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  UserDto? get userDto => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;
  String get errorEmail => throw _privateConstructorUsedError;
  String get errorPassword => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  AuthRepository get authRepository => throw _privateConstructorUsedError;
  TextEditingController get userEmailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {UserDto? userDto,
      bool isLoading,
      bool isSuccessful,
      bool isFailed,
      bool isLoggedIn,
      bool obscurePassword,
      String errorEmail,
      String errorPassword,
      GlobalKey<FormState> formKey,
      AppStateNotifier appStateNotifier,
      String errorMessage,
      AuthRepository authRepository,
      TextEditingController userEmailController,
      TextEditingController passwordController});

  $UserDtoCopyWith<$Res>? get userDto;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? userDto = freezed,
    Object? isLoading = freezed,
    Object? isSuccessful = freezed,
    Object? isFailed = freezed,
    Object? isLoggedIn = freezed,
    Object? obscurePassword = freezed,
    Object? errorEmail = freezed,
    Object? errorPassword = freezed,
    Object? formKey = freezed,
    Object? appStateNotifier = freezed,
    Object? errorMessage = freezed,
    Object? authRepository = freezed,
    Object? userEmailController = freezed,
    Object? passwordController = freezed,
  }) {
    return _then(_value.copyWith(
      userDto: userDto == freezed
          ? _value.userDto
          : userDto // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccessful: isSuccessful == freezed
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurePassword: obscurePassword == freezed
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      errorEmail: errorEmail == freezed
          ? _value.errorEmail
          : errorEmail // ignore: cast_nullable_to_non_nullable
              as String,
      errorPassword: errorPassword == freezed
          ? _value.errorPassword
          : errorPassword // ignore: cast_nullable_to_non_nullable
              as String,
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
      userEmailController: userEmailController == freezed
          ? _value.userEmailController
          : userEmailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: passwordController == freezed
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }

  @override
  $UserDtoCopyWith<$Res>? get userDto {
    if (_value.userDto == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_value.userDto!, (value) {
      return _then(_value.copyWith(userDto: value));
    });
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserDto? userDto,
      bool isLoading,
      bool isSuccessful,
      bool isFailed,
      bool isLoggedIn,
      bool obscurePassword,
      String errorEmail,
      String errorPassword,
      GlobalKey<FormState> formKey,
      AppStateNotifier appStateNotifier,
      String errorMessage,
      AuthRepository authRepository,
      TextEditingController userEmailController,
      TextEditingController passwordController});

  @override
  $UserDtoCopyWith<$Res>? get userDto;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? userDto = freezed,
    Object? isLoading = freezed,
    Object? isSuccessful = freezed,
    Object? isFailed = freezed,
    Object? isLoggedIn = freezed,
    Object? obscurePassword = freezed,
    Object? errorEmail = freezed,
    Object? errorPassword = freezed,
    Object? formKey = freezed,
    Object? appStateNotifier = freezed,
    Object? errorMessage = freezed,
    Object? authRepository = freezed,
    Object? userEmailController = freezed,
    Object? passwordController = freezed,
  }) {
    return _then(_$_LoginState(
      userDto: userDto == freezed
          ? _value.userDto
          : userDto // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccessful: isSuccessful == freezed
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurePassword: obscurePassword == freezed
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      errorEmail: errorEmail == freezed
          ? _value.errorEmail
          : errorEmail // ignore: cast_nullable_to_non_nullable
              as String,
      errorPassword: errorPassword == freezed
          ? _value.errorPassword
          : errorPassword // ignore: cast_nullable_to_non_nullable
              as String,
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
      userEmailController: userEmailController == freezed
          ? _value.userEmailController
          : userEmailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: passwordController == freezed
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.userDto,
      required this.isLoading,
      required this.isSuccessful,
      required this.isFailed,
      required this.isLoggedIn,
      required this.obscurePassword,
      required this.errorEmail,
      required this.errorPassword,
      required this.formKey,
      required this.appStateNotifier,
      required this.errorMessage,
      required this.authRepository,
      required this.userEmailController,
      required this.passwordController});

  @override
  final UserDto? userDto;
  @override
  final bool isLoading;
  @override
  final bool isSuccessful;
  @override
  final bool isFailed;
  @override
  final bool isLoggedIn;
  @override
  final bool obscurePassword;
  @override
  final String errorEmail;
  @override
  final String errorPassword;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final AppStateNotifier appStateNotifier;
  @override
  final String errorMessage;
  @override
  final AuthRepository authRepository;
  @override
  final TextEditingController userEmailController;
  @override
  final TextEditingController passwordController;

  @override
  String toString() {
    return 'LoginState(userDto: $userDto, isLoading: $isLoading, isSuccessful: $isSuccessful, isFailed: $isFailed, isLoggedIn: $isLoggedIn, obscurePassword: $obscurePassword, errorEmail: $errorEmail, errorPassword: $errorPassword, formKey: $formKey, appStateNotifier: $appStateNotifier, errorMessage: $errorMessage, authRepository: $authRepository, userEmailController: $userEmailController, passwordController: $passwordController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.userDto, userDto) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isSuccessful, isSuccessful) &&
            const DeepCollectionEquality().equals(other.isFailed, isFailed) &&
            const DeepCollectionEquality()
                .equals(other.isLoggedIn, isLoggedIn) &&
            const DeepCollectionEquality()
                .equals(other.obscurePassword, obscurePassword) &&
            const DeepCollectionEquality()
                .equals(other.errorEmail, errorEmail) &&
            const DeepCollectionEquality()
                .equals(other.errorPassword, errorPassword) &&
            const DeepCollectionEquality().equals(other.formKey, formKey) &&
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.authRepository, authRepository) &&
            const DeepCollectionEquality()
                .equals(other.userEmailController, userEmailController) &&
            const DeepCollectionEquality()
                .equals(other.passwordController, passwordController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userDto),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSuccessful),
      const DeepCollectionEquality().hash(isFailed),
      const DeepCollectionEquality().hash(isLoggedIn),
      const DeepCollectionEquality().hash(obscurePassword),
      const DeepCollectionEquality().hash(errorEmail),
      const DeepCollectionEquality().hash(errorPassword),
      const DeepCollectionEquality().hash(formKey),
      const DeepCollectionEquality().hash(appStateNotifier),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(authRepository),
      const DeepCollectionEquality().hash(userEmailController),
      const DeepCollectionEquality().hash(passwordController));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final UserDto? userDto,
      required final bool isLoading,
      required final bool isSuccessful,
      required final bool isFailed,
      required final bool isLoggedIn,
      required final bool obscurePassword,
      required final String errorEmail,
      required final String errorPassword,
      required final GlobalKey<FormState> formKey,
      required final AppStateNotifier appStateNotifier,
      required final String errorMessage,
      required final AuthRepository authRepository,
      required final TextEditingController userEmailController,
      required final TextEditingController passwordController}) = _$_LoginState;

  @override
  UserDto? get userDto;
  @override
  bool get isLoading;
  @override
  bool get isSuccessful;
  @override
  bool get isFailed;
  @override
  bool get isLoggedIn;
  @override
  bool get obscurePassword;
  @override
  String get errorEmail;
  @override
  String get errorPassword;
  @override
  GlobalKey<FormState> get formKey;
  @override
  AppStateNotifier get appStateNotifier;
  @override
  String get errorMessage;
  @override
  AuthRepository get authRepository;
  @override
  TextEditingController get userEmailController;
  @override
  TextEditingController get passwordController;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
