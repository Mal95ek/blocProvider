import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginState extends Equatable {
  const LoginState();
  List<Object> get props => [];
}

class LoginInit extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSucced extends LoginState {
  User user;
  LoginSucced({required this.user});
}

class LoginFalied extends LoginState {
  String message;
  LoginFalied({required this.message});
}
