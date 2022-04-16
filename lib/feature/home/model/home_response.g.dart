// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) => HomeResponse(
      name: json['name'] as String?,
      details: json['details'] as String?,
      links: json['links'] == null
          ? null
          : HomeLinks.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'details': instance.details,
      'links': instance.links,
    };
