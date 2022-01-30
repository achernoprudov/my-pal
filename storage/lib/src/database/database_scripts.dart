class DatabaseScripts {
  DatabaseScripts._();

  static const createDatabaseV1 = r'''
    CREATE TABLE records(id INTEGER PRIMARY KEY, mood TEXT, date INTEGER, text TEXT)
  ''';
}
