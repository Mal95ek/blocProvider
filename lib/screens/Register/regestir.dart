import 'package:blocflutterprovider/regestir/bloc/regestir_state.dart';
import 'package:blocflutterprovider/regestir/regestir_bloc.dart';
import 'package:blocflutterprovider/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'RegestirForm.dart';

class RegistirScreen extends StatelessWidget {
  Regestirbloc? regestirbloc;
  @override
  Widget build(BuildContext context) {
    regestirbloc = BlocProvider.of<Regestirbloc>(context);
    return Scaffold(
      body: Column(
        children: [
          BlocListener<Regestirbloc, RegestirState>(listener: (context, state) {
            if (state is RegestirSucces)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
          }, child: BlocBuilder<Regestirbloc, RegestirState>(
              builder: (context, state) {
            if (state is RegestirLoading) {
              return CircularProgressIndicator();
            } else if (state is RegestirFailed) {
              return error(state.message);
            } else if (state is RegestirSucces) {
              return Container();
            }
            return Container();
          })),
        ],
      ),
    );
  }
}

Widget error(String message) {
  return Text('errro message');
}
