import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_course_management/bloc/login_event.dart';
import 'package:student_course_management/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<NavigateToDashBoard>(navigateToDashBoard);
    on<NavigateToRegister>(navigateToRegister);
    on<NavigationHandled>(navigationHandled);
  }

  void navigateToDashBoard(
    NavigateToDashBoard event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(navigateToDashBoard: true));
  }

  void navigateToRegister(NavigateToRegister event, Emitter<LoginState> emit) {
    emit(state.copyWith(navigateToRegister: true));
  }

  void navigationHandled(NavigationHandled event, Emitter<LoginState> emit) {
    emit(state.copyWith(navigateToDashBoard: false, navigateToRegister: false));
  }
}
