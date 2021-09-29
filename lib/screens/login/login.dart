// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'FormLogin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  // ignore: must_call_super
  void initState() {
    Firebase.initializeApp();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(child: FormLogin()),
      ),
    );
  }
}
