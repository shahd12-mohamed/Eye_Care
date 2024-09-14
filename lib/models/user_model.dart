class UserModel {
  String? phone;
  String? email;
  String? name;
  String? age;
  String? uid;
  String?userType;
  bool isEmailVerified=false;

  UserModel({
    this.uid,
    this.name,
    this.email,
    this.phone,
    this.age,

  this.userType,
});

  UserModel.fromJson(Map<String,dynamic> json){
    email=json['email'];
    name=json['name'];
    phone=json['phone'];
    age=json['age'];
    uid=json['uid'];
    userType= json['userType'];
    isEmailVerified=json['isEmailVerified'];
  }

  Map<String,dynamic> toMap(){
    return {
      'name':name,
      'phone':phone,
      'age':age,
      'email':email,
      'uid':uid,
      'userType':userType,
      'isEmailVerified':isEmailVerified,
    };
  }
}