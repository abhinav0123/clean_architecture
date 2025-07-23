import 'package:clean_architecture/config/routes/navigation_service.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  sl.registerLazySingleton(() => NavigationService());
}
