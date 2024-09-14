abstract class EyeStates{}

class EyeInatialState extends EyeStates{}
class EyeGetUserSuccessState extends EyeStates{}
class EyeGetUserErrorState extends EyeStates{
  String error;
  EyeGetUserErrorState(this.error);
}
class EyeChangeModeState extends EyeStates{}

class EyeChangeButtonyesState extends EyeStates{}
class EyeChangeButtonnoState extends EyeStates{}
class EyeChangeButtonLogState extends EyeStates{}

class EyeChangePassword1State extends EyeStates{}
class EyeChangePassword2State extends EyeStates{}

class AppInsertDatabaseState extends EyeStates{}
class AppGetDatabaseLodingState extends EyeStates{}
class AppGetDatabaseState extends EyeStates{}

class EyeChangeRememberMe extends EyeStates{}
class EyeChangeAddImage extends EyeStates{}
class EyeInitialImageState extends EyeStates{}
class EyeImageLoadingState extends EyeStates{
  final String imagePath;
   EyeImageLoadingState(this.imagePath);
}

class EyeImageErrorState extends EyeStates{
  final String errorMessage;
  EyeImageErrorState(this.errorMessage);
}

class ImageClassificationLoading extends EyeStates{}

class EyeChangeButtonAppoint1State extends EyeStates{}
class EyeChangeButtonAppoint2State extends EyeStates{}
class EyeChangeButtonAppoint3State extends EyeStates{}
class EyeChangeButtonAppoint4State extends EyeStates{}
class EyeChangeButtonAppoint5State extends EyeStates{}
class EyeChangeButtonAppoint6State extends EyeStates{}
class EyeChangeButtonAppoint7State extends EyeStates{}

class EyeChangeUserState extends EyeStates{}


