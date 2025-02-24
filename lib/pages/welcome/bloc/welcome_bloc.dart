import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning/pages/welcome/bloc/welcome_events.dart';
import 'package:ulearning/pages/welcome/bloc/welcome_states.dart';

class WelcomeBloc  extends Bloc<WelcomeEvents, WelcomeStates> {
  WelcomeBloc():super(WelcomeStates()){
    log("welcome bloc");
    on<WelcomeEvents>((event, emit){
      emit(WelcomeStates(page: state.page));
    });
  }
}