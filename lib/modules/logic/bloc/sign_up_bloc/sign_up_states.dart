abstract class SignUpStates {}

class SignUpInitialState extends SignUpStates {}

class SignUpValidateState extends SignUpStates {}

class SignUpInValidateState extends SignUpStates {
  String? errorMsg;
  SignUpInValidateState({this.errorMsg});
}

class TermsAndConditionsCheckedState extends SignUpStates {}

class TermsAndConditionsUncheckedState extends SignUpStates {}

class ShowPasswordState extends SignUpStates {}

class HidePasswordState extends SignUpStates {}
