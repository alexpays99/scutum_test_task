import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

abstract class InjectionContainer {
  static void initDependencyInjection() async {
    // Side packages
    getIt.registerLazySingleton<Dio>(() => Dio());
    // getIt.registerLazySingleton<Connectivity>(() => Connectivity());

    // Use cases
    // getIt.registerLazySingleton(
    //   () => LoadArtistsUseCase(albumRepository: getIt()),
    // );
    // getIt.registerLazySingleton(
    //   () => LoadArtistTracksUseCase(albumRepository: getIt()),
    // );
    // getIt.registerLazySingleton(
    //   () => AddSongToFavouriteUseCase(favouriteAlbumRepository: getIt()),
    // );
    // getIt.registerLazySingleton(
    //   () => DeleteTrackFromFavouriteUseCase(favouriteAlbumRepository: getIt()),
    // );

    // Repositories
    // getIt.registerLazySingleton<AlbumRepository>(
    //     () => AlbumRepositoryImpl(getIt()));
    // getIt.registerLazySingleton<FavouriteAlbumRepository>(
    //     () => FavouriteAlbumRepositoryImpl(getIt()));

    // Data sourses
    // getIt.registerLazySingleton<RemoteDataSource>(
    //     () => RemoteDataSourceImpl(getIt()));
    // getIt.registerLazySingleton<LocalDataSource>(
    //     () => LocalDataSourceImpl(getIt()));

    // Services
    // getIt.registerLazySingleton<HttpService>(
    //   () => HttpService(
    //     dio: getIt.get<Dio>(),
    //   ),
    // );
    // getIt.registerLazySingleton<HiveService>(
    //   () => HiveService(),
    // );

    // Blocs and Cubits
    // getIt.registerLazySingleton(() => ArtistCubit(getIt()));
    // getIt.registerLazySingleton(() => TracksCubit(getIt()));
    // getIt.registerLazySingleton(() => FavouriteTracksListCubit(getIt()));

    // Go Router
    // getIt.registerFactory(() => GoRouterNavigation());
  }

  // Local storages
  // static Future<void> registerHive() async {
  //   final appDocumentDirectory =
  //       await path_provider.getApplicationDocumentsDirectory();
  //   Hive.init(appDocumentDirectory.path);
  //   Hive.registerAdapter(FavouriteTrackAdapter());
  //   await Hive.openBox(BoxName.tracks);
  // }
}
