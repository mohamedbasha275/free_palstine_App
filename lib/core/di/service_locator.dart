import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:free_palestine/core/dio/api_service.dart';
import 'package:free_palestine/core/shared_preferences/app_prefs.dart';
import 'package:free_palestine/features/data/repositories/auth_repo.dart';
import 'package:free_palestine/features/data/repositories/filter_repo.dart';
import 'package:free_palestine/features/data/repositories/poems_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  _registerDio();
  _registerApiService();
  await _registerSharedPreferences();
  _registerAppPreferences();
  _registerRepositories();
}

void _registerDio() {
  getIt.registerSingleton<Dio>(Dio());
}

void _registerApiService() {
  getIt.registerSingleton<ApiService>(
    ApiService(getIt.get<Dio>()),
  );
}

Future<void> _registerSharedPreferences() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPrefs);
}

void _registerAppPreferences() {
  getIt.registerSingleton<AppPreferences>(
    AppPreferences(getIt.get<SharedPreferences>()),
  );
}

void _registerRepositories() {
  final apiService = getIt.get<ApiService>();

  getIt
    ..registerSingleton<PoemsRepoImpl>(PoemsRepoImpl(apiService))
    ..registerSingleton<FilterRepoImpl>(FilterRepoImpl(apiService))
    ..registerSingleton<AuthRepoImpl>(AuthRepoImpl(apiService));
}
