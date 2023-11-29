// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dropdown_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DropdownEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() dropdown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? dropdown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? dropdown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Dropdown value) dropdown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Dropdown value)? dropdown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Dropdown value)? dropdown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownEventCopyWith<$Res> {
  factory $DropdownEventCopyWith(
          DropdownEvent value, $Res Function(DropdownEvent) then) =
      _$DropdownEventCopyWithImpl<$Res, DropdownEvent>;
}

/// @nodoc
class _$DropdownEventCopyWithImpl<$Res, $Val extends DropdownEvent>
    implements $DropdownEventCopyWith<$Res> {
  _$DropdownEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$DropdownEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DropdownEvent.started()';
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
    required TResult Function() dropdown,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? dropdown,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? dropdown,
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
    required TResult Function(_Dropdown value) dropdown,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Dropdown value)? dropdown,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Dropdown value)? dropdown,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DropdownEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_DropdownCopyWith<$Res> {
  factory _$$_DropdownCopyWith(
          _$_Dropdown value, $Res Function(_$_Dropdown) then) =
      __$$_DropdownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DropdownCopyWithImpl<$Res>
    extends _$DropdownEventCopyWithImpl<$Res, _$_Dropdown>
    implements _$$_DropdownCopyWith<$Res> {
  __$$_DropdownCopyWithImpl(
      _$_Dropdown _value, $Res Function(_$_Dropdown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Dropdown implements _Dropdown {
  const _$_Dropdown();

  @override
  String toString() {
    return 'DropdownEvent.dropdown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Dropdown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() dropdown,
  }) {
    return dropdown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? dropdown,
  }) {
    return dropdown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? dropdown,
    required TResult orElse(),
  }) {
    if (dropdown != null) {
      return dropdown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Dropdown value) dropdown,
  }) {
    return dropdown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Dropdown value)? dropdown,
  }) {
    return dropdown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Dropdown value)? dropdown,
    required TResult orElse(),
  }) {
    if (dropdown != null) {
      return dropdown(this);
    }
    return orElse();
  }
}

abstract class _Dropdown implements DropdownEvent {
  const factory _Dropdown() = _$_Dropdown;
}

/// @nodoc
mixin _$DropdownState {
  bool get expandDropdown => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DropdownStateCopyWith<DropdownState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownStateCopyWith<$Res> {
  factory $DropdownStateCopyWith(
          DropdownState value, $Res Function(DropdownState) then) =
      _$DropdownStateCopyWithImpl<$Res, DropdownState>;
  @useResult
  $Res call({bool expandDropdown});
}

/// @nodoc
class _$DropdownStateCopyWithImpl<$Res, $Val extends DropdownState>
    implements $DropdownStateCopyWith<$Res> {
  _$DropdownStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expandDropdown = null,
  }) {
    return _then(_value.copyWith(
      expandDropdown: null == expandDropdown
          ? _value.expandDropdown
          : expandDropdown // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DropdownSateCopyWith<$Res>
    implements $DropdownStateCopyWith<$Res> {
  factory _$$_DropdownSateCopyWith(
          _$_DropdownSate value, $Res Function(_$_DropdownSate) then) =
      __$$_DropdownSateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool expandDropdown});
}

/// @nodoc
class __$$_DropdownSateCopyWithImpl<$Res>
    extends _$DropdownStateCopyWithImpl<$Res, _$_DropdownSate>
    implements _$$_DropdownSateCopyWith<$Res> {
  __$$_DropdownSateCopyWithImpl(
      _$_DropdownSate _value, $Res Function(_$_DropdownSate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expandDropdown = null,
  }) {
    return _then(_$_DropdownSate(
      expandDropdown: null == expandDropdown
          ? _value.expandDropdown
          : expandDropdown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DropdownSate implements _DropdownSate {
  const _$_DropdownSate({required this.expandDropdown});

  @override
  final bool expandDropdown;

  @override
  String toString() {
    return 'DropdownState(expandDropdown: $expandDropdown)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropdownSate &&
            (identical(other.expandDropdown, expandDropdown) ||
                other.expandDropdown == expandDropdown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expandDropdown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropdownSateCopyWith<_$_DropdownSate> get copyWith =>
      __$$_DropdownSateCopyWithImpl<_$_DropdownSate>(this, _$identity);
}

abstract class _DropdownSate implements DropdownState {
  const factory _DropdownSate({required final bool expandDropdown}) =
      _$_DropdownSate;

  @override
  bool get expandDropdown;
  @override
  @JsonKey(ignore: true)
  _$$_DropdownSateCopyWith<_$_DropdownSate> get copyWith =>
      throw _privateConstructorUsedError;
}
