// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bookmark_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookmarkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onLoad,
    required TResult Function(BookmarkState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoad,
    TResult Function(BookmarkState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoad,
    TResult Function(BookmarkState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkEventCopyWith<$Res> {
  factory $BookmarkEventCopyWith(
          BookmarkEvent value, $Res Function(BookmarkEvent) then) =
      _$BookmarkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookmarkEventCopyWithImpl<$Res>
    implements $BookmarkEventCopyWith<$Res> {
  _$BookmarkEventCopyWithImpl(this._value, this._then);

  final BookmarkEvent _value;
  // ignore: unused_field
  final $Res Function(BookmarkEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$BookmarkEventCopyWithImpl<$Res>
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
    return 'BookmarkEvent.started()';
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
    required TResult Function() onLoad,
    required TResult Function(BookmarkState state) emitFromAnywhere,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoad,
    TResult Function(BookmarkState state)? emitFromAnywhere,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoad,
    TResult Function(BookmarkState state)? emitFromAnywhere,
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
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BookmarkEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_OnLoadCopyWith<$Res> {
  factory _$$_OnLoadCopyWith(_$_OnLoad value, $Res Function(_$_OnLoad) then) =
      __$$_OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnLoadCopyWithImpl<$Res> extends _$BookmarkEventCopyWithImpl<$Res>
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
    return 'BookmarkEvent.onLoad()';
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
    required TResult Function() started,
    required TResult Function() onLoad,
    required TResult Function(BookmarkState state) emitFromAnywhere,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoad,
    TResult Function(BookmarkState state)? emitFromAnywhere,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoad,
    TResult Function(BookmarkState state)? emitFromAnywhere,
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
    required TResult Function(_Started value) started,
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class _OnLoad implements BookmarkEvent {
  const factory _OnLoad() = _$_OnLoad;
}

/// @nodoc
abstract class _$$_EmitFromAnywhereCopyWith<$Res> {
  factory _$$_EmitFromAnywhereCopyWith(
          _$_EmitFromAnywhere value, $Res Function(_$_EmitFromAnywhere) then) =
      __$$_EmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({BookmarkState state});

  $BookmarkStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EmitFromAnywhereCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res>
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
              as BookmarkState,
    ));
  }

  @override
  $BookmarkStateCopyWith<$Res> get state {
    return $BookmarkStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EmitFromAnywhere implements _EmitFromAnywhere {
  const _$_EmitFromAnywhere({required this.state});

  @override
  final BookmarkState state;

  @override
  String toString() {
    return 'BookmarkEvent.emitFromAnywhere(state: $state)';
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
    required TResult Function() started,
    required TResult Function() onLoad,
    required TResult Function(BookmarkState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoad,
    TResult Function(BookmarkState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onLoad,
    TResult Function(BookmarkState state)? emitFromAnywhere,
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
    required TResult Function(_Started value) started,
    required TResult Function(_OnLoad value) onLoad,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnLoad value)? onLoad,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements BookmarkEvent {
  const factory _EmitFromAnywhere({required final BookmarkState state}) =
      _$_EmitFromAnywhere;

  BookmarkState get state;
  @JsonKey(ignore: true)
  _$$_EmitFromAnywhereCopyWith<_$_EmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookmarkState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;
  PlanetRepository get planetRepository => throw _privateConstructorUsedError;
  List<PlanetDto> get userBookmarkList => throw _privateConstructorUsedError;
  UserDto? get userDto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkStateCopyWith<BookmarkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
          BookmarkState value, $Res Function(BookmarkState) then) =
      _$BookmarkStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isFailed,
      String errorMessage,
      AppStateNotifier appStateNotifier,
      ScrollController scrollController,
      PlanetRepository planetRepository,
      List<PlanetDto> userBookmarkList,
      UserDto? userDto});

  $UserDtoCopyWith<$Res>? get userDto;
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  final BookmarkState _value;
  // ignore: unused_field
  final $Res Function(BookmarkState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
    Object? appStateNotifier = freezed,
    Object? scrollController = freezed,
    Object? planetRepository = freezed,
    Object? userBookmarkList = freezed,
    Object? userDto = freezed,
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
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      planetRepository: planetRepository == freezed
          ? _value.planetRepository
          : planetRepository // ignore: cast_nullable_to_non_nullable
              as PlanetRepository,
      userBookmarkList: userBookmarkList == freezed
          ? _value.userBookmarkList
          : userBookmarkList // ignore: cast_nullable_to_non_nullable
              as List<PlanetDto>,
      userDto: userDto == freezed
          ? _value.userDto
          : userDto // ignore: cast_nullable_to_non_nullable
              as UserDto?,
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
abstract class _$$_BookmarkStateCopyWith<$Res>
    implements $BookmarkStateCopyWith<$Res> {
  factory _$$_BookmarkStateCopyWith(
          _$_BookmarkState value, $Res Function(_$_BookmarkState) then) =
      __$$_BookmarkStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isFailed,
      String errorMessage,
      AppStateNotifier appStateNotifier,
      ScrollController scrollController,
      PlanetRepository planetRepository,
      List<PlanetDto> userBookmarkList,
      UserDto? userDto});

  @override
  $UserDtoCopyWith<$Res>? get userDto;
}

/// @nodoc
class __$$_BookmarkStateCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res>
    implements _$$_BookmarkStateCopyWith<$Res> {
  __$$_BookmarkStateCopyWithImpl(
      _$_BookmarkState _value, $Res Function(_$_BookmarkState) _then)
      : super(_value, (v) => _then(v as _$_BookmarkState));

  @override
  _$_BookmarkState get _value => super._value as _$_BookmarkState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
    Object? appStateNotifier = freezed,
    Object? scrollController = freezed,
    Object? planetRepository = freezed,
    Object? userBookmarkList = freezed,
    Object? userDto = freezed,
  }) {
    return _then(_$_BookmarkState(
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
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      planetRepository: planetRepository == freezed
          ? _value.planetRepository
          : planetRepository // ignore: cast_nullable_to_non_nullable
              as PlanetRepository,
      userBookmarkList: userBookmarkList == freezed
          ? _value._userBookmarkList
          : userBookmarkList // ignore: cast_nullable_to_non_nullable
              as List<PlanetDto>,
      userDto: userDto == freezed
          ? _value.userDto
          : userDto // ignore: cast_nullable_to_non_nullable
              as UserDto?,
    ));
  }
}

/// @nodoc

class _$_BookmarkState implements _BookmarkState {
  const _$_BookmarkState(
      {required this.isLoading,
      required this.isSuccess,
      required this.isFailed,
      required this.errorMessage,
      required this.appStateNotifier,
      required this.scrollController,
      required this.planetRepository,
      required final List<PlanetDto> userBookmarkList,
      this.userDto})
      : _userBookmarkList = userBookmarkList;

  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final bool isFailed;
  @override
  final String errorMessage;
  @override
  final AppStateNotifier appStateNotifier;
  @override
  final ScrollController scrollController;
  @override
  final PlanetRepository planetRepository;
  final List<PlanetDto> _userBookmarkList;
  @override
  List<PlanetDto> get userBookmarkList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userBookmarkList);
  }

  @override
  final UserDto? userDto;

  @override
  String toString() {
    return 'BookmarkState(isLoading: $isLoading, isSuccess: $isSuccess, isFailed: $isFailed, errorMessage: $errorMessage, appStateNotifier: $appStateNotifier, scrollController: $scrollController, planetRepository: $planetRepository, userBookmarkList: $userBookmarkList, userDto: $userDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookmarkState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality().equals(other.isFailed, isFailed) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier) &&
            const DeepCollectionEquality()
                .equals(other.scrollController, scrollController) &&
            const DeepCollectionEquality()
                .equals(other.planetRepository, planetRepository) &&
            const DeepCollectionEquality()
                .equals(other._userBookmarkList, _userBookmarkList) &&
            const DeepCollectionEquality().equals(other.userDto, userDto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(isFailed),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(appStateNotifier),
      const DeepCollectionEquality().hash(scrollController),
      const DeepCollectionEquality().hash(planetRepository),
      const DeepCollectionEquality().hash(_userBookmarkList),
      const DeepCollectionEquality().hash(userDto));

  @JsonKey(ignore: true)
  @override
  _$$_BookmarkStateCopyWith<_$_BookmarkState> get copyWith =>
      __$$_BookmarkStateCopyWithImpl<_$_BookmarkState>(this, _$identity);
}

abstract class _BookmarkState implements BookmarkState {
  const factory _BookmarkState(
      {required final bool isLoading,
      required final bool isSuccess,
      required final bool isFailed,
      required final String errorMessage,
      required final AppStateNotifier appStateNotifier,
      required final ScrollController scrollController,
      required final PlanetRepository planetRepository,
      required final List<PlanetDto> userBookmarkList,
      final UserDto? userDto}) = _$_BookmarkState;

  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  bool get isFailed;
  @override
  String get errorMessage;
  @override
  AppStateNotifier get appStateNotifier;
  @override
  ScrollController get scrollController;
  @override
  PlanetRepository get planetRepository;
  @override
  List<PlanetDto> get userBookmarkList;
  @override
  UserDto? get userDto;
  @override
  @JsonKey(ignore: true)
  _$$_BookmarkStateCopyWith<_$_BookmarkState> get copyWith =>
      throw _privateConstructorUsedError;
}
