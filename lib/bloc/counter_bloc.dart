import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<increment>((event, emit)  {
      final currentStateValue=state.count;
      final incrementedValue=currentStateValue+1;
      return emit(CounterState(count: incrementedValue));
    });
    on<decrement>((event, emit) {
      final currentStateValue=state.count;
      final decrementedValue=currentStateValue-1;
      return emit(CounterState(count: decrementedValue));
    });
      // TODO: implement event handler

  }
}
