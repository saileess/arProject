// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';



part 'wall_dto.freezed.dart';
part 'wall_dto.g.dart';

@freezed
class WallDto with _$WallDto {
 // @JsonSerializable(fieldRename: FieldRename.snake)
  factory WallDto({
    required String name,
    required String description,
    required String svgImage,
    required String imageUrl,
    required String detail,
    required String docID
  }) = _WallDto;

  factory WallDto.fromJson(Map<String, dynamic> json) => _$WallDtoFromJson(
        json
      );
}

