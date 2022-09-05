import 'package:blocarchitecher/demo.dart';
import 'package:blocarchitecher/demo_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(providers: [BlocProvider(create: (context) => DemoBloc(),)], child: MaterialApp(home: Demo())));
}


