import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AnimalLiveState extends Equatable {
  AnimalLiveState([List props = const <dynamic>[]]) : super(props);
}

class ShowingCat extends AnimalLiveState {
  final String url = "https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
}

class ShowingDog extends AnimalLiveState {
  final String url = "https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313__340.jpg";
}
