import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../../feature/home_page/data/data_sources/home_local_data_source.dart';
import '../../../feature/home_page/data/data_sources/home_remote_data_source.dart';
import '../../../feature/home_page/domain/repo/home_repo_implementation.dart';
import '../api_service.dart';

GetIt getIt = GetIt.instance;
void setupServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      homeRemoteDataSource: HomeRemoteDataSourceImplementation(
        getIt.get<ApiService>(),
      ),
      homeLocalDataSource: HomeLocalDataSourceImplementation(),
    ),
  );
}
