import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:storage/src/database/database_scripts.dart';

class DatabaseStack {
  late Database db;

  Future<void> initialize() async {
    db = await openDatabase(
      join(await getDatabasesPath(), 'my_pal_database.db'),
      version: 1,
      onCreate: (db, version) {
        assert(version == 1);
        return db.execute(DatabaseScripts.createDatabaseV1);
      },
    );
  }
}
