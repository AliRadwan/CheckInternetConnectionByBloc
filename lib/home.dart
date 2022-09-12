import 'package:check_internet_connection/bloc/internet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('widget.title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            BlocBuilder<InternetBloc,InternetState>(
                builder: (context,state){
              if(state is ConnectedState){
                return Text(state.message);
              }else if(state is NotConnectedState){
                return Text(state.message);
              }
              return const SizedBox();
            })
          ],
        ),
      ),
    );
  }
}
