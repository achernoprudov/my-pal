import 'package:di/di.dart';
import 'package:storage/storage.dart';

class StorageDependencies {
  StorageDependencies._();

  static void register() {
    ServiceLocator.registerLazySingleton<DatabaseStack>(() {
      return DatabaseStack();
    });
    ServiceLocator.registerLazySingleton<RecordsDao>(() {
      return RecordsDao(
        ServiceLocator.get<DatabaseStack>(),
      );
    });
  }
}
