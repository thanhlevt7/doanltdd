import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({Key? key}) : super(key: key);

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
                      "TRUNG TÂM",
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'TRUNG TÂM',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Ngày tạo: 13/05/2000 | Lượt xem: 340306',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              list("Trung tâm tin học",
                  "Lầu 7 dãy nhà F\nWebsite: ttth.caothang.edu.vn"),
              list("Trung tâm ngoại ngữ",
                  "Phòng Giáo viên - Tầng trệt - dãy nhà E\nWebsite: englishcenter.caothang.edu.vn"),
              list("Trung tâm ĐT Thường Xuyên - Ngắn Hạn",
                  "Phòng ghi danh: 65 Huỳnh Thúc Kháng, P. Bến Nghé, Q.1, TP. HCM - Cổng Nam Kỳ Khởi Nghĩa.\nWebsite: txnh.caothang.edu.vn"),
             
              const SizedBox(
                height: 20,
              )
            ]),
      ),
    );
  }

  Widget list(title, sup1) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
            child: Text(sup1),
          )
        ],
      );
}
