import 'package:core/core.dart';
import 'package:storage/storage.dart';

abstract class RecordMapper {
  Record toRecord(RecordDto dto);
}

class RecordMapperImpl implements RecordMapper {
  @override
  Record toRecord(RecordDto dto) {
    return Record(
      id: ArgumentError.checkNotNull(dto.id),
      date: DateTime.fromMicrosecondsSinceEpoch(dto.date),
      mood: dto.mood,
    );
  }
}
