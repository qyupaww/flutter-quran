import 'package:get_it/get_it.dart';
import 'package:flutter_quran/core/networks/api_client.dart';
import 'package:flutter_quran/utils/flavor/flavor_utils.dart';
import 'package:flutter_quran/infrastructure/datasource/auth/auth_local_datasource.dart';
import 'package:flutter_quran/infrastructure/datasource/auth/auth_remote_datasource.dart';
import 'package:flutter_quran/infrastructure/repositories/auth/auth_repository_impl.dart';
import 'package:flutter_quran/routing/route.dart';

GetIt inject = GetIt.instance;

Future<void> setupInjector() async {
  /// Route
  inject.registerSingleton<AppRouter>(AppRouter());

  /// Registering flavors
  inject.registerSingleton(FlavorUtils()..initType());

  /// Reinitialize flavor
  await flavor.initType();

  /// Core api client
  inject.registerLazySingleton(() => ApiClient());

  /// Registering data source
  inject.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSource(),
  );
  inject.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSource(inject<ApiClient>()),
  );

  /// Register bloc
  // inject.registerLazySingleton<PageBloc>(() => PageBloc()..initPage());

  /// Register repository
  inject.registerLazySingleton<AuthRepositoryImpl>(
    () => AuthRepositoryImpl(
      remoteDataSource: inject<AuthRemoteDataSource>(),
      localDataSource: inject<AuthLocalDataSource>(),
    ),
  );
}
