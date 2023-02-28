abstract class EditAdminStates {}

class EditAdminInitialState extends EditAdminStates {}

class EditAdminValidateState extends EditAdminStates {}

class EditAdminInValidateState extends EditAdminStates {
  String? errorMsg;
  EditAdminInValidateState({this.errorMsg});
}
