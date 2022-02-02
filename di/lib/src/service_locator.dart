import 'package:get_it/get_it.dart';

class ServiceLocator {
  static final GetIt _locator = GetIt.instance;

  static bool isRegistered<T extends Object>(
      {Object? instance, String? instanceName}) {
    return _locator.isRegistered(instance: instance, instanceName: instanceName);
  }

  static T get<T extends Object>({String? instanceName}) {
    return _locator.get<T>(instanceName: instanceName);
  }

  static void registerSingleton<T extends Object>(
    T instance, {
    String? instanceName,
  }) {
    _locator.registerSingleton(instance, instanceName: instanceName);
  }

  static void registerLazySingleton<T extends Object>(
    T Function() factory, {
    String? instanceName,
  }) {
    _locator.registerLazySingleton(factory, instanceName: instanceName);
  }

  static void registerFactory<T extends Object>(
    T Function() factory, {
    String? instanceName,
  }) {
    _locator.registerFactory(factory, instanceName: instanceName);
  }

  static void reset() {
    _locator.reset();
  }
}
