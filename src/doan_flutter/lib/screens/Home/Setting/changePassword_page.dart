import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final gmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    gmail.text = "Thanhlevt7@gmail.com";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          foregroundColor: Colors.black, title: const Text("Đổi mật khẩu")),
      body: Column(
        children: [
          buildTextField(a: true, title: 'Email', controller: gmail),
          buildTextField(a: false, title: 'Mật khẩu cũ', b: "Nhập mật khẩu cũ"),
          buildTextField(
              a: false, title: 'Mật khẩu mới', b: "Nhập mật khẩu mới"),
          const SizedBox(
            height: 250.0,
          ),
          Container(
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
        ],
      ),
    );
  }

  Widget buildTextField({title, controller, required bool a, b}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
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
