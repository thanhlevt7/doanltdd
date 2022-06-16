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
            press: () {
              Navigator.pushNamed(context, "/ArticleDetails");
            },
            img: "assets/images/icons/quatrinh.png",
            titles: "Quá trình xây dụng trường",
            datevaview: "Ngày 27-05-2022|Lượt xem :359",
            sup:
                "NĂM 1907: Lúc đầu nhà trường chưa được trang bị đầy đủ nên phần thực hành...",
          ),
          const SizedBox(
            height: 20.0,
          ),
          buildListTile(
              press: () {
                Navigator.pushNamed(context, "/ArticleDetails2");
              },
              img: "assets/images/icons/anhhung.png",
              titles: "Ngôi trường mang tên vị anh hùng dân tộc",
              datevaview: "Ngày: 29-10-2011 | Lượt xem: 14426",
              sup:
                  "Khi mới 10 tuổi, Cao Thắng đã đi theo Đội Lựu (Trần Quang Cán) làm liên lạc cho nghĩa quân mà triều đình Huế gọi là giặc Cờ Vàng."),
        ],
      ),
    );
  }
}
