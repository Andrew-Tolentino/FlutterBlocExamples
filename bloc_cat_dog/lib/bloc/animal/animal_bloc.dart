import 'dart:async';
import 'package:bloc/bloc.dart';
import 'animal_state.dart';
import 'animal_event.dart';

class AnimalBloc extends Bloc<AnimalEvent,AnimalState> {
  @override
  AnimalState get initialState => ShowingCat();

  @override
  Stream<AnimalState> mapEventToState(AnimalEvent event) async* {
    if (event is ShowCat) {
      yield ShowingCat();
    }
    else if (event is ShowDog) {
      yield ShowingDog();
    }
  }

  void showCat() {
    this.dispatch(ShowCat());
  }

  void showDog() {
    this.dispatch(ShowDog());
  }

}