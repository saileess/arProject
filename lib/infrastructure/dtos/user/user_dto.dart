// ignore_for_file: invalid_annotation_target
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory UserDto({
    required String id,
    required String username,
    required String email,
    String? college,
  DateTime? createdAt,
    DateTime? updatedAt,
    String? profileUrl,
    @JsonKey(defaultValue: []) List<String>? bookmarks,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(
        json
          ..['created_at'] =
              (json['created_at'] as Timestamp).toDate().toString()
          ..['updated_at'] =
              (json['updated_at'] as Timestamp).toDate().toString(),
      );
}

extension ExperienceDtoExtension on UserDto {
  Map<String, dynamic> get customToJson {
    Map<String, dynamic> json = toJson();
    json['created_at'] = Timestamp.fromDate(createdAt!);
    json['updated_at'] = Timestamp.fromDate(updatedAt!); 
    return json;
  }
}
