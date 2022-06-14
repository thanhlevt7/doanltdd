import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_flutter/constant.dart';
import 'package:doan_flutter/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  final data = FirebaseFirestore.instance;
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  updateInformation() async {
    await data
        .collection("users")
        .doc(user!.uid)
        .update({'fullname': name.text});
  }

  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    name.text = "${loggedInUser.fullname}";
    email.text = "${loggedInUser.email}";
    phone.text = "0348340873";
    address.text = "Bà rịa vũng tàu";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text(
            "Chỉnh sửa thông tin",
            style: TextStyle(fontSize: 25),
          )),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/icons/avatar.png",
                  height: 100,
                ),
                Positioned(
                  right: 10,
                  bottom: 0,
                  child: InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/icons/camera.png"),
                    ),
                  ),
                )
              ],
            ),
            Text("${loggedInUser.fullname}",
                style: const TextStyle(fontSize: 25)),
            buildTextField(title: "Tên hiển thị", controller: name, a: false),
            buildTextField(title: "Email", controller: email, a: true),
            buildTextField(title: "Số điện thoại", controller: phone, a: false),
            buildTextField(title: "Địa chỉ", controller: address, a: false),
            const SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                updateInformation();
              },
              child: Container(
                height: 50,
                width: 250,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Lưu thông tin",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField({title, controller, required bool a}) {
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: TextField(
          readOnly: a,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 3),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: title,
            labelStyle: const TextStyle(fontSize: 25),
          )),
    );
  }
}
