import 'package:flutter/material.dart';

class KhoaPage extends StatelessWidget {
  const KhoaPage({Key? key}) : super(key: key);

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
                      "KHOA",
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'GIỚI THIỆU KHOA -BỘ MÔN',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Ngày tạo: 09/07/2010 | Lượt xem:733383',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              list("Khoa Cơ khí",
                  "Điện thoại: 028.38212360 (26)\nEmail: cokhi@caothang.edu.vn \nWebsite: ck.caothang.edu.vn"),
              list("Khoa Cơ khí động lực",
                  "Điện thoại: 028.38212360 (22 & 25)\nEmail:  nguyenngocthanh@caothang.edu.vn\nWebsite: ckdl.caothang.edu.vn"),
              list("Khoa Điện - Điện tử",
                  "Điện thoại: 028.38212360 (21 & 22)\nEmail: pvthanh@caothang.edu.vn\nWebsite: ddt.caothang.edu.vn"),
              list("Khoa Công nghệ Nhiệt - Lạnh",
                  "Điện thoại: 028.38212360 (21 & 22)\nEmail: lequanghuy@caothang.edu.vn\nWebsite: nhietlanh.caothang.edu.vn"),
              list("Khoa Công nghệ Thông tin",
                  "Điện thoại: 028.38212360 (33)\nEmail: nvdzung@caothang.edu.vn\nWebsite: cntt.caothang.edu.vn"),
              list("Khoa Giáo dục đại cương",
                  "Điện thoại: 028.38212360 (19) \nEmail: phamdinhhuan@caothang.edu.vn\nWebsite: gddc.caothang.edu.vn"),
              list("Bộ môn Kinh tế",
                  "Điện thoại:  028.38212360 (24)\nEmail: kinhte@caothang.edu.vn\nWebsite: kinhte.caothang.edu.vn"),
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
