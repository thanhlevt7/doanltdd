import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class NewsCommented extends StatefulWidget {
  const NewsCommented({Key? key}) : super(key: key);

  @override
  State<NewsCommented> createState() => _NewsCommentedState();
}

class _NewsCommentedState extends State<NewsCommented> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.black, title: const Text("Tin tức đã bình luận")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Tin đã bình luận",
                style: TextStyle(fontSize: 25, color: Colors.red)),
          ),
          buildListTile(
              img: "assets/images/icons/quatrinh.png",
              titles: "Quá trình xây dụng trường",
              datevaview: "Ngày 27-05-2022|Lượt xem :359",
              sup:
                  "NĂM 1907: Lúc đầu nhà trường chưa được trang bị đầy đủ nên phần thực hành..."),
          const SizedBox(
            height: 20.0,
          ),
          buildListTile(
              img: "assets/images/icons/thongtin1.png",
              titles:
                  "Đội ngũ giảng viên ,công nhân viên Trường cao đẳng kỹ thuật Cao Thắng",
              datevaview: "Ngày 27-05-2022|Lượt xem :359",
              sup: "Giới thiệu đội ngũ giảng viên, công nhân viên..."),
        ],
      ),
    );
  }
}
