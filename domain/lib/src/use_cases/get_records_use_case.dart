import 'package:core/core.dart';
import 'package:domain/src/mapper/record_mapper.dart';
import 'package:storage/storage.dart';

abstract class GetRecordsUseCase {
  Future<List<Record>> getRecords();
}

class GetRecordsUseCaseImpl implements GetRecordsUseCase {
  final RecordsDao recordsDao;
  final RecordMapper mapper;

  GetRecordsUseCaseImpl(this.recordsDao, this.mapper);

  @override
  Future<List<Record>> getRecords() async {
    final dtoList = await recordsDao.records();
    return dtoList.map(mapper.toRecord).toList();
  }
}
