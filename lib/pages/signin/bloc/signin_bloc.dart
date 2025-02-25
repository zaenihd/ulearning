import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning/pages/signin/bloc/signin_events.dart';
import 'package:ulearning/pages/signin/bloc/signin_state.dart';

class SigninBloc extends Bloc<SigninEvents, SigninState> {
  SigninBloc() : super(const SigninState()) {
    on<EmailEvent>(_emailEvent);
    on<PassEvent>(_passEvent );
  }

  void _emailEvent(EmailEvent event, Emitter<SigninState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _passEvent(PassEvent event, Emitter<SigninState> emit) {
    emit(state.copyWith(pass: event.pass));
  }
}
