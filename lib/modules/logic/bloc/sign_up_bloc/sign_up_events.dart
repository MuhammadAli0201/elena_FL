abstract class SignUpEvents {}

class SignUpValidateEvent extends SignUpEvents {
  String? email;
  String? password;
  bool? check;
  SignUpValidateEvent({this.email, this.password, this.check});
}

class TermsAndConditionsEvent extends SignUpEvents {
  bool? val;
  TermsAndConditionsEvent({this.val});
}

class ShowHidePasswordEvent extends SignUpEvents {
  bool? obsure;
  ShowHidePasswordEvent({this.obsure});
}
