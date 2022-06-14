import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class NewsWatched extends StatefulWidget {
  const NewsWatched({Key? key}) : super(key: key);

  @override
  State<NewsWatched> createState() => _NewsWatchedState();
}

class _NewsWatchedState extends State<NewsWatched> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.black, title: const Text("Tin tức đã xem")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Tin đã xem",
                style: TextStyle(fontSize: 25, color: Colors.red)),
          ),
          buildListTile(
            img: "assets/images/icons/quatrinh.png",
            titles: "Quá trình xây dụng trường",
            datevaview: "Ngày 27-05-2022|Lượt xem :359",
            sup:
                "NĂM 1907: Lúc đầu nhà trường chưa được trang bị đầy đủ nên phần thực hành...",
              //  press: Navigator.pushNamed(context, "/ArticleDetails"),
          ),
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
