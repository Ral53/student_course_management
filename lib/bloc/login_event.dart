import 'package:flutter/material.dart';

@immutable
abstract class LoginEvent {}

class NavigateToDashBoard extends LoginEvent {}

class NavigateToRegister extends LoginEvent {}

class NavigationHandled extends LoginEvent {}
