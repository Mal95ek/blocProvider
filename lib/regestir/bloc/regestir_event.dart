import 'package:equatable/equatable.dart';

abstract class RegestirEvent extends Equatable {
  const RegestirEvent();
  List<Object> get props => [];
}

// ignore: must_be_immutable
class SingupRegestirPressed extends RegestirEvent {
  String email;
  String password;
  SingupRegestirPressed({required this.email, required this.password});
}
