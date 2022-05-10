// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListApi _$ListApiFromJson(Map<String, dynamic> json) => ListApi(
      json['count'] as int,
      (json['packages'] as List<dynamic>)
          .map((e) => ListApiPackage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListApiToJson(ListApi instance) => <String, dynamic>{
      'count': instance.count,
      'packages': instance.packages,
    };

ListApiPackage _$ListApiPackageFromJson(Map<String, dynamic> json) =>
    ListApiPackage(
      json['name'] as String,
      json['description'] as String?,
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      json['latest'] as String,
      DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ListApiPackageToJson(ListApiPackage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'tags': instance.tags,
      'latest': instance.latest,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

DetailViewVersion _$DetailViewVersionFromJson(Map<String, dynamic> json) =>
    DetailViewVersion(
      json['version'] as String,
      DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$DetailViewVersionToJson(DetailViewVersion instance) =>
    <String, dynamic>{
      'version': instance.version,
      'createdAt': instance.createdAt.toIso8601String(),
    };

WebapiDetailView _$WebapiDetailViewFromJson(Map<String, dynamic> json) =>
    WebapiDetailView(
      json['name'] as String,
      json['version'] as String,
      json['description'] as String,
      json['homepage'] as String,
      (json['uploaders'] as List<dynamic>).map((e) => e as String).toList(),
      DateTime.parse(json['createdAt'] as String),
      json['readme'] as String?,
      json['changelog'] as String?,
      (json['versions'] as List<dynamic>)
          .map((e) => DetailViewVersion.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['authors'] as List<dynamic>).map((e) => e as String?).toList(),
      (json['dependencies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$WebapiDetailViewToJson(WebapiDetailView instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'homepage': instance.homepage,
      'uploaders': instance.uploaders,
      'createdAt': instance.createdAt.toIso8601String(),
      'readme': instance.readme,
      'changelog': instance.changelog,
      'versions': instance.versions,
      'authors': instance.authors,
      'dependencies': instance.dependencies,
      'tags': instance.tags,
    };
