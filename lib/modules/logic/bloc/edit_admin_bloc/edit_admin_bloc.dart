import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_admin_events.dart';
import 'edit_admin_states.dart';

class EditAdminBloc extends Bloc<EditAdminEvents, EditAdminStates> {
  EditAdminBloc() : super(EditAdminInitialState()) {
    on<EditAdminValidationEvent>((event, emit) {
      if (event.showName == '' ||
          event.name == '' ||
          event.surName == '' ||
          event.mobileNumber == '' ||
          event.email == '') {
        emit(EditAdminInValidateState(errorMsg: 'Fill All Fields'));
      } else if (EmailValidator.validate(event.email!) == false) {
        emit(EditAdminInValidateState(errorMsg: 'Invalid Email'));
      } else {
        emit(EditAdminValidateState());
      }
    });
  }
}
