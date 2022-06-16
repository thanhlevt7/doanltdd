import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_flutter/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  User? user = FirebaseAuth.instance.currentUser;
  var newPassword = "";
  UserModel loggedInUser = UserModel();
  final data = FirebaseFirestore.instance;
  @override
  void initState() {
    super.initState();
    data.collection("users").doc(user!.uid).get().then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  final gmail = TextEditingController();
  final passcuController = TextEditingController();
  final passmoiController = TextEditingController();
  void dispore() {
    super.dispose();
    gmail.dispose();
    passcuController.dispose();
    passmoiController.dispose();
  }

  changePassword() async {
    await user!.updatePassword(newPassword);
    await data
        .collection("users")
        .doc(user!.uid)
        .update({'password': newPassword});
    FirebaseAuth.instance.signOut();
    Navigator.pushNamed(context, "/");
    Fluttertoast.showToast(
        msg: "Password đã thay đổi thành công.. Đăng nhập lại!");
  }

  @override
  Widget build(BuildContext context) {
    gmail.text = "${loggedInUser.email}";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          foregroundColor: Colors.black, title: const Text("Đổi mật khẩu")),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            buildTextField(a: true, title: 'Email', controller: gmail),
            buildTextField(
                a: false,
                title: 'Mật khẩu cũ',
                b: "Nhập mật khẩu cũ",
                controller: passcuController,
                dieukien: (value) {
                  if (passcuController.text != "${loggedInUser.password}") {
                    return "Mật khẩu cũ không đúng";
                  }
                  return null;
                }),
            buildTextField(
                dieukien: (value) {
                  if (passmoiController.text.length < 6) {
                    return "Mật khẩu ít nhất 6 ký tự";
                  }
                  if (passmoiController.text == passcuController.text) {
                    return "Mật khẩu mới phải khác mật khẩu cũ";
                  }
                },
                a: false,
                title: 'Mật khẩu mới',
                b: "Nhập mật khẩu mới",
                controller: passmoiController),
            const SizedBox(
              height: 250.0,
            ),
            InkWell(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    newPassword = passmoiController.text;
                  });
                  changePassword();
                }
                print(passcuController.text);
                print(passmoiController.text);
                print(newPassword);
              },
              child: Container(
                height: 50,
                width: 250,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Cập nhật",
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

  Widget buildTextField({title, controller, required bool a, b, dieukien}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
          validator: dieukien,
          readOnly: a,
          controller: controller,
          decoration: InputDecoration(
            hintText: b,
            contentPadding: const EdgeInsets.only(bottom: 3),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: title,
            labelStyle: const TextStyle(fontSize: 25),
          )),
    );
  }
}
