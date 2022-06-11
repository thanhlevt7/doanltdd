import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: Colors.black,
        title: Center(child: Text("Thông báo")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Tin tức mới :",
                style: TextStyle(fontSize: 25, color: Colors.red)),
          ),
          buildListTile(
              img: "assets/images/icons/quatrinh.png",
              titles: "Quá trình xây dụng trường",
              datevaview: "Ngày 12-06-2022|Lượt xem :2",
              sup:
                  "NĂM 1907: Lúc đầu nhà trường chưa được trang bị đầy đủ nên phần thực hành..."),
          const SizedBox(
            height: 20.0,
          ),
          buildListTile(
              img: "assets/images/icons/thongtin1.png",
              titles:
                  "Đội ngũ giảng viên ,công nhân viên Trường cao đẳng kỹ thuật Cao Thắng",
              datevaview: "Ngày 12-06-2022|Lượt xem :1",
              sup: "Giới thiệu đội ngũ giảng viên, công nhân viên..."),
        ],
      ),
    );
  }
}
