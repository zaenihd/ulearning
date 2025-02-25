class SigninState {
  final String email;
  final String pass;

  const SigninState({this.email = "", this.pass = ""});

  SigninState copyWith({String? email, String? pass}) {
    return SigninState(email: email ?? this.email, pass: pass ?? this.pass);
  }
}
