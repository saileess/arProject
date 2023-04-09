// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';



part 'planet_dto.freezed.dart';
part 'planet_dto.g.dart';

@freezed
class PlanetDto with _$PlanetDto {
 // @JsonSerializable(fieldRename: FieldRename.snake)
  factory PlanetDto({
    required String name,
    required String readTime,
    required String smallPara,
    required String imageUrl,
    required String detail,
    required String docID,
    required String fileName,

  }) = _PlanetDto;

  factory PlanetDto.fromJson(Map<String, dynamic> json) => _$PlanetDtoFromJson(
        json
      );
}

