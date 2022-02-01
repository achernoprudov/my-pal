import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_dto.freezed.dart';

part 'record_dto.g.dart';

@freezed
class RecordDto with _$RecordDto {
  const factory RecordDto({
    int? id,
    required int date,
    required String mood,
    @Default('') String text,
  }) = _RecordDto;

  factory RecordDto.fromJson(Map<String, dynamic> json) =>
      _$RecordDtoFromJson(json);
}
