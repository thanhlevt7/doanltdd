import 'package:doan_flutter/constant.dart';
import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class Personalnformation extends StatefulWidget {
  const Personalnformation({Key? key}) : super(key: key);

  @override
  State<Personalnformation> createState() => _PersonalnformationState();
}

class _PersonalnformationState extends State<Personalnformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         foregroundColor: Colors.black,
        title: const Text("Thông tin cá nhân"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset(
              "assets/images/icons/avatar.png",
              height: 100,
            ),
          ),
          const Text("Thành Lễ",style: TextStyle(fontSize: 25 )),
          Card(
            margin: const EdgeInsets.all(margin),
            elevation: 5,
            child: Column(children: [
              textInf(title: "Tên hiển thị", text: "Thành lễ"),
              textInf(
                title: "Email :",
                text: "Thanhlevt7@gmail.com",
              ),
              textInf(
                title: "Số điện thoại :",
                text: "0348340873",
              ),
              textInf(
                title: "Địa chỉ :",
                text: "Bà rịa vũng tàu",
              ),
            ]),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: () => Navigator.pushNamed(context, "/editProfile"),
            child: Container(
              height: 50,
              width: 250,
              color: Colors.blue,
              child:const Center(
                child: Text(
                  "Chỉnh sửa thông tin",
                  style: TextStyle(fontSize: 25,color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget textInf({title, text}) {
    return Padding(
      padding: const EdgeInsets.all(padding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 25,
              color: textColor
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              height: 2,
              color: textColor.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
