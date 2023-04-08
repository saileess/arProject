// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wall_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WallEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onload,
    required TResult Function(WallState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onload,
    TResult Function(WallState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onload,
    TResult Function(WallState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoad value) onload,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnLoad value)? onload,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoad value)? onload,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallEventCopyWith<$Res> {
  factory $WallEventCopyWith(WallEvent value, $Res Function(WallEvent) then) =
      _$WallEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WallEventCopyWithImpl<$Res> implements $WallEventCopyWith<$Res> {
  _$WallEventCopyWithImpl(this._value, this._then);

  final WallEvent _value;
  // ignore: unused_field
  final $Res Function(WallEvent) _then;
}

/// @nodoc
abstract class _$$_OnLoadCopyWith<$Res> {
  factory _$$_OnLoadCopyWith(_$_OnLoad value, $Res Function(_$_OnLoad) then) =
      __$$_OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnLoadCopyWithImpl<$Res> extends _$WallEventCopyWithImpl<$Res>
    implements _$$_OnLoadCopyWith<$Res> {
  __$$_OnLoadCopyWithImpl(_$_OnLoad _value, $Res Function(_$_OnLoad) _then)
      : super(_value, (v) => _then(v as _$_OnLoad));

  @override
  _$_OnLoad get _value => super._value as _$_OnLoad;
}

/// @nodoc

class _$_OnLoad implements _OnLoad {
  const _$_OnLoad();

  @override
  String toString() {
    return 'WallEvent.onload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onload,
    required TResult Function(WallState state) emitFromAnywhere,
  }) {
    return onload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onload,
    TResult Function(WallState state)? emitFromAnywhere,
  }) {
    return onload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onload,
    TResult Function(WallState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onload != null) {
      return onload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoad value) onload,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnLoad value)? onload,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoad value)? onload,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onload != null) {
      return onload(this);
    }
    return orElse();
  }
}

abstract class _OnLoad implements WallEvent {
  const factory _OnLoad() = _$_OnLoad;
}

/// @nodoc
abstract class _$$_EmitFromAnywhereCopyWith<$Res> {
  factory _$$_EmitFromAnywhereCopyWith(
          _$_EmitFromAnywhere value, $Res Function(_$_EmitFromAnywhere) then) =
      __$$_EmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({WallState state});

  $WallStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EmitFromAnywhereCopyWithImpl<$Res>
    extends _$WallEventCopyWithImpl<$Res>
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
              as WallState,
    ));
  }

  @override
  $WallStateCopyWith<$Res> get state {
    return $WallStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EmitFromAnywhere implements _EmitFromAnywhere {
  const _$_EmitFromAnywhere({required this.state});

  @override
  final WallState state;

  @override
  String toString() {
    return 'WallEvent.emitFromAnywhere(state: $state)';
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
    required TResult Function() onload,
    required TResult Function(WallState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onload,
    TResult Function(WallState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onload,
    TResult Function(WallState state)? emitFromAnywhere,
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
    required TResult Function(_OnLoad value) onload,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnLoad value)? onload,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoad value)? onload,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements WallEvent {
  const factory _EmitFromAnywhere({required final WallState state}) =
      _$_EmitFromAnywhere;

  WallState get state;
  @JsonKey(ignore: true)
  _$$_EmitFromAnywhereCopyWith<_$_EmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WallState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<WallDto> get ListOfTopics => throw _privateConstructorUsedError;
  WallRepository get wallRepository => throw _privateConstructorUsedError;
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;
  WallDto? get wallDto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WallStateCopyWith<WallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallStateCopyWith<$Res> {
  factory $WallStateCopyWith(WallState value, $Res Function(WallState) then) =
      _$WallStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isFailed,
      String errorMessage,
      List<WallDto> ListOfTopics,
      WallRepository wallRepository,
      AppStateNotifier appStateNotifier,
      ScrollController scrollController,
      WallDto? wallDto});

  $WallDtoCopyWith<$Res>? get wallDto;
}

/// @nodoc
class _$WallStateCopyWithImpl<$Res> implements $WallStateCopyWith<$Res> {
  _$WallStateCopyWithImpl(this._value, this._then);

  final WallState _value;
  // ignore: unused_field
  final $Res Function(WallState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
    Object? ListOfTopics = freezed,
    Object? wallRepository = freezed,
    Object? appStateNotifier = freezed,
    Object? scrollController = freezed,
    Object? wallDto = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      ListOfTopics: ListOfTopics == freezed
          ? _value.ListOfTopics
          : ListOfTopics // ignore: cast_nullable_to_non_nullable
              as List<WallDto>,
      wallRepository: wallRepository == freezed
          ? _value.wallRepository
          : wallRepository // ignore: cast_nullable_to_non_nullable
              as WallRepository,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      wallDto: wallDto == freezed
          ? _value.wallDto
          : wallDto // ignore: cast_nullable_to_non_nullable
              as WallDto?,
    ));
  }

  @override
  $WallDtoCopyWith<$Res>? get wallDto {
    if (_value.wallDto == null) {
      return null;
    }

    return $WallDtoCopyWith<$Res>(_value.wallDto!, (value) {
      return _then(_value.copyWith(wallDto: value));
    });
  }
}

/// @nodoc
abstract class _$$_WallStateCopyWith<$Res> implements $WallStateCopyWith<$Res> {
  factory _$$_WallStateCopyWith(
          _$_WallState value, $Res Function(_$_WallState) then) =
      __$$_WallStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isFailed,
      String errorMessage,
      List<WallDto> ListOfTopics,
      WallRepository wallRepository,
      AppStateNotifier appStateNotifier,
      ScrollController scrollController,
      WallDto? wallDto});

  @override
  $WallDtoCopyWith<$Res>? get wallDto;
}

/// @nodoc
class __$$_WallStateCopyWithImpl<$Res> extends _$WallStateCopyWithImpl<$Res>
    implements _$$_WallStateCopyWith<$Res> {
  __$$_WallStateCopyWithImpl(
      _$_WallState _value, $Res Function(_$_WallState) _then)
      : super(_value, (v) => _then(v as _$_WallState));

  @override
  _$_WallState get _value => super._value as _$_WallState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
    Object? ListOfTopics = freezed,
    Object? wallRepository = freezed,
    Object? appStateNotifier = freezed,
    Object? scrollController = freezed,
    Object? wallDto = freezed,
  }) {
    return _then(_$_WallState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      ListOfTopics: ListOfTopics == freezed
          ? _value._ListOfTopics
          : ListOfTopics // ignore: cast_nullable_to_non_nullable
              as List<WallDto>,
      wallRepository: wallRepository == freezed
          ? _value.wallRepository
          : wallRepository // ignore: cast_nullable_to_non_nullable
              as WallRepository,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      wallDto: wallDto == freezed
          ? _value.wallDto
          : wallDto // ignore: cast_nullable_to_non_nullable
              as WallDto?,
    ));
  }
}

/// @nodoc

class _$_WallState implements _WallState {
  const _$_WallState(
      {required this.isLoading,
      required this.isSuccess,
      required this.isFailed,
      required this.errorMessage,
      required final List<WallDto> ListOfTopics,
      required this.wallRepository,
      required this.appStateNotifier,
      required this.scrollController,
      this.wallDto})
      : _ListOfTopics = ListOfTopics;

  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final bool isFailed;
  @override
  final String errorMessage;
  final List<WallDto> _ListOfTopics;
  @override
  List<WallDto> get ListOfTopics {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ListOfTopics);
  }

  @override
  final WallRepository wallRepository;
  @override
  final AppStateNotifier appStateNotifier;
  @override
  final ScrollController scrollController;
  @override
  final WallDto? wallDto;

  @override
  String toString() {
    return 'WallState(isLoading: $isLoading, isSuccess: $isSuccess, isFailed: $isFailed, errorMessage: $errorMessage, ListOfTopics: $ListOfTopics, wallRepository: $wallRepository, appStateNotifier: $appStateNotifier, scrollController: $scrollController, wallDto: $wallDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WallState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality().equals(other.isFailed, isFailed) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._ListOfTopics, _ListOfTopics) &&
            const DeepCollectionEquality()
                .equals(other.wallRepository, wallRepository) &&
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier) &&
            const DeepCollectionEquality()
                .equals(other.scrollController, scrollController) &&
            const DeepCollectionEquality().equals(other.wallDto, wallDto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(isFailed),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(_ListOfTopics),
      const DeepCollectionEquality().hash(wallRepository),
      const DeepCollectionEquality().hash(appStateNotifier),
      const DeepCollectionEquality().hash(scrollController),
      const DeepCollectionEquality().hash(wallDto));

  @JsonKey(ignore: true)
  @override
  _$$_WallStateCopyWith<_$_WallState> get copyWith =>
      __$$_WallStateCopyWithImpl<_$_WallState>(this, _$identity);
}

abstract class _WallState implements WallState {
  const factory _WallState(
      {required final bool isLoading,
      required final bool isSuccess,
      required final bool isFailed,
      required final String errorMessage,
      required final List<WallDto> ListOfTopics,
      required final WallRepository wallRepository,
      required final AppStateNotifier appStateNotifier,
      required final ScrollController scrollController,
      final WallDto? wallDto}) = _$_WallState;

  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  bool get isFailed;
  @override
  String get errorMessage;
  @override
  List<WallDto> get ListOfTopics;
  @override
  WallRepository get wallRepository;
  @override
  AppStateNotifier get appStateNotifier;
  @override
  ScrollController get scrollController;
  @override
  WallDto? get wallDto;
  @override
  @JsonKey(ignore: true)
  _$$_WallStateCopyWith<_$_WallState> get copyWith =>
      throw _privateConstructorUsedError;
}
