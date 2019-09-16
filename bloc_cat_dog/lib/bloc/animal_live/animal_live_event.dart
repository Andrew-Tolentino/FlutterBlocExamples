import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AnimalLiveEvent extends Equatable {
  AnimalLiveEvent([List props = const <dynamic>[]]) : super(props);
}

class ShowCat extends AnimalLiveEvent {

}

class ShowDog extends AnimalLiveEvent {

}
