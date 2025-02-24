import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning/app_events.dart';
import 'package:ulearning/app_state.dart';

class AppBlocs extends Bloc<AppEvents, AppState> {
  AppBlocs() : super(InitStates()) {
    log("appbloc");
    on<Increment>((event, emit) {
      print("i called");
      emit(AppState(counter: state.counter + 1));

    });
    on<Decrement>((event, emit) {
      print("i called -");
      emit(AppState(counter: state.counter -1));

    });
  }
}
