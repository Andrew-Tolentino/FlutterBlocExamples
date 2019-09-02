import 'counter_state.dart';
import 'counter_event.dart';
import 'package:bloc/bloc.dart';
import 'dart:async';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  // Initial state of the counter is 0
  CounterState get initialState => FooCounterState(0);

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    // Apply Business Logic here

    // If the event triggered increases the counter
    if (event is CounterIncrement) {
      // Type cast CounterState as an IncrementedState
      int newCounter = (currentState as FooCounterState).counter + 1;
      yield FooCounterState(newCounter);
    }

    // If the event triggered decreases the counter
    else if (event is CounterDecrement) {
      // Type cast CounterState as an IncrementedState
      int newCounter = (currentState as FooCounterState).counter - 1;
      yield FooCounterState(newCounter);
    }

  }

  @override
  void onTransition(Transition<CounterEvent, CounterState> transition) {
    // TODO: implement onTransition
    print('{ currenState: ${transition.currentState}\n event: ${transition.event}\n nextState: ${transition.nextState}');
    super.onTransition(transition);
  }

}

