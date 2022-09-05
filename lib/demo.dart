import 'package:blocarchitecher/demo_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  DemoBloc? db;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    db=BlocProvider.of<DemoBloc>(context);

    db!.add(InitEvent(0));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Bloc Architechture"),),
    body:Column(
      children: [
        BlocBuilder<DemoBloc,DemoState>(builder: (context, state) {
          if(state is InitialState )
          {
            return Text("${state.a}");
          }
          return Text("0");
        },),
        ElevatedButton(onPressed: () {
          db!.add(IncrementEvent());
        }, child: Text("Increment"))
      ],
    ),
    );
  }
}
