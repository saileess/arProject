// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'planet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlanetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlanets,
    required TResult Function(PlanetState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPlanets,
    TResult Function(PlanetState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlanets,
    TResult Function(PlanetState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlanets value) fetchPlanets,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchPlanets value)? fetchPlanets,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlanets value)? fetchPlanets,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetEventCopyWith<$Res> {
  factory $PlanetEventCopyWith(
          PlanetEvent value, $Res Function(PlanetEvent) then) =
      _$PlanetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlanetEventCopyWithImpl<$Res> implements $PlanetEventCopyWith<$Res> {
  _$PlanetEventCopyWithImpl(this._value, this._then);

  final PlanetEvent _value;
  // ignore: unused_field
  final $Res Function(PlanetEvent) _then;
}

/// @nodoc
abstract class _$$_FetchPlanetsCopyWith<$Res> {
  factory _$$_FetchPlanetsCopyWith(
          _$_FetchPlanets value, $Res Function(_$_FetchPlanets) then) =
      __$$_FetchPlanetsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchPlanetsCopyWithImpl<$Res>
    extends _$PlanetEventCopyWithImpl<$Res>
    implements _$$_FetchPlanetsCopyWith<$Res> {
  __$$_FetchPlanetsCopyWithImpl(
      _$_FetchPlanets _value, $Res Function(_$_FetchPlanets) _then)
      : super(_value, (v) => _then(v as _$_FetchPlanets));

  @override
  _$_FetchPlanets get _value => super._value as _$_FetchPlanets;
}

/// @nodoc

class _$_FetchPlanets implements _FetchPlanets {
  const _$_FetchPlanets();

  @override
  String toString() {
    return 'PlanetEvent.fetchPlanets()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchPlanets);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlanets,
    required TResult Function(PlanetState state) emitFromAnywhere,
  }) {
    return fetchPlanets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPlanets,
    TResult Function(PlanetState state)? emitFromAnywhere,
  }) {
    return fetchPlanets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlanets,
    TResult Function(PlanetState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (fetchPlanets != null) {
      return fetchPlanets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlanets value) fetchPlanets,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return fetchPlanets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchPlanets value)? fetchPlanets,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return fetchPlanets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlanets value)? fetchPlanets,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (fetchPlanets != null) {
      return fetchPlanets(this);
    }
    return orElse();
  }
}

abstract class _FetchPlanets implements PlanetEvent {
  const factory _FetchPlanets() = _$_FetchPlanets;
}

/// @nodoc
abstract class _$$_EmitFromAnywhereCopyWith<$Res> {
  factory _$$_EmitFromAnywhereCopyWith(
          _$_EmitFromAnywhere value, $Res Function(_$_EmitFromAnywhere) then) =
      __$$_EmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({PlanetState state});

  $PlanetStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EmitFromAnywhereCopyWithImpl<$Res>
    extends _$PlanetEventCopyWithImpl<$Res>
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
              as PlanetState,
    ));
  }

  @override
  $PlanetStateCopyWith<$Res> get state {
    return $PlanetStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EmitFromAnywhere implements _EmitFromAnywhere {
  const _$_EmitFromAnywhere({required this.state});

  @override
  final PlanetState state;

  @override
  String toString() {
    return 'PlanetEvent.emitFromAnywhere(state: $state)';
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
    required TResult Function() fetchPlanets,
    required TResult Function(PlanetState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPlanets,
    TResult Function(PlanetState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlanets,
    TResult Function(PlanetState state)? emitFromAnywhere,
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
    required TResult Function(_FetchPlanets value) fetchPlanets,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchPlanets value)? fetchPlanets,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlanets value)? fetchPlanets,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements PlanetEvent {
  const factory _EmitFromAnywhere({required final PlanetState state}) =
      _$_EmitFromAnywhere;

  PlanetState get state;
  @JsonKey(ignore: true)
  _$$_EmitFromAnywhereCopyWith<_$_EmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlanetState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get smallPara => throw _privateConstructorUsedError;
  String get readTime => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<PlanetDto> get ListOfPlanets => throw _privateConstructorUsedError;
  PlanetRepository get planetRepository => throw _privateConstructorUsedError;
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;
  PlanetDto? get planetDto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanetStateCopyWith<PlanetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetStateCopyWith<$Res> {
  factory $PlanetStateCopyWith(
          PlanetState value, $Res Function(PlanetState) then) =
      _$PlanetStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isFailed,
      String id,
      String name,
      String smallPara,
      String readTime,
      String errorMessage,
      List<PlanetDto> ListOfPlanets,
      PlanetRepository planetRepository,
      AppStateNotifier appStateNotifier,
      ScrollController scrollController,
      PlanetDto? planetDto});

  $PlanetDtoCopyWith<$Res>? get planetDto;
}

/// @nodoc
class _$PlanetStateCopyWithImpl<$Res> implements $PlanetStateCopyWith<$Res> {
  _$PlanetStateCopyWithImpl(this._value, this._then);

  final PlanetState _value;
  // ignore: unused_field
  final $Res Function(PlanetState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? isFailed = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? smallPara = freezed,
    Object? readTime = freezed,
    Object? errorMessage = freezed,
    Object? ListOfPlanets = freezed,
    Object? planetRepository = freezed,
    Object? appStateNotifier = freezed,
    Object? scrollController = freezed,
    Object? planetDto = freezed,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      smallPara: smallPara == freezed
          ? _value.smallPara
          : smallPara // ignore: cast_nullable_to_non_nullable
              as String,
      readTime: readTime == freezed
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      ListOfPlanets: ListOfPlanets == freezed
          ? _value.ListOfPlanets
          : ListOfPlanets // ignore: cast_nullable_to_non_nullable
              as List<PlanetDto>,
      planetRepository: planetRepository == freezed
          ? _value.planetRepository
          : planetRepository // ignore: cast_nullable_to_non_nullable
              as PlanetRepository,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      planetDto: planetDto == freezed
          ? _value.planetDto
          : planetDto // ignore: cast_nullable_to_non_nullable
              as PlanetDto?,
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
}

/// @nodoc
abstract class _$$_PlanetStateCopyWith<$Res>
    implements $PlanetStateCopyWith<$Res> {
  factory _$$_PlanetStateCopyWith(
          _$_PlanetState value, $Res Function(_$_PlanetState) then) =
      __$$_PlanetStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isFailed,
      String id,
      String name,
      String smallPara,
      String readTime,
      String errorMessage,
      List<PlanetDto> ListOfPlanets,
      PlanetRepository planetRepository,
      AppStateNotifier appStateNotifier,
      ScrollController scrollController,
      PlanetDto? planetDto});

  @override
  $PlanetDtoCopyWith<$Res>? get planetDto;
}

/// @nodoc
class __$$_PlanetStateCopyWithImpl<$Res> extends _$PlanetStateCopyWithImpl<$Res>
    implements _$$_PlanetStateCopyWith<$Res> {
  __$$_PlanetStateCopyWithImpl(
      _$_PlanetState _value, $Res Function(_$_PlanetState) _then)
      : super(_value, (v) => _then(v as _$_PlanetState));

  @override
  _$_PlanetState get _value => super._value as _$_PlanetState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? isFailed = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? smallPara = freezed,
    Object? readTime = freezed,
    Object? errorMessage = freezed,
    Object? ListOfPlanets = freezed,
    Object? planetRepository = freezed,
    Object? appStateNotifier = freezed,
    Object? scrollController = freezed,
    Object? planetDto = freezed,
  }) {
    return _then(_$_PlanetState(
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      smallPara: smallPara == freezed
          ? _value.smallPara
          : smallPara // ignore: cast_nullable_to_non_nullable
              as String,
      readTime: readTime == freezed
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      ListOfPlanets: ListOfPlanets == freezed
          ? _value._ListOfPlanets
          : ListOfPlanets // ignore: cast_nullable_to_non_nullable
              as List<PlanetDto>,
      planetRepository: planetRepository == freezed
          ? _value.planetRepository
          : planetRepository // ignore: cast_nullable_to_non_nullable
              as PlanetRepository,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      scrollController: scrollController == freezed
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
      planetDto: planetDto == freezed
          ? _value.planetDto
          : planetDto // ignore: cast_nullable_to_non_nullable
              as PlanetDto?,
    ));
  }
}

/// @nodoc

class _$_PlanetState implements _PlanetState {
  const _$_PlanetState(
      {required this.isLoading,
      required this.isSuccess,
      required this.isFailed,
      required this.id,
      required this.name,
      required this.smallPara,
      required this.readTime,
      required this.errorMessage,
      required final List<PlanetDto> ListOfPlanets,
      required this.planetRepository,
      required this.appStateNotifier,
      required this.scrollController,
      this.planetDto})
      : _ListOfPlanets = ListOfPlanets;

  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final bool isFailed;
  @override
  final String id;
  @override
  final String name;
  @override
  final String smallPara;
  @override
  final String readTime;
  @override
  final String errorMessage;
  final List<PlanetDto> _ListOfPlanets;
  @override
  List<PlanetDto> get ListOfPlanets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ListOfPlanets);
  }

  @override
  final PlanetRepository planetRepository;
  @override
  final AppStateNotifier appStateNotifier;
  @override
  final ScrollController scrollController;
  @override
  final PlanetDto? planetDto;

  @override
  String toString() {
    return 'PlanetState(isLoading: $isLoading, isSuccess: $isSuccess, isFailed: $isFailed, id: $id, name: $name, smallPara: $smallPara, readTime: $readTime, errorMessage: $errorMessage, ListOfPlanets: $ListOfPlanets, planetRepository: $planetRepository, appStateNotifier: $appStateNotifier, scrollController: $scrollController, planetDto: $planetDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanetState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality().equals(other.isFailed, isFailed) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.smallPara, smallPara) &&
            const DeepCollectionEquality().equals(other.readTime, readTime) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._ListOfPlanets, _ListOfPlanets) &&
            const DeepCollectionEquality()
                .equals(other.planetRepository, planetRepository) &&
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier) &&
            const DeepCollectionEquality()
                .equals(other.scrollController, scrollController) &&
            const DeepCollectionEquality().equals(other.planetDto, planetDto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(isFailed),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(smallPara),
      const DeepCollectionEquality().hash(readTime),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(_ListOfPlanets),
      const DeepCollectionEquality().hash(planetRepository),
      const DeepCollectionEquality().hash(appStateNotifier),
      const DeepCollectionEquality().hash(scrollController),
      const DeepCollectionEquality().hash(planetDto));

  @JsonKey(ignore: true)
  @override
  _$$_PlanetStateCopyWith<_$_PlanetState> get copyWith =>
      __$$_PlanetStateCopyWithImpl<_$_PlanetState>(this, _$identity);
}

abstract class _PlanetState implements PlanetState {
  const factory _PlanetState(
      {required final bool isLoading,
      required final bool isSuccess,
      required final bool isFailed,
      required final String id,
      required final String name,
      required final String smallPara,
      required final String readTime,
      required final String errorMessage,
      required final List<PlanetDto> ListOfPlanets,
      required final PlanetRepository planetRepository,
      required final AppStateNotifier appStateNotifier,
      required final ScrollController scrollController,
      final PlanetDto? planetDto}) = _$_PlanetState;

  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  bool get isFailed;
  @override
  String get id;
  @override
  String get name;
  @override
  String get smallPara;
  @override
  String get readTime;
  @override
  String get errorMessage;
  @override
  List<PlanetDto> get ListOfPlanets;
  @override
  PlanetRepository get planetRepository;
  @override
  AppStateNotifier get appStateNotifier;
  @override
  ScrollController get scrollController;
  @override
  PlanetDto? get planetDto;
  @override
  @JsonKey(ignore: true)
  _$$_PlanetStateCopyWith<_$_PlanetState> get copyWith =>
      throw _privateConstructorUsedError;
}
