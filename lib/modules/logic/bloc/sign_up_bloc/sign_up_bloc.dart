import 'package:elena_video_app/modules/logic/bloc/sign_up_bloc/sign_up_events.dart';
import 'package:elena_video_app/modules/logic/bloc/sign_up_bloc/sign_up_states.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Bloc<SignUpEvents, SignUpStates> {
  SignUpBloc() : super(SignUpInitialState()) {
    on<SignUpValidateEvent>((event, emit) {
      if (event.password == '' || event.email == '') {
        emit(SignUpInValidateState(errorMsg: "Kindly Enter All Fields"));
      } else if (EmailValidator.validate(event.email!) == false) {
        emit(SignUpInValidateState(errorMsg: "Invalid Email Format"));
      } else if (event.check == false) {
        emit(SignUpInValidateState(
            errorMsg: "You Have to accept terms and conditions"));
      } else {
        emit(SignUpValidateState());
      }
    });
    on<TermsAndConditionsEvent>((event, emit) {
      if (event.val == true) {
        emit(TermsAndConditionsCheckedState());
      } else {
        emit(TermsAndConditionsUncheckedState());
      }
    });
    on<ShowHidePasswordEvent>((event, emit) {
      if (event.obsure == false) {
        emit(ShowPasswordState());
      } else {
        emit(HidePasswordState());
      }
    });
  }
}
