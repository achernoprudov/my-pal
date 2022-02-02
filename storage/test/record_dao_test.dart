import 'package:storage/src/dao/records_dao.dart';
import 'package:storage/src/database/app_database.dart';
import 'package:storage/src/model/model.dart';
import 'package:test/test.dart';

void main() {
  late RecordsDao dao;

  setUp(() async {
    final dbStack = DatabaseStack();
    dao = RecordsDao(dbStack);

    await dbStack.initialize();
  });

  test('add record', () {
    // arrange
    const record = RecordDto(
      mood: 'good',
      date: 1,
    );

    // act
    final id = dao.insert(record);

    // assert
  });
}
