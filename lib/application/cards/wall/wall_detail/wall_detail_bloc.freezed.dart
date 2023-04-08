// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wall_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WallDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WallDetailState state) emitFromAnywhere,
    required TResult Function() onLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WallDetailState state)? emitFromAnywhere,
    TResult Function()? onLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WallDetailState state)? emitFromAnywhere,
    TResult Function()? onLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
    required TResult Function(_onLoad value) onLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallDetailEventCopyWith<$Res> {
  factory $WallDetailEventCopyWith(
          WallDetailEvent value, $Res Function(WallDetailEvent) then) =
      _$WallDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WallDetailEventCopyWithImpl<$Res>
    implements $WallDetailEventCopyWith<$Res> {
  _$WallDetailEventCopyWithImpl(this._value, this._then);

  final WallDetailEvent _value;
  // ignore: unused_field
  final $Res Function(WallDetailEvent) _then;
}

/// @nodoc
abstract class _$$_EmitFromAnywhereCopyWith<$Res> {
  factory _$$_EmitFromAnywhereCopyWith(
          _$_EmitFromAnywhere value, $Res Function(_$_EmitFromAnywhere) then) =
      __$$_EmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({WallDetailState state});

  $WallDetailStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EmitFromAnywhereCopyWithImpl<$Res>
    extends _$WallDetailEventCopyWithImpl<$Res>
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
              as WallDetailState,
    ));
  }

  @override
  $WallDetailStateCopyWith<$Res> get state {
    return $WallDetailStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EmitFromAnywhere implements _EmitFromAnywhere {
  const _$_EmitFromAnywhere({required this.state});

  @override
  final WallDetailState state;

  @override
  String toString() {
    return 'WallDetailEvent.emitFromAnywhere(state: $state)';
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
    required TResult Function(WallDetailState state) emitFromAnywhere,
    required TResult Function() onLoad,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WallDetailState state)? emitFromAnywhere,
    TResult Function()? onLoad,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WallDetailState state)? emitFromAnywhere,
    TResult Function()? onLoad,
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
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
    required TResult Function(_onLoad value) onLoad,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements WallDetailEvent {
  const factory _EmitFromAnywhere({required final WallDetailState state}) =
      _$_EmitFromAnywhere;

  WallDetailState get state;
  @JsonKey(ignore: true)
  _$$_EmitFromAnywhereCopyWith<_$_EmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_onLoadCopyWith<$Res> {
  factory _$$_onLoadCopyWith(_$_onLoad value, $Res Function(_$_onLoad) then) =
      __$$_onLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_onLoadCopyWithImpl<$Res> extends _$WallDetailEventCopyWithImpl<$Res>
    implements _$$_onLoadCopyWith<$Res> {
  __$$_onLoadCopyWithImpl(_$_onLoad _value, $Res Function(_$_onLoad) _then)
      : super(_value, (v) => _then(v as _$_onLoad));

  @override
  _$_onLoad get _value => super._value as _$_onLoad;
}

/// @nodoc

class _$_onLoad implements _onLoad {
  const _$_onLoad();

  @override
  String toString() {
    return 'WallDetailEvent.onLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_onLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WallDetailState state) emitFromAnywhere,
    required TResult Function() onLoad,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WallDetailState state)? emitFromAnywhere,
    TResult Function()? onLoad,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WallDetailState state)? emitFromAnywhere,
    TResult Function()? onLoad,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
    required TResult Function(_onLoad value) onLoad,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class _onLoad implements WallDetailEvent {
  const factory _onLoad() = _$_onLoad;
}

/// @nodoc
mixin _$WallDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get wallID => throw _privateConstructorUsedError;
  WallRepository get wallRepository => throw _privateConstructorUsedError;
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;
  WallDto? get wallDto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WallDetailStateCopyWith<WallDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallDetailStateCopyWith<$Res> {
  factory $WallDetailStateCopyWith(
          WallDetailState value, $Res Function(WallDetailState) then) =
      _$WallDetailStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isFailed,
      String errorMessage,
      String wallID,
      WallRepository wallRepository,
      AppStateNotifier appStateNotifier,
      WallDto? wallDto});

  $WallDtoCopyWith<$Res>? get wallDto;
}

/// @nodoc
class _$WallDetailStateCopyWithImpl<$Res>
    implements $WallDetailStateCopyWith<$Res> {
  _$WallDetailStateCopyWithImpl(this._value, this._then);

  final WallDetailState _value;
  // ignore: unused_field
  final $Res Function(WallDetailState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
    Object? wallID = freezed,
    Object? wallRepository = freezed,
    Object? appStateNotifier = freezed,
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
      wallID: wallID == freezed
          ? _value.wallID
          : wallID // ignore: cast_nullable_to_non_nullable
              as String,
      wallRepository: wallRepository == freezed
          ? _value.wallRepository
          : wallRepository // ignore: cast_nullable_to_non_nullable
              as WallRepository,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
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
abstract class _$$_WallDetailStateCopyWith<$Res>
    implements $WallDetailStateCopyWith<$Res> {
  factory _$$_WallDetailStateCopyWith(
          _$_WallDetailState value, $Res Function(_$_WallDetailState) then) =
      __$$_WallDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isFailed,
      String errorMessage,
      String wallID,
      WallRepository wallRepository,
      AppStateNotifier appStateNotifier,
      WallDto? wallDto});

  @override
  $WallDtoCopyWith<$Res>? get wallDto;
}

/// @nodoc
class __$$_WallDetailStateCopyWithImpl<$Res>
    extends _$WallDetailStateCopyWithImpl<$Res>
    implements _$$_WallDetailStateCopyWith<$Res> {
  __$$_WallDetailStateCopyWithImpl(
      _$_WallDetailState _value, $Res Function(_$_WallDetailState) _then)
      : super(_value, (v) => _then(v as _$_WallDetailState));

  @override
  _$_WallDetailState get _value => super._value as _$_WallDetailState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
    Object? wallID = freezed,
    Object? wallRepository = freezed,
    Object? appStateNotifier = freezed,
    Object? wallDto = freezed,
  }) {
    return _then(_$_WallDetailState(
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
      wallID: wallID == freezed
          ? _value.wallID
          : wallID // ignore: cast_nullable_to_non_nullable
              as String,
      wallRepository: wallRepository == freezed
          ? _value.wallRepository
          : wallRepository // ignore: cast_nullable_to_non_nullable
              as WallRepository,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      wallDto: wallDto == freezed
          ? _value.wallDto
          : wallDto // ignore: cast_nullable_to_non_nullable
              as WallDto?,
    ));
  }
}

/// @nodoc

class _$_WallDetailState implements _WallDetailState {
  const _$_WallDetailState(
      {required this.isLoading,
      required this.isSuccess,
      required this.isFailed,
      required this.errorMessage,
      required this.wallID,
      required this.wallRepository,
      required this.appStateNotifier,
      this.wallDto});

  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final bool isFailed;
  @override
  final String errorMessage;
  @override
  final String wallID;
  @override
  final WallRepository wallRepository;
  @override
  final AppStateNotifier appStateNotifier;
  @override
  final WallDto? wallDto;

  @override
  String toString() {
    return 'WallDetailState(isLoading: $isLoading, isSuccess: $isSuccess, isFailed: $isFailed, errorMessage: $errorMessage, wallID: $wallID, wallRepository: $wallRepository, appStateNotifier: $appStateNotifier, wallDto: $wallDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WallDetailState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality().equals(other.isFailed, isFailed) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.wallID, wallID) &&
            const DeepCollectionEquality()
                .equals(other.wallRepository, wallRepository) &&
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier) &&
            const DeepCollectionEquality().equals(other.wallDto, wallDto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(isFailed),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(wallID),
      const DeepCollectionEquality().hash(wallRepository),
      const DeepCollectionEquality().hash(appStateNotifier),
      const DeepCollectionEquality().hash(wallDto));

  @JsonKey(ignore: true)
  @override
  _$$_WallDetailStateCopyWith<_$_WallDetailState> get copyWith =>
      __$$_WallDetailStateCopyWithImpl<_$_WallDetailState>(this, _$identity);
}

abstract class _WallDetailState implements WallDetailState {
  const factory _WallDetailState(
      {required final bool isLoading,
      required final bool isSuccess,
      required final bool isFailed,
      required final String errorMessage,
      required final String wallID,
      required final WallRepository wallRepository,
      required final AppStateNotifier appStateNotifier,
      final WallDto? wallDto}) = _$_WallDetailState;

  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  bool get isFailed;
  @override
  String get errorMessage;
  @override
  String get wallID;
  @override
  WallRepository get wallRepository;
  @override
  AppStateNotifier get appStateNotifier;
  @override
  WallDto? get wallDto;
  @override
  @JsonKey(ignore: true)
  _$$_WallDetailStateCopyWith<_$_WallDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
