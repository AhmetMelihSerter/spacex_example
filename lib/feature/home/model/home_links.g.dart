// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeLinks _$HomeLinksFromJson(Map<String, dynamic> json) => HomeLinks(
      patch: json['patch'] == null
          ? null
          : HomePatch.fromJson(json['patch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeLinksToJson(HomeLinks instance) => <String, dynamic>{
      'patch': instance.patch,
    };
