// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'numberfact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Numberfact _$NumberfactFromJson(Map<String, dynamic> json) => Numberfact(
      trivia: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumberfactToJson(Numberfact instance) =>
    <String, dynamic>{
      'text': instance.trivia,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
