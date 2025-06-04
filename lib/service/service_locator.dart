import 'package:get_it/get_it.dart';
import 'package:student_course_management/bloc/login_bloc.dart';

final serviceLocator = GetIt.instance;

void initDependencies() {
  initBloc();
}

void initBloc() {
  serviceLocator.registerLazySingleton(() => LoginBloc());
}
