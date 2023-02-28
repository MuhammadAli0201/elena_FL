abstract class AddAdminEvents {}

class AddAdminOpenGalleryEvent extends AddAdminEvents {}

class AddAdminOpenCameraEvent extends AddAdminEvents {}

class AddAdminValidationEvent extends AddAdminEvents {
  String? showName;
  String? name;
  String? surName;
  String? email;
  String? mobileNumber;
  AddAdminValidationEvent(
      {this.showName, this.name, this.surName, this.email, this.mobileNumber});
}
