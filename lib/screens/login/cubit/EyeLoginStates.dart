
abstract class EyeLoginStates {}

class EyeLoginInitialState extends EyeLoginStates{}
class EyeLoginLoadingState extends EyeLoginStates{}
class EyeLoginSuccessState extends EyeLoginStates{

  final String uid;
  EyeLoginSuccessState(this.uid);
}
class EyeLoginErrorState extends EyeLoginStates{
  final String error;
  EyeLoginErrorState(this.error);
}

class EyeLoginChangePasswordState extends EyeLoginStates{}

class EyeLoginChangeUserState extends EyeLoginStates{}
class EyeLoginTabControllerState extends EyeLoginStates{}