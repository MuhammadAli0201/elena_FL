import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'add_admin_events.dart';
import 'add_admin_states.dart';

class AddAdminBloc extends Bloc<AddAdminEvents, AddAdminStates> {
  AddAdminBloc() : super(AddAdminInitialState()) {
    on<AddAdminOpenGalleryEvent>(((event, emit) async {
      await AddAdminOpenGalleryCameraState()
          .openGalleryCamera(ImageSource.gallery);
    }));
    on<AddAdminOpenCameraEvent>(((event, emit) async {
      await AddAdminOpenGalleryCameraState()
          .openGalleryCamera(ImageSource.camera);
    }));

    on<AddAdminValidationEvent>((event, emit) {
      if (event.showName == '' ||
          event.name == '' ||
          event.surName == '' ||
          event.mobileNumber == '' ||
          event.email == '') {
        emit(AddAdminInValidateState(errorMsg: 'Fill All Fields'));
      } else if (EmailValidator.validate(event.email!) == false) {
        emit(AddAdminInValidateState(errorMsg: 'Invalid Email'));
      } else {
        emit(AddAdminValidateState());
      }
    });
  }
}
