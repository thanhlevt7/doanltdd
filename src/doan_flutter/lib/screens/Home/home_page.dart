import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Stream<QuerySnapshot> comment =
      FirebaseFirestore.instance.collection('baiviet').snapshots();
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/Search");
                    },
                    child: const Icon(Icons.search)),
              ],
            ),
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS24mQ-Xc8G_-0wHo-RCIsZFMZHVdfLnDC11w&usqp=CAU",
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Image.network("https://caothang.edu.vn/uploads/images/Tuyen_Sinh/TS_rieng_2022.jpg"),
          Image.network("https://caothang.edu.vn/uploads/images/Tuyen_Sinh/HB_28042022.png"),
          Image.network("https://caothang.edu.vn/uploads/images/Tuyen_Sinh/THPT_28042022.png"),
          Image.network("https://caothang.edu.vn/uploads/images/Tuyen_Sinh/DGNL_28042022.png"),
          Image.network("https://caothang.edu.vn/uploads/images/Tuyen_Sinh/banner_chat.png"),
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
              "GIỚI THIỆU CÁC NGÀNH, NGHỀ ĐÀO TẠO 2022",
              style: TextStyle(fontSize: 18, color: Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/CnttPage");
                    },
                    child: text("1. Công Nghệ Thông Tin")),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/CokhiPage");
                    },
                    child: text("2. Kỹ Thuật Cơ Khí")),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/OtoPage");
                    },
                    child: text("3.  Kỹ Thuật Ô Tô")),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/CodientuPage");
                    },
                    child: text("4.  Kỹ Thuật Cơ Điện tử")),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/MmtPage");
                    },
                    child: text("5. Quản Trị Mạng Máy Tính")),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "GIỚI THIỆU CHUNG VỀ TRƯỜNG ",
              style: TextStyle(fontSize: 18, color: Colors.red),
            ),
          ),
          SizedBox(
              height: 450,
              child: StreamBuilder<QuerySnapshot>(
                  stream: comment,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return const Text("Something went wrong");
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Text("Loading ...");
                    }
                    final data = snapshot.requireData;
                    return ListView.builder(
                        itemCount: data.size,
                        itemBuilder: (context, index) {
                          return buildListTile(
                            press: () {
                              if (index == 0) {
                                Navigator.pushNamed(
                                    context, "/ArticleDetails2");
                              }
                              if (index == 1) {
                                Navigator.pushNamed(context, "/ArticleDetails");
                              }
                              if (index == 3) {
                                Navigator.pushNamed(
                                    context, "/ArticleDetails3");
                              }
                              if (index == 2) {
                                Navigator.pushNamed(
                                    context, "/ArticleDetails4");
                              }
                            },
                            img: "${data.docs[index]['image']}",
                            titles: "${data.docs[index]['title']}",
                            datevaview: "${data.docs[index]['dataview']}",
                            sup: "${data.docs[index]['content']}",
                          );
                        });
                  })),
          
        ]),
      ),
    );
  }
}
