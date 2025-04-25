import 'package:get_it/get_it.dart';
import 'package:rick_and_morty/core/helper/dio_helper.dart';
import 'package:rick_and_morty/modules/home/data/api/api_services.dart';
import 'package:rick_and_morty/modules/home/data/repo/character_repo.dart';

final getIt = GetIt.instance;

void initInjection() {
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio: createDio()));
  getIt.registerLazySingleton<CharacterRepo>(
    () => CharacterRepo(apiServices: getIt<ApiServices>()),
  );
}
