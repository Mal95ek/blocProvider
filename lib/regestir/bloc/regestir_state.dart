import 'package:equatable/equatable.dart';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class RegestirState extends Equatable {
  List<Object> get props => [];
}

class RegestirInit extends RegestirState {}

class RegestirLoading extends RegestirState {}

class RegestirSucces extends RegestirState {
  User user;
  RegestirSucces(this.user);
}

class RegestirFailed extends RegestirState {
  String message;
  RegestirFailed({required this.message});
}
