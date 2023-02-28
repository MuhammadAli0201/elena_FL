abstract class EditAdminEvents {}

class EditAdminOpenGalleryEvent extends EditAdminEvents {}

class EditAdminOpenCameraEvent extends EditAdminEvents {}

class EditAdminValidationEvent extends EditAdminEvents {
  String? showName;
  String? name;
  String? surName;
  String? email;
  String? mobileNumber;
  EditAdminValidationEvent(
      {this.showName, this.name, this.surName, this.email, this.mobileNumber});
}
