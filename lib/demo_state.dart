part of 'demo_bloc.dart';

abstract class DemoState {}

class DemoInitial extends DemoState {}

class InitialState extends DemoState {
  int a;
  InitialState(this.a);
}
