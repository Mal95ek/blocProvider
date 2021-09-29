// ignore: import_of_legacy_library_into_null_safe
import 'package:blocflutterprovider/Auth/bloc/auth_bloc.dart';
import 'package:blocflutterprovider/Auth/bloc/auth_state.dart';
import 'package:blocflutterprovider/login/bloc/bloc_login.dart';
import 'package:blocflutterprovider/regestir/regestir_bloc.dart';
import 'package:blocflutterprovider/screens/home.dart';
import 'package:blocflutterprovider/screens/login/FormLogin.dart';
import 'package:blocflutterprovider/screens/login/login.dart';
import 'package:blocflutterprovider/splachScreen.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => AuthBloc()),
      BlocProvider(create: (context) => Regestirbloc()),
    ], child: MaterialApp(home: Main()));
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {
    Firebase.initializeApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      if (state is UnAuthState) {
        return HomeScreen();
      } else if (state is AuthState) {
        return SplachScreen();
      }
      return Container();
    });
  }
}
