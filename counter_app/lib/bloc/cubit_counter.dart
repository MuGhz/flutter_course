import 'package:counter_app/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCounter extends Cubit<CounterState> {
  CubitCounter(CounterState initialState) : super(initialState);
  
  void increment() => emit(
    CounterState(counterValue: state.counterValue + 1, wasIncremented: true));
  void decrement() => emit(
    CounterState(counterValue: state.counterValue - 1, wasIncremented: false));
}
