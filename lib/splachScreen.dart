import 'package:flutter/material.dart';
import 'package:blocflutterprovider/compnent.dart';
import 'package:blocflutterprovider/screens/login/login.dart';

// ignore: must_be_immutable
class SplachScreen extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: EdgeInsets.only(top: 150, left: 20, right: 10),
        child: Column(
          children: [
            defultTextButton(
              function: () {},
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
