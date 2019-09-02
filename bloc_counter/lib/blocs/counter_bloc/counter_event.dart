import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';


/**
 * We have our abstract class be a child of Equatable to allow use to compare objects without overriding the == operator
 */

@immutable
abstract class CounterEvent extends Equatable {
  // Constructor
  CounterEvent([List props = const []]): super(props);
}

class CounterIncrement extends CounterEvent {

}

class CounterDecrement extends CounterEvent {

}