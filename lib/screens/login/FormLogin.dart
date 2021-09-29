import 'package:blocflutterprovider/login/bloc/bloc_login.dart';
import 'package:blocflutterprovider/login/state_login.dart';
import 'package:blocflutterprovider/screens/Register/regestir.dart';
import 'package:flutter/material.dart';
import 'package:blocflutterprovider/compnent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class FormLogin extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Loginbloc? loginbloc;
  @override
  Widget build(BuildContext context) {
    loginbloc = BlocProvider.of<Loginbloc>(context);
    return ListView(children: [
      Padding(
        padding: EdgeInsets.only(top: 200, left: 20, right: 10),
        child: Column(
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              autovalidateMode: AutovalidateMode.always,
              controller: email,
              decoration: InputDecoration(
                  fillColor: Colors.deepOrangeAccent.withOpacity(0.6),
                  filled: true,
                  prefix: Icon(Icons.email),
                  labelText: 'Email'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                  fillColor: Colors.white30,
                  filled: true,
                  prefix: Icon(Icons.password),
                  labelText: 'Password'),
            ),
            SizedBox(
              height: 10,
            ),
            BlocListener<Loginbloc, LoginState>(
              listener: (context, state) {
                if (state is LoginSucced) {
                  defultTextButton(function: () {}, text: Text('Login'));
                }
              },
              child: BlocBuilder(builder: (context, state) {
                if (state is LoginLoading) {
                  return CircularProgressIndicator();
                } else if (state is LoginSucced) {
                  return Container();
                }
                return Container();
              }),
            ),
            SizedBox(
              height: 10,
            ),
            defultTextButton(
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistirScreen()),
                );
              },
              text: Text('Regestration'),
            ),
          ],
        ),
      ),
    ]);
  }
}
