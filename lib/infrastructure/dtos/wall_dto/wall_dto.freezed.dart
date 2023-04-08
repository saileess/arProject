// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wall_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WallDto _$WallDtoFromJson(Map<String, dynamic> json) {
  return _WallDto.fromJson(json);
}

/// @nodoc
mixin _$WallDto {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get svgImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WallDtoCopyWith<WallDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallDtoCopyWith<$Res> {
  factory $WallDtoCopyWith(WallDto value, $Res Function(WallDto) then) =
      _$WallDtoCopyWithImpl<$Res>;
  $Res call({String name, String description, String svgImage});
}

/// @nodoc
class _$WallDtoCopyWithImpl<$Res> implements $WallDtoCopyWith<$Res> {
  _$WallDtoCopyWithImpl(this._value, this._then);

  final WallDto _value;
  // ignore: unused_field
  final $Res Function(WallDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? svgImage = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      svgImage: svgImage == freezed
          ? _value.svgImage
          : svgImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WallDtoCopyWith<$Res> implements $WallDtoCopyWith<$Res> {
  factory _$$_WallDtoCopyWith(
          _$_WallDto value, $Res Function(_$_WallDto) then) =
      __$$_WallDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description, String svgImage});
}

/// @nodoc
class __$$_WallDtoCopyWithImpl<$Res> extends _$WallDtoCopyWithImpl<$Res>
    implements _$$_WallDtoCopyWith<$Res> {
  __$$_WallDtoCopyWithImpl(_$_WallDto _value, $Res Function(_$_WallDto) _then)
      : super(_value, (v) => _then(v as _$_WallDto));

  @override
  _$_WallDto get _value => super._value as _$_WallDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? svgImage = freezed,
  }) {
    return _then(_$_WallDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      svgImage: svgImage == freezed
          ? _value.svgImage
          : svgImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WallDto implements _WallDto {
  _$_WallDto(
      {required this.name, required this.description, required this.svgImage});

  factory _$_WallDto.fromJson(Map<String, dynamic> json) =>
      _$$_WallDtoFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String svgImage;

  @override
  String toString() {
    return 'WallDto(name: $name, description: $description, svgImage: $svgImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WallDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.svgImage, svgImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(svgImage));

  @JsonKey(ignore: true)
  @override
  _$$_WallDtoCopyWith<_$_WallDto> get copyWith =>
      __$$_WallDtoCopyWithImpl<_$_WallDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WallDtoToJson(
      this,
    );
  }
}

abstract class _WallDto implements WallDto {
  factory _WallDto(
      {required final String name,
      required final String description,
      required final String svgImage}) = _$_WallDto;

  factory _WallDto.fromJson(Map<String, dynamic> json) = _$_WallDto.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get svgImage;
  @override
  @JsonKey(ignore: true)
  _$$_WallDtoCopyWith<_$_WallDto> get copyWith =>
      throw _privateConstructorUsedError;
}
