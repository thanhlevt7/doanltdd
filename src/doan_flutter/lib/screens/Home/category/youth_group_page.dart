import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class YouthGroupPage extends StatelessWidget {
  const YouthGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              "assets/images/icons/logoTruong.png",
              width: 50.0,
              height: 50.0,
            ),
            const Text(
              "Trường Cao đẳng Kỹ thuật CAO THẮNG",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color(0xFF1FB841),
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, "/CategoryPage"),
                        child: Image.asset(
                          "assets/images/icons/danhmuc.png",
                          height: 50,
                        ),
                      ),
                    ),
                    const Text(
                      "ĐOÀN THANH NIÊN",
                      style: TextStyle(fontSize: 25),
                    ),
                    InkWell(
                        onTap: () {
                          print("A");
                        },
                        child: const Icon(Icons.search)),
                  ],
                ),
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
            ]),
      ),
    );
  }
}
