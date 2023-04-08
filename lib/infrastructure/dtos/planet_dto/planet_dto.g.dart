// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlanetDto _$$_PlanetDtoFromJson(Map<String, dynamic> json) => _$_PlanetDto(
      name: json['name'] as String,
      readTime: json['readTime'] as String,
      smallPara: json['smallPara'] as String,
      imageUrl: json['imageUrl'] as String,
      detail: json['detail'] as String,
      docID: json['docID'] as String,
    );

Map<String, dynamic> _$$_PlanetDtoToJson(_$_PlanetDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'readTime': instance.readTime,
      'smallPara': instance.smallPara,
      'imageUrl': instance.imageUrl,
      'detail': instance.detail,
      'docID': instance.docID,
    };
