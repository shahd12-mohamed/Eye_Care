
abstract class EyeClinicalStates {}

class EyeClinicalInitialState extends EyeClinicalStates{}
class EyeClinicalLoadingState extends EyeClinicalStates{}
class EyeClinicalSuccessState extends EyeClinicalStates{
  //final ShopLoginModel loginModelEye;

  //EyeLoginSuccessState(this.loginModelEye);

}
class EyeClinicalErrorState extends EyeClinicalStates{
  final String error;
  EyeClinicalErrorState(this.error);
}