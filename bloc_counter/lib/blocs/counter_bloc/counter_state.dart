import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CounterState extends Equatable {
  CounterState([List props = const []]): super(props);
}

class FooCounterState extends CounterState {
  final int counter;

  FooCounterState(this.counter): super([counter]);
}
