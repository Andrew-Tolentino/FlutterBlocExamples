import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class AnimalLiveBloc extends Bloc<AnimalLiveEvent, AnimalLiveState> {
  @override
  AnimalLiveState get initialState => ShowingCat();

  void showCat() {
    if (!(this.currentState is ShowingCat)) {
      dispatch(ShowCat());
    }
  }

  void showDog() {
    if (!(this.currentState is ShowingDog)) {
      dispatch(ShowDog());
    }
  }

  @override
  Stream<AnimalLiveState> mapEventToState(
    AnimalLiveEvent event,
  ) async* {
    if (event is ShowCat) {
      print("Show Cat");
      yield ShowingCat();
    }
    else if (event is ShowDog) {
      print("Show Dog");
      yield ShowingDog();
    }
  }
}
