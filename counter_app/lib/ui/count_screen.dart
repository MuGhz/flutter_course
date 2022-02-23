import '../bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/cubit_counter.dart';

class CountScreen extends StatefulWidget {
  static const routeName = '/counter-screen';
  @override
  _CountScreenState createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Count'),
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                Text('Count result :'),
                SizedBox(height: 20),
                BlocBuilder<CubitCounter, CounterState>(
                    builder: (context, state) {
                  if (state.counterValue < 0) {
                    return Text(
                      'BRR, NEGATIVE ' + state.counterValue.toString(),
                      style: Theme.of(context).textTheme.headline4,
                    );
                  } else if (state.counterValue % 2 == 0) {
                    return Text(
                      'YAAAY ' + state.counterValue.toString(),
                      style: Theme.of(context).textTheme.headline4,
                    );
                  } else if (state.counterValue == 5) {
                    return Text(
                      'HMM, NUMBER 5',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  } else
                    return Text(
                      state.counterValue.toString(),
                      style: Theme.of(context).textTheme.headline4,
                    );
                })
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          floatingActionButton: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: (){
                    // BlocProvider.of<CubitCounter>(context).increment();
                    context.read<CubitCounter>().increment();
                  },
                  // onPressed: () => context.read<CubitCounter>().increment(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: FloatingActionButton(
                  child: const Icon(Icons.remove),
                  onPressed: (){
                    BlocProvider.of<CubitCounter>(context).decrement();
                  },
                  // onPressed: () => context.read<CubitCounter>().decrement(),
                ),
              ),
            ],
          ),
        );
  }
}
