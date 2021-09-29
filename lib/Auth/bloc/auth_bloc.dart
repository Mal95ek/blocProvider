import 'package:blocflutterprovider/repositery/user_repositery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';
import 'package:blocflutterprovider/repositery/user_repositery.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserReop? userReop;

  AuthBloc({this.userReop}) : super(AuthInit());
  Stream<AuthState> mapToEventToState(AuthEvent event) async* {
    if (event is AppLoaded) {
      try {
        var isSignedIn = await userReop!.isSignedIn();
        if (isSignedIn) {
          var user = await userReop!.getcurrentuser();
          yield AuthinticonState(user: user);
        } else {
          yield UnAuthState();
        }
      } catch (e) {
        yield UnAuthState();
      }
    }
  }
}
