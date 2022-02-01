import 'package:sqflite/sqflite.dart';
import 'package:storage/src/database/app_database.dart';

abstract class DatabaseDao {
  DatabaseStack get dbStack;

  Database get db => dbStack.db;
}