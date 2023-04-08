// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wall_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WallDto _$$_WallDtoFromJson(Map<String, dynamic> json) => _$_WallDto(
      name: json['name'] as String,
      description: json['description'] as String,
      svgImage: json['svgImage'] as String,
      imageUrl: json['imageUrl'] as String,
      detail: json['detail'] as String,
      docID: json['docID'] as String,
    );

Map<String, dynamic> _$$_WallDtoToJson(_$_WallDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'svgImage': instance.svgImage,
      'imageUrl': instance.imageUrl,
      'detail': instance.detail,
      'docID': instance.docID,
    };
