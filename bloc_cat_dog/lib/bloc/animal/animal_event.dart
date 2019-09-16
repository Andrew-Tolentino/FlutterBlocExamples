import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class AnimalEvent extends Equatable {
  AnimalEvent([List props = const []]): super(props);
}

class ShowDog extends AnimalEvent {

}

class ShowCat extends AnimalEvent {

}