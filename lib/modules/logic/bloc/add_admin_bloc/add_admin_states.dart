import 'package:image_picker/image_picker.dart';

abstract class AddAdminStates {}

class AddAdminInitialState extends AddAdminStates {}

class AddAdminOpenGalleryCameraState extends AddAdminStates {
  XFile? image;
  Future<void> openGalleryCamera(ImageSource imageSource) async {
    ImagePicker imagePicker = ImagePicker();
    image = await imagePicker.pickImage(source: imageSource);
  }
}

class AddAdminValidateState extends AddAdminStates {}

class AddAdminInValidateState extends AddAdminStates {
  String? errorMsg;
  AddAdminInValidateState({this.errorMsg});
}
