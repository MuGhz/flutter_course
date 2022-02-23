import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_state.dart';
import 'bloc/cubit_counter.dart';
import 'ui/count_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Counter App',
        home: BlocProvider<CubitCounter>(
          create: (context) =>
              CubitCounter(CounterState(counterValue: 0, wasIncremented: true)),
          child: CountScreen(),
        ));
  }
}
