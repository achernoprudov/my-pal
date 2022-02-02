import 'package:core/core.dart';
import 'package:storage/storage.dart';

abstract class RecordMapper {
  Record toRecord(RecordDto dto);
}

class RecordMapperImpl implements RecordMapper {
  const RecordMapperImpl();

  @override
  Record toRecord(RecordDto dto) {
    return Record(
      id: ArgumentError.checkNotNull(dto.id),
      date: DateTime.fromMillisecondsSinceEpoch(dto.date),
      mood: dto.mood,
    );
  }
}
