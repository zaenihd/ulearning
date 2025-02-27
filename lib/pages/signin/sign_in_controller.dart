import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning/pages/signin/bloc/signin_bloc.dart';

class SignInController {
  final BuildContext context;
  const SignInController({required this.context});

  void handleSignIn(String type) {
    try {
      if (type == "email") {
        final state = context.read<SigninBloc>().state;
        String emailAddress = state.email;
        String pass = state.pass;
        if (emailAddress.isEmpty) {}

        if (pass.isEmpty) {}
      }
    } catch (e) {}
  }
}
