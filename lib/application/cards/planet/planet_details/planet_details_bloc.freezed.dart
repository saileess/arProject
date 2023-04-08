// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'planet_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlanetDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanetDetailsState state) emitFromAnywhere,
    required TResult Function() onLoad,
    required TResult Function() onClickBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlanetDetailsState state)? emitFromAnywhere,
    TResult Function()? onLoad,
    TResult Function()? onClickBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanetDetailsState state)? emitFromAnywhere,
    TResult Function()? onLoad,
    TResult Function()? onClickBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
    required TResult Function(_onLoad value) onLoad,
    required TResult Function(_OnClickBookmark value) onClickBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
    TResult Function(_OnClickBookmark value)? onClickBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
    TResult Function(_OnClickBookmark value)? onClickBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetDetailsEventCopyWith<$Res> {
  factory $PlanetDetailsEventCopyWith(
          PlanetDetailsEvent value, $Res Function(PlanetDetailsEvent) then) =
      _$PlanetDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlanetDetailsEventCopyWithImpl<$Res>
    implements $PlanetDetailsEventCopyWith<$Res> {
  _$PlanetDetailsEventCopyWithImpl(this._value, this._then);

  final PlanetDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(PlanetDetailsEvent) _then;
}

/// @nodoc
abstract class _$$_EmitFromAnywhereCopyWith<$Res> {
  factory _$$_EmitFromAnywhereCopyWith(
          _$_EmitFromAnywhere value, $Res Function(_$_EmitFromAnywhere) then) =
      __$$_EmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({PlanetDetailsState state});

  $PlanetDetailsStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EmitFromAnywhereCopyWithImpl<$Res>
    extends _$PlanetDetailsEventCopyWithImpl<$Res>
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
              as PlanetDetailsState,
    ));
  }

  @override
  $PlanetDetailsStateCopyWith<$Res> get state {
    return $PlanetDetailsStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EmitFromAnywhere implements _EmitFromAnywhere {
  const _$_EmitFromAnywhere({required this.state});

  @override
  final PlanetDetailsState state;

  @override
  String toString() {
    return 'PlanetDetailsEvent.emitFromAnywhere(state: $state)';
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
    required TResult Function(PlanetDetailsState state) emitFromAnywhere,
    required TResult Function() onLoad,
    required TResult Function() onClickBookmark,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlanetDetailsState state)? emitFromAnywhere,
    TResult Function()? onLoad,
    TResult Function()? onClickBookmark,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanetDetailsState state)? emitFromAnywhere,
    TResult Function()? onLoad,
    TResult Function()? onClickBookmark,
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
    required TResult Function(_OnClickBookmark value) onClickBookmark,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
    TResult Function(_OnClickBookmark value)? onClickBookmark,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
    TResult Function(_OnClickBookmark value)? onClickBookmark,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements PlanetDetailsEvent {
  const factory _EmitFromAnywhere({required final PlanetDetailsState state}) =
      _$_EmitFromAnywhere;

  PlanetDetailsState get state;
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
class __$$_onLoadCopyWithImpl<$Res>
    extends _$PlanetDetailsEventCopyWithImpl<$Res>
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
    return 'PlanetDetailsEvent.onLoad()';
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
    required TResult Function(PlanetDetailsState state) emitFromAnywhere,
    required TResult Function() onLoad,
    required TResult Function() onClickBookmark,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlanetDetailsState state)? emitFromAnywhere,
    TResult Function()? onLoad,
    TResult Function()? onClickBookmark,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanetDetailsState state)? emitFromAnywhere,
    TResult Function()? onLoad,
    TResult Function()? onClickBookmark,
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
    required TResult Function(_OnClickBookmark value) onClickBookmark,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
    TResult Function(_OnClickBookmark value)? onClickBookmark,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
    TResult Function(_OnClickBookmark value)? onClickBookmark,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class _onLoad implements PlanetDetailsEvent {
  const factory _onLoad() = _$_onLoad;
}

/// @nodoc
abstract class _$$_OnClickBookmarkCopyWith<$Res> {
  factory _$$_OnClickBookmarkCopyWith(
          _$_OnClickBookmark value, $Res Function(_$_OnClickBookmark) then) =
      __$$_OnClickBookmarkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnClickBookmarkCopyWithImpl<$Res>
    extends _$PlanetDetailsEventCopyWithImpl<$Res>
    implements _$$_OnClickBookmarkCopyWith<$Res> {
  __$$_OnClickBookmarkCopyWithImpl(
      _$_OnClickBookmark _value, $Res Function(_$_OnClickBookmark) _then)
      : super(_value, (v) => _then(v as _$_OnClickBookmark));

  @override
  _$_OnClickBookmark get _value => super._value as _$_OnClickBookmark;
}

/// @nodoc

class _$_OnClickBookmark implements _OnClickBookmark {
  const _$_OnClickBookmark();

  @override
  String toString() {
    return 'PlanetDetailsEvent.onClickBookmark()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnClickBookmark);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlanetDetailsState state) emitFromAnywhere,
    required TResult Function() onLoad,
    required TResult Function() onClickBookmark,
  }) {
    return onClickBookmark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PlanetDetailsState state)? emitFromAnywhere,
    TResult Function()? onLoad,
    TResult Function()? onClickBookmark,
  }) {
    return onClickBookmark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlanetDetailsState state)? emitFromAnywhere,
    TResult Function()? onLoad,
    TResult Function()? onClickBookmark,
    required TResult orElse(),
  }) {
    if (onClickBookmark != null) {
      return onClickBookmark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
    required TResult Function(_onLoad value) onLoad,
    required TResult Function(_OnClickBookmark value) onClickBookmark,
  }) {
    return onClickBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
    TResult Function(_OnClickBookmark value)? onClickBookmark,
  }) {
    return onClickBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    TResult Function(_onLoad value)? onLoad,
    TResult Function(_OnClickBookmark value)? onClickBookmark,
    required TResult orElse(),
  }) {
    if (onClickBookmark != null) {
      return onClickBookmark(this);
    }
    return orElse();
  }
}

abstract class _OnClickBookmark implements PlanetDetailsEvent {
  const factory _OnClickBookmark() = _$_OnClickBookmark;
}

/// @nodoc
mixin _$PlanetDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get planetID => throw _privateConstructorUsedError;
  bool get isBookmark => throw _privateConstructorUsedError;
  bool get isUpdatingBookmark => throw _privateConstructorUsedError;
  List<String> get userBoomarkList => throw _privateConstructorUsedError;
  PlanetRepository get planetRepository => throw _privateConstructorUsedError;
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;
  AuthRepository get authRepository => throw _privateConstructorUsedError;
  bool get isUserUpdated => throw _privateConstructorUsedError;
  PlanetDto? get planetDto => throw _privateConstructorUsedError;
  UserDto? get userDto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanetDetailsStateCopyWith<PlanetDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetDetailsStateCopyWith<$Res> {
  factory $PlanetDetailsStateCopyWith(
          PlanetDetailsState value, $Res Function(PlanetDetailsState) then) =
      _$PlanetDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isFailed,
      String errorMessage,
      String planetID,
      bool isBookmark,
      bool isUpdatingBookmark,
      List<String> userBoomarkList,
      PlanetRepository planetRepository,
      AppStateNotifier appStateNotifier,
      AuthRepository authRepository,
      bool isUserUpdated,
      PlanetDto? planetDto,
      UserDto? userDto});

  $PlanetDtoCopyWith<$Res>? get planetDto;
  $UserDtoCopyWith<$Res>? get userDto;
}

/// @nodoc
class _$PlanetDetailsStateCopyWithImpl<$Res>
    implements $PlanetDetailsStateCopyWith<$Res> {
  _$PlanetDetailsStateCopyWithImpl(this._value, this._then);

  final PlanetDetailsState _value;
  // ignore: unused_field
  final $Res Function(PlanetDetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
    Object? planetID = freezed,
    Object? isBookmark = freezed,
    Object? isUpdatingBookmark = freezed,
    Object? userBoomarkList = freezed,
    Object? planetRepository = freezed,
    Object? appStateNotifier = freezed,
    Object? authRepository = freezed,
    Object? isUserUpdated = freezed,
    Object? planetDto = freezed,
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
      planetID: planetID == freezed
          ? _value.planetID
          : planetID // ignore: cast_nullable_to_non_nullable
              as String,
      isBookmark: isBookmark == freezed
          ? _value.isBookmark
          : isBookmark // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdatingBookmark: isUpdatingBookmark == freezed
          ? _value.isUpdatingBookmark
          : isUpdatingBookmark // ignore: cast_nullable_to_non_nullable
              as bool,
      userBoomarkList: userBoomarkList == freezed
          ? _value.userBoomarkList
          : userBoomarkList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      planetRepository: planetRepository == freezed
          ? _value.planetRepository
          : planetRepository // ignore: cast_nullable_to_non_nullable
              as PlanetRepository,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
      isUserUpdated: isUserUpdated == freezed
          ? _value.isUserUpdated
          : isUserUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      planetDto: planetDto == freezed
          ? _value.planetDto
          : planetDto // ignore: cast_nullable_to_non_nullable
              as PlanetDto?,
      userDto: userDto == freezed
          ? _value.userDto
          : userDto // ignore: cast_nullable_to_non_nullable
              as UserDto?,
    ));
  }

  @override
  $PlanetDtoCopyWith<$Res>? get planetDto {
    if (_value.planetDto == null) {
      return null;
    }

    return $PlanetDtoCopyWith<$Res>(_value.planetDto!, (value) {
      return _then(_value.copyWith(planetDto: value));
    });
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
abstract class _$$_PlanetDetailsStateCopyWith<$Res>
    implements $PlanetDetailsStateCopyWith<$Res> {
  factory _$$_PlanetDetailsStateCopyWith(_$_PlanetDetailsState value,
          $Res Function(_$_PlanetDetailsState) then) =
      __$$_PlanetDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isFailed,
      String errorMessage,
      String planetID,
      bool isBookmark,
      bool isUpdatingBookmark,
      List<String> userBoomarkList,
      PlanetRepository planetRepository,
      AppStateNotifier appStateNotifier,
      AuthRepository authRepository,
      bool isUserUpdated,
      PlanetDto? planetDto,
      UserDto? userDto});

  @override
  $PlanetDtoCopyWith<$Res>? get planetDto;
  @override
  $UserDtoCopyWith<$Res>? get userDto;
}

/// @nodoc
class __$$_PlanetDetailsStateCopyWithImpl<$Res>
    extends _$PlanetDetailsStateCopyWithImpl<$Res>
    implements _$$_PlanetDetailsStateCopyWith<$Res> {
  __$$_PlanetDetailsStateCopyWithImpl(
      _$_PlanetDetailsState _value, $Res Function(_$_PlanetDetailsState) _then)
      : super(_value, (v) => _then(v as _$_PlanetDetailsState));

  @override
  _$_PlanetDetailsState get _value => super._value as _$_PlanetDetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
    Object? planetID = freezed,
    Object? isBookmark = freezed,
    Object? isUpdatingBookmark = freezed,
    Object? userBoomarkList = freezed,
    Object? planetRepository = freezed,
    Object? appStateNotifier = freezed,
    Object? authRepository = freezed,
    Object? isUserUpdated = freezed,
    Object? planetDto = freezed,
    Object? userDto = freezed,
  }) {
    return _then(_$_PlanetDetailsState(
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
      planetID: planetID == freezed
          ? _value.planetID
          : planetID // ignore: cast_nullable_to_non_nullable
              as String,
      isBookmark: isBookmark == freezed
          ? _value.isBookmark
          : isBookmark // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdatingBookmark: isUpdatingBookmark == freezed
          ? _value.isUpdatingBookmark
          : isUpdatingBookmark // ignore: cast_nullable_to_non_nullable
              as bool,
      userBoomarkList: userBoomarkList == freezed
          ? _value._userBoomarkList
          : userBoomarkList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      planetRepository: planetRepository == freezed
          ? _value.planetRepository
          : planetRepository // ignore: cast_nullable_to_non_nullable
              as PlanetRepository,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
      isUserUpdated: isUserUpdated == freezed
          ? _value.isUserUpdated
          : isUserUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      planetDto: planetDto == freezed
          ? _value.planetDto
          : planetDto // ignore: cast_nullable_to_non_nullable
              as PlanetDto?,
      userDto: userDto == freezed
          ? _value.userDto
          : userDto // ignore: cast_nullable_to_non_nullable
              as UserDto?,
    ));
  }
}

/// @nodoc

class _$_PlanetDetailsState implements _PlanetDetailsState {
  const _$_PlanetDetailsState(
      {required this.isLoading,
      required this.isSuccess,
      required this.isFailed,
      required this.errorMessage,
      required this.planetID,
      required this.isBookmark,
      required this.isUpdatingBookmark,
      required final List<String> userBoomarkList,
      required this.planetRepository,
      required this.appStateNotifier,
      required this.authRepository,
      required this.isUserUpdated,
      this.planetDto,
      this.userDto})
      : _userBoomarkList = userBoomarkList;

  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final bool isFailed;
  @override
  final String errorMessage;
  @override
  final String planetID;
  @override
  final bool isBookmark;
  @override
  final bool isUpdatingBookmark;
  final List<String> _userBoomarkList;
  @override
  List<String> get userBoomarkList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userBoomarkList);
  }

  @override
  final PlanetRepository planetRepository;
  @override
  final AppStateNotifier appStateNotifier;
  @override
  final AuthRepository authRepository;
  @override
  final bool isUserUpdated;
  @override
  final PlanetDto? planetDto;
  @override
  final UserDto? userDto;

  @override
  String toString() {
    return 'PlanetDetailsState(isLoading: $isLoading, isSuccess: $isSuccess, isFailed: $isFailed, errorMessage: $errorMessage, planetID: $planetID, isBookmark: $isBookmark, isUpdatingBookmark: $isUpdatingBookmark, userBoomarkList: $userBoomarkList, planetRepository: $planetRepository, appStateNotifier: $appStateNotifier, authRepository: $authRepository, isUserUpdated: $isUserUpdated, planetDto: $planetDto, userDto: $userDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanetDetailsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality().equals(other.isFailed, isFailed) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.planetID, planetID) &&
            const DeepCollectionEquality()
                .equals(other.isBookmark, isBookmark) &&
            const DeepCollectionEquality()
                .equals(other.isUpdatingBookmark, isUpdatingBookmark) &&
            const DeepCollectionEquality()
                .equals(other._userBoomarkList, _userBoomarkList) &&
            const DeepCollectionEquality()
                .equals(other.planetRepository, planetRepository) &&
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier) &&
            const DeepCollectionEquality()
                .equals(other.authRepository, authRepository) &&
            const DeepCollectionEquality()
                .equals(other.isUserUpdated, isUserUpdated) &&
            const DeepCollectionEquality().equals(other.planetDto, planetDto) &&
            const DeepCollectionEquality().equals(other.userDto, userDto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(isFailed),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(planetID),
      const DeepCollectionEquality().hash(isBookmark),
      const DeepCollectionEquality().hash(isUpdatingBookmark),
      const DeepCollectionEquality().hash(_userBoomarkList),
      const DeepCollectionEquality().hash(planetRepository),
      const DeepCollectionEquality().hash(appStateNotifier),
      const DeepCollectionEquality().hash(authRepository),
      const DeepCollectionEquality().hash(isUserUpdated),
      const DeepCollectionEquality().hash(planetDto),
      const DeepCollectionEquality().hash(userDto));

  @JsonKey(ignore: true)
  @override
  _$$_PlanetDetailsStateCopyWith<_$_PlanetDetailsState> get copyWith =>
      __$$_PlanetDetailsStateCopyWithImpl<_$_PlanetDetailsState>(
          this, _$identity);
}

abstract class _PlanetDetailsState implements PlanetDetailsState {
  const factory _PlanetDetailsState(
      {required final bool isLoading,
      required final bool isSuccess,
      required final bool isFailed,
      required final String errorMessage,
      required final String planetID,
      required final bool isBookmark,
      required final bool isUpdatingBookmark,
      required final List<String> userBoomarkList,
      required final PlanetRepository planetRepository,
      required final AppStateNotifier appStateNotifier,
      required final AuthRepository authRepository,
      required final bool isUserUpdated,
      final PlanetDto? planetDto,
      final UserDto? userDto}) = _$_PlanetDetailsState;

  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  bool get isFailed;
  @override
  String get errorMessage;
  @override
  String get planetID;
  @override
  bool get isBookmark;
  @override
  bool get isUpdatingBookmark;
  @override
  List<String> get userBoomarkList;
  @override
  PlanetRepository get planetRepository;
  @override
  AppStateNotifier get appStateNotifier;
  @override
  AuthRepository get authRepository;
  @override
  bool get isUserUpdated;
  @override
  PlanetDto? get planetDto;
  @override
  UserDto? get userDto;
  @override
  @JsonKey(ignore: true)
  _$$_PlanetDetailsStateCopyWith<_$_PlanetDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
