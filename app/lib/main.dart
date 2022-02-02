import 'package:di/di.dart';
import 'package:flutter/material.dart';
import 'package:my_pal/src/di/app_dependencies.dart';
import 'package:storage/storage.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppDependencies.register();
  await _initializeDatabase();

  runApp(const App());
}

Future<void> _initializeDatabase() {
  final ds = ServiceLocator.get<DatabaseStack>();
  return ds.initialize();
}
