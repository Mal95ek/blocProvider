import 'package:blocflutterprovider/login/bloc/bloc_login.dart';
import 'package:blocflutterprovider/login/bloc/event_bloc.dart';
import 'package:blocflutterprovider/regestir/bloc/regestir_event.dart';
import 'package:blocflutterprovider/regestir/regestir_bloc.dart';
import 'package:flutter/material.dart';
import 'package:blocflutterprovider/compnent.dart';
import 'package:blocflutterprovider/screens/login/login.dart';

// ignore: must_be_immutable
class FormRegestir extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: EdgeInsets.only(top: 150, left: 20, right: 10),
        child: Column(
          children: [
            Text(
              'Registration',
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
            defultTextButton(
              function: () {
                Regestirbloc().add(SingupRegestirPressed(
                    email: email.text, password: password.text));
              },
              text: Text('Regestration'),
            ),
            SizedBox(
              height: 10,
            ),
            defultTextButton(
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              text: Text('Login'),
            ),
          ],
        ),
      ),
    ]);
  }
}
