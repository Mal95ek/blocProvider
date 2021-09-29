import 'package:equatable/equatable.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  List<Object> get props => [];
}

class AuthInit extends AuthState {}

// ignore: must_be_immutable
class AuthinticonState extends AuthState {
  User user;
  AuthinticonState({required this.user});
}

class UnAuthState extends AuthState {}

class Apploaded extends AuthState {}
