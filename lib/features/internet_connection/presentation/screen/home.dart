import 'package:check_internet_connection/config/routes/app_routes.dart';
import 'package:check_internet_connection/config/utils/app_strings.dart';
import 'package:check_internet_connection/config/utils/assets_manager.dart';
import 'package:check_internet_connection/features/internet_connection/presentation/bloc/internet_connection_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(ImgAssets.imgName),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.detailsScreen);
                },
                child: const Text('go')),
            BlocBuilder<InternetConnectionBloc, InternetConnectionState>(
                builder: (context, state) {
              if (state is ConnectedState) {
                return Text(state.message);
              } else if (state is NotConnectedState) {
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
