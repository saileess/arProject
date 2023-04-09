// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'planet_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanetDto _$PlanetDtoFromJson(Map<String, dynamic> json) {
  return _PlanetDto.fromJson(json);
}

/// @nodoc
mixin _$PlanetDto {
  String get name => throw _privateConstructorUsedError;
  String get readTime => throw _privateConstructorUsedError;
  String get smallPara => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  String get docID => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanetDtoCopyWith<PlanetDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetDtoCopyWith<$Res> {
  factory $PlanetDtoCopyWith(PlanetDto value, $Res Function(PlanetDto) then) =
      _$PlanetDtoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String readTime,
      String smallPara,
      String imageUrl,
      String detail,
      String docID,
      String fileName});
}

/// @nodoc
class _$PlanetDtoCopyWithImpl<$Res> implements $PlanetDtoCopyWith<$Res> {
  _$PlanetDtoCopyWithImpl(this._value, this._then);

  final PlanetDto _value;
  // ignore: unused_field
  final $Res Function(PlanetDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? readTime = freezed,
    Object? smallPara = freezed,
    Object? imageUrl = freezed,
    Object? detail = freezed,
    Object? docID = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      readTime: readTime == freezed
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as String,
      smallPara: smallPara == freezed
          ? _value.smallPara
          : smallPara // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      docID: docID == freezed
          ? _value.docID
          : docID // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PlanetDtoCopyWith<$Res> implements $PlanetDtoCopyWith<$Res> {
  factory _$$_PlanetDtoCopyWith(
          _$_PlanetDto value, $Res Function(_$_PlanetDto) then) =
      __$$_PlanetDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String readTime,
      String smallPara,
      String imageUrl,
      String detail,
      String docID,
      String fileName});
}

/// @nodoc
class __$$_PlanetDtoCopyWithImpl<$Res> extends _$PlanetDtoCopyWithImpl<$Res>
    implements _$$_PlanetDtoCopyWith<$Res> {
  __$$_PlanetDtoCopyWithImpl(
      _$_PlanetDto _value, $Res Function(_$_PlanetDto) _then)
      : super(_value, (v) => _then(v as _$_PlanetDto));

  @override
  _$_PlanetDto get _value => super._value as _$_PlanetDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? readTime = freezed,
    Object? smallPara = freezed,
    Object? imageUrl = freezed,
    Object? detail = freezed,
    Object? docID = freezed,
    Object? fileName = freezed,
  }) {
    return _then(_$_PlanetDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      readTime: readTime == freezed
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as String,
      smallPara: smallPara == freezed
          ? _value.smallPara
          : smallPara // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      docID: docID == freezed
          ? _value.docID
          : docID // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlanetDto implements _PlanetDto {
  _$_PlanetDto(
      {required this.name,
      required this.readTime,
      required this.smallPara,
      required this.imageUrl,
      required this.detail,
      required this.docID,
      required this.fileName});

  factory _$_PlanetDto.fromJson(Map<String, dynamic> json) =>
      _$$_PlanetDtoFromJson(json);

  @override
  final String name;
  @override
  final String readTime;
  @override
  final String smallPara;
  @override
  final String imageUrl;
  @override
  final String detail;
  @override
  final String docID;
  @override
  final String fileName;

  @override
  String toString() {
    return 'PlanetDto(name: $name, readTime: $readTime, smallPara: $smallPara, imageUrl: $imageUrl, detail: $detail, docID: $docID, fileName: $fileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanetDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.readTime, readTime) &&
            const DeepCollectionEquality().equals(other.smallPara, smallPara) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.detail, detail) &&
            const DeepCollectionEquality().equals(other.docID, docID) &&
            const DeepCollectionEquality().equals(other.fileName, fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(readTime),
      const DeepCollectionEquality().hash(smallPara),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(detail),
      const DeepCollectionEquality().hash(docID),
      const DeepCollectionEquality().hash(fileName));

  @JsonKey(ignore: true)
  @override
  _$$_PlanetDtoCopyWith<_$_PlanetDto> get copyWith =>
      __$$_PlanetDtoCopyWithImpl<_$_PlanetDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanetDtoToJson(
      this,
    );
  }
}

abstract class _PlanetDto implements PlanetDto {
  factory _PlanetDto(
      {required final String name,
      required final String readTime,
      required final String smallPara,
      required final String imageUrl,
      required final String detail,
      required final String docID,
      required final String fileName}) = _$_PlanetDto;

  factory _PlanetDto.fromJson(Map<String, dynamic> json) =
      _$_PlanetDto.fromJson;

  @override
  String get name;
  @override
  String get readTime;
  @override
  String get smallPara;
  @override
  String get imageUrl;
  @override
  String get detail;
  @override
  String get docID;
  @override
  String get fileName;
  @override
  @JsonKey(ignore: true)
  _$$_PlanetDtoCopyWith<_$_PlanetDto> get copyWith =>
      throw _privateConstructorUsedError;
}
