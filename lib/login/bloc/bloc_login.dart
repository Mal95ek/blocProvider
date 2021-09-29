import 'package:blocflutterprovider/login/bloc/event_bloc.dart';
import 'package:blocflutterprovider/login/state_login.dart';
import 'package:blocflutterprovider/regestir/bloc/regestir_event.dart';
import 'package:blocflutterprovider/regestir/bloc/regestir_state.dart';
import 'package:blocflutterprovider/repositery/user_repositery.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc/bloc.dart';
import 'package:blocflutterprovider/login/bloc/event_bloc.dart';
import 'package:blocflutterprovider/login/state_login.dart';

class Loginbloc extends Bloc<LoginEvent, LoginState> {
  UserReop userReop;
  Loginbloc(this.userReop) : super(LoginInit());

  Stream<LoginState> mapEventtoState(LoginEvent event) async* {
    if (event is signinbuttonPressed) {
      yield LoginLoading();
      try {
        var user = await userReop.signup(event.email, event.password);
        yield LoginSucced(user: user);
      } catch (e) {
        yield LoginFalied(message: e.toString());
      }
    }
  }
}
