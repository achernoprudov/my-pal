import 'package:domain/domain.dart';
import 'package:storage/storage.dart';

class AppDependencies {
  AppDependencies._();

  static void register() {
    StorageDependencies.register();
    DomainDependencies.register();
  }
}