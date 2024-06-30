// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleModelImpl _$$ArticleModelImplFromJson(Map<String, dynamic> json) =>
    _$ArticleModelImpl(
      (json['id'] as num).toInt(),
      (json['author_id'] as num).toInt(),
      json['content'] as String,
      json['picture'] as String,
    );

Map<String, dynamic> _$$ArticleModelImplToJson(_$ArticleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author_id': instance.authorId,
      'content': instance.content,
      'picture': instance.picture,
    };
