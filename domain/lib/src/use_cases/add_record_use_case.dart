import 'package:storage/storage.dart';

abstract class AddRecordUseCase {
  Future<int> addRecord({
    required DateTime date,
    required String mood,
    String text = '',
  });
}

class AddRecordUseCaseImpl implements AddRecordUseCase {
  final RecordsDao recordsDao;

  AddRecordUseCaseImpl(this.recordsDao);

  @override
  Future<int> addRecord({
    required DateTime date,
    required String mood,
    String text = '',
  }) {
    final dto = RecordDto(
      date: date.millisecondsSinceEpoch,
      mood: mood,
      text: text,
    );
    return recordsDao.insert(dto);
  }
}
