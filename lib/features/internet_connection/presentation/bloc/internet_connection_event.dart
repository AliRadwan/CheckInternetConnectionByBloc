part of 'internet_connection_bloc.dart';

abstract class InternetConnectionEvent {
  const InternetConnectionEvent();

  @override
  List<Object> get props => [];
}

class ConnectedEvent extends InternetConnectionEvent {}

class NotConnectedEvent extends InternetConnectionEvent {}
