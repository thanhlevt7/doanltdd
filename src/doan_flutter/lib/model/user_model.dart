class UserModel {
  String? uid;
  String? email;
  String? password;
  String? fullname;

  UserModel({this.uid, this.email, this.password, this.fullname});

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      password: map['password'],
      fullname: map['fullname'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'password': password,
      'fullname': fullname,
    };  
  }
}
