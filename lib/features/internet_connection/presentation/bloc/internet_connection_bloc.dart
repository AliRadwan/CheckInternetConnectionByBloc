import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'internet_connection_event.dart';
part 'internet_connection_state.dart';

class InternetConnectionBloc
    extends Bloc<InternetConnectionEvent, InternetConnectionState> {
  StreamSubscription? _subscription;

  InternetConnectionBloc() : super(InternetConnectionInitial()) {
    on<InternetConnectionEvent>((event, emit) {
      if (event is ConnectedEvent) {
        emit(ConnectedState(message: 'connect'));
      } else if (event is NotConnectedEvent) {
        emit(NotConnectedState(message: 'no network'));
      }
    });

    _subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        add(ConnectedEvent());
      } else {
        add(NotConnectedEvent());
      }
    });
  }

  @override
  Future<void> close() {
    _subscription!.cancel();
    return super.close();
  }
}
