class UserModel {
  String? uid;
  String? email;
  String? password;
  String? fullname;
  String? phone;
  String? address;

  UserModel(
      {this.uid,
      this.email,
      this.password,
      this.fullname,
      this.phone,
      this.address});

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      password: map['password'],
      fullname: map['fullname'],
      phone: map['phone'],
      address: map['address'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'password': password,
      'fullname': fullname,
      'phone':phone,
      'address':address,
    };
  }
}
