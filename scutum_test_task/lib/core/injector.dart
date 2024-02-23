import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:scutum_test_task/core/database/adapters.dart';
import 'package:scutum_test_task/feature/tasks/data/models/task_model.dart';
import 'package:scutum_test_task/feature/tasks/domain/repositories/tasks_repository.dart';
import 'package:scutum_test_task/feature/tasks/domain/usecases/delete_task.dart';
import 'package:scutum_test_task/feature/tasks/domain/usecases/fetch_all_tasks_from_db.dart';
import 'package:scutum_test_task/feature/tasks/domain/usecases/insert_task.dart';
import 'package:scutum_test_task/feature/tasks/presentation/bloc/tasks_bloc.dart';

import '../feature/tasks/data/datasources/hive_service.dart';
import '../feature/tasks/data/datasources/local_datasource.dart';
import '../feature/tasks/data/repositories/task_repository_impl.dart';
import '../feature/tasks/domain/usecases/update_task.dart';
import '../navigation/go_rounter.dart';
import 'database/hive_data.dart';

GetIt getIt = GetIt.instance;

abstract class Injector {
  static void initDependencyInjection() async {
    // Side packages
    getIt.registerLazySingleton<Dio>(
      () => Dio(),
    );
    // getIt.registerLazySingleton<Connectivity>(() => Connectivity());

    // Use cases
    getIt.registerLazySingleton(
      () => FetchAllTasksFromDBUseCase(tasksRepository: getIt()),
    );
    getIt.registerLazySingleton(
      () => InsertTaskUseCase(tasksRepository: getIt()),
    );
    getIt.registerLazySingleton(
      () => UpdateTaskUseCase(tasksRepository: getIt()),
    );
    getIt.registerLazySingleton(
      () => DeleteTaskUseCase(tasksRepository: getIt()),
    );

    // Repositories
    getIt.registerLazySingleton<TasksRepository>(
      () => TasksRepositoryImpl(getIt()),
    );
    // getIt.registerLazySingleton<FavouriteAlbumRepository>(
    //     () => FavouriteAlbumRepositoryImpl(getIt()));

    // Data sourses
    getIt.registerLazySingleton<LocalDataSource>(
      () => LocalDataSourceImpl(getIt()),
    );
    // getIt.registerLazySingleton<RemoteDataSource>(
    //     () => RemoteDataSourceImpl(getIt()));

    // Services
    getIt.registerLazySingleton<HiveService>(
      () => HiveService(),
    );
    // getIt.registerLazySingleton<HttpService>(
    //   () => HttpService(
    //     dio: getIt.get<Dio>(),
    //   ),
    // );

    // Blocs and Cubits
    getIt.registerLazySingleton(
      () => TasksBloc(
          fetchAllTasksFromDb: getIt(),
          insertTaskUseCase: getIt(),
          updateTaskUseCase: getIt(),
          deleteTaskUseCase: getIt()),
    );
    // getIt.registerLazySingleton(() => TracksCubit(getIt()));
    // getIt.registerLazySingleton(() => FavouriteTracksListCubit(getIt()));

    // Go Router
    getIt.registerFactory(() => GoRouterNavigation());
  }

  // Local storages
  static Future<void> registerHive() async {
    final appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);
    Hive.registerAdapter(TaskAdapter());
    Hive.registerAdapter(TaskCategoryAdapter());
    Hive.registerAdapter(StatusAdapter());
    await Hive.openBox(HiveData.boxName);
  }
}
