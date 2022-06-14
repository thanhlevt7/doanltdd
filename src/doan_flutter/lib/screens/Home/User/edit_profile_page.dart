import 'package:doan_flutter/constant.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final name = TextEditingController();
  final gmail = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    name.text = "Thành Lễ";
    gmail.text = "Thanhlevt7@gmail.com";
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
            const Text("Thành Lễ", style: TextStyle(fontSize: 25)),
            buildTextField(title: "Tên hiển thị", controller: name, a: false),
            buildTextField(title: "Gmail", controller: gmail, a: true),
            buildTextField(title: "Số điện thoại", controller: phone, a: false),
            buildTextField(title: "Địa chỉ", controller: address, a: false),
            const SizedBox(
              height: 20.0,
            ),
            Container(
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
