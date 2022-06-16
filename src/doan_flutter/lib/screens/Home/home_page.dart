import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  onTap: () => Navigator.pushNamed(context, "/CategoryPage"),
                  child: Image.asset(
                    "assets/images/icons/danhmuc.png",
                    height: 50,
                  ),
                ),
              ),
              const Text(
                "TRANG CHỦ",
                style: TextStyle(fontSize: 25),
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/Search");
                  },
                  child: const Icon(Icons.search)),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "TIN MỚI NHẤT",
            style: TextStyle(fontSize: 18, color: Colors.red),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: text(
              "Lịch công tác tuần thứ 40 (Từ ngày 30/5/2022 đến ngày 05/6/2022)\nCuộc thi Solar Boat Challenge 2022\nLịch công tác tuần thứ 39 (Từ ngày 23/5/2022 đến ngày 29/5/2022)\nLịch công tác tuần thứ 38 (Từ ngày 16/5/2022 đến ngày 22/5/2022)\nLịch công tác tuần thứ 40 (Từ ngày 09/5/2022 đến ngày 15/5/2022)"),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "NGÀNH NGHỀ ĐÀO TẠO",
            style: TextStyle(fontSize: 18, color: Colors.red),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: text(
              "Công Nghệ Thông Tin\nKỹ Thuật Cơ Khí\nKỹ Thuật Ô Tô\nKỹ Thuật Cơ Điện tử\nQuản Trị Mạng Máy Tính"),
        )
      ]),
    );
  }
}

