import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:user_articles/app/core/injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit()  
void configureDependencies() => getIt.init();  

@module  
abstract class RegisterModule {  
  @Named("BaseUrl")  
  String get baseUrl => 'http://my-json-server.typicode.com/adamsmaka/json-demo';  

  @lazySingleton  
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));   
} 

// void configureDependencies() {
//   // Bloc
//   getIt.registerFactory(() => HomeCubit(authorsRepository: getIt()));
//   getIt.registerFactory(() => ArticlesCubit(articlesRepository: getIt()));

//   //Repositories
//   getIt.registerFactory(() => AuthorsRepository(remoteDataSource: getIt()));
//   getIt.registerFactory(() => ArticlesRepository(remoteDataSource: getIt()));

//   //DataSources
//   getIt.registerFactory(() => AuthorsRemoteRetrofitDataSource(Dio()));
//   getIt.registerFactory(() => ArticlesRemoteRetrofitDataSource(Dio()));
// }