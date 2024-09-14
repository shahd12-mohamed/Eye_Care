
abstract class EyeRegisterStates {}

class EyeRegisterInitialState extends EyeRegisterStates{}
class EyeRegisterLoadingState extends EyeRegisterStates{}
class EyeRegisterSuccessState extends EyeRegisterStates{
  //final ShopLoginModel registerModel;

  EyeRegisterSuccessState(this.valueChoose);
  final valueChoose;
}
class EyeRegisterErrorState extends EyeRegisterStates{
  final String error;
  EyeRegisterErrorState(this.error);
}

class EyeCreateUserSuccessState extends EyeRegisterStates{
  final String userType;
  EyeCreateUserSuccessState(this.userType);
}
class EyeCreateUserErrorState extends EyeRegisterStates{
  final String error;
  EyeCreateUserErrorState(this.error);
}

class RegisterChangePasswordState extends EyeRegisterStates{}
class RegisterChangePassword2State extends EyeRegisterStates{}

class EyeIsDoctorState extends EyeRegisterStates{}
