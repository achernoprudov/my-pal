import 'package:di/di.dart';
import 'package:domain/src/mapper/record_mapper.dart';
import 'package:domain/src/use_cases/get_records_use_case.dart';
import 'package:domain/src/use_cases/add_record_use_case.dart';
import 'package:storage/storage.dart';

class DomainDependencies {
  DomainDependencies._();

  static void register() {
    ServiceLocator.registerLazySingleton<RecordMapper>(() {
      return const RecordMapperImpl();
    });
    ServiceLocator.registerLazySingleton<GetRecordsUseCase>(() {
      return GetRecordsUseCaseImpl(
        ServiceLocator.get<RecordsDao>(),
        ServiceLocator.get<RecordMapper>(),
      );
    });
    ServiceLocator.registerLazySingleton<AddRecordUseCase>(() {
      return AddRecordUseCaseImpl(
        ServiceLocator.get<RecordsDao>(),
      );
    });
  }
}
