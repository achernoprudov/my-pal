// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecordDto _$$_RecordDtoFromJson(Map<String, dynamic> json) => _$_RecordDto(
      id: json['id'] as int?,
      date: json['date'] as int,
      mood: json['mood'] as String,
      text: json['text'] as String? ?? '',
    );

Map<String, dynamic> _$$_RecordDtoToJson(_$_RecordDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'mood': instance.mood,
      'text': instance.text,
    };
