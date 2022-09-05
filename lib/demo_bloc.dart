import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:blocarchitecher/demo_bloc.dart';

part 'demo_event.dart';
part 'demo_state.dart';

class DemoBloc extends Bloc<DemoEvent, DemoState> {

  int a= 0;

  DemoBloc() : super(DemoInitial()) {
    on<DemoEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<InitEvent>((event, emit) {
      a = event.i;
      emit(InitialState(a));
      // TODO: implement event handler
    });
    on<IncrementEvent>((event, emit) {
      a++;
      emit(InitialState(a));
      // TODO: implement event handler
    });
  }
}
