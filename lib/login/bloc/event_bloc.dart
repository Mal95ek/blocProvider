import 'package:equatable/equatable.dart';

import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  List<Object> get props => [];
}

class signinbuttonPressed extends LoginEvent {
  @override
  String email;
  String password;
  signinbuttonPressed({required this.email, required this.password});
}
