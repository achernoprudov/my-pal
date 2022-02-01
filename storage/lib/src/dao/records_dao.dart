import 'package:sqflite/sqflite.dart';
import 'package:storage/src/database/app_database.dart';
import 'package:storage/src/model/record_dto.dart';

import 'database_dao.dart';

class RecordsDao extends DatabaseDao {
  @override
  final DatabaseStack dbStack;

  RecordsDao(this.dbStack);

  Future<int> insert(
    RecordDto record, {
    ConflictAlgorithm conflictAlgorithm = ConflictAlgorithm.replace,
  }) async {
    return await db.insert(
      'records',
      record.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
