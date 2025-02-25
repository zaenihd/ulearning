abstract class SigninEvents {
  const SigninEvents();
}

class EmailEvent extends SigninEvents {
  final String email;

  EmailEvent(this.email);
}

class PassEvent extends SigninEvents {
  final String pass;

  PassEvent(this.pass);
}
