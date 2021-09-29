import 'dart:math';

import 'package:blocflutterprovider/repositery/user_repositery.dart';
import 'bloc/regestir_state.dart';
import 'bloc/regestir_event.dart';
import 'package:bloc/bloc.dart';

class Regestirbloc extends Bloc<RegestirEvent, RegestirState> {
  UserReop? userReop;
  Regestirbloc({this.userReop}) : super(RegestirInit());
  Stream<RegestirState> mapEventtoState(RegestirEvent event) async* {
    if (event is SingupRegestirPressed) {
      yield RegestirLoading();
      try {
        var user = await userReop!.signup(event.email, event.password);
        yield RegestirSucces(user);
      } catch (e) {
        yield RegestirFailed(message: e.toString());
      }
    }
  }
}
