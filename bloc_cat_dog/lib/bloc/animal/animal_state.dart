import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class AnimalState extends Equatable {
  AnimalState([List props = const []]): super(props);
}

class ShowingDog extends AnimalState {
  final String url = "https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313__340.jpg";
}

class ShowingCat extends AnimalState {
  final String url = "https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
}