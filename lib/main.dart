import 'package:check_internet_connection/bloc/internet_bloc.dart';
import 'package:check_internet_connection/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>InternetBloc(),
      child: const MaterialApp(
        home:  MyHomePage(),
      ),
    );
  }
}
