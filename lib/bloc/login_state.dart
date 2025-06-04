import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final bool navigateToDashBoard;
  final bool navigateToRegister;

  const LoginState({
    required this.navigateToDashBoard,
    required this.navigateToRegister,
  });

  factory LoginState.initial() {
    return const LoginState(
      navigateToDashBoard: false,
      navigateToRegister: false,
    );
  }

  LoginState copyWith({bool? navigateToDashBoard, bool? navigateToRegister}) {
    return LoginState(
      navigateToDashBoard: navigateToDashBoard ?? this.navigateToDashBoard,
      navigateToRegister: navigateToRegister ?? this.navigateToRegister,
    );
  }

  @override
  List<Object?> get props => [navigateToDashBoard, navigateToRegister];
}
