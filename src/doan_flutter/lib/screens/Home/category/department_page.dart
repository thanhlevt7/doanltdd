import 'package:flutter/material.dart';

class DepartmentPage extends StatelessWidget {
  const DepartmentPage({Key? key}) : super(key: key);
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
                      "PHÒNG BAN",
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
                  'GIỚI THIỆU PHÒNG BAN',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Ngày tạo: 13/05/2000 | Lượt xem: 531537',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              list("Phòng Đào tạo",
                  "Điện thoại: 028.38212360 (17)\nEmail: daotao@caothang.edu.vn\nWebsite: daotao.caothang.edu.vn"),
              list("Phòng CTCT-HSSV",
                  "Điện thoại: 028.38212360 (12) \nEmail: ctct.hssv@caothang.edu.vn \nWebsite: ctct.caothang.edu.vn"),
              list("Phòng Hành chính - Quản trị",
                  "Điện thoại: 028.38212360 (11)\nEmail: ktcaothang@caothang.edu.vn\nWebsite: hcqt.caothang.edu.vn"),
              list("Phòng KHCN & HTQT",
                  "Điện thoại: 028.38212360 (16)\nEmail: nguyenphungtan@caothang.edu.vn\nWebsite: khcn.caothang.edu.vn"),
              list("Phòng Tài chính - Kế toán",
                  "Điện thoại:  028.39143051\nWebsite: tckt.caothang.edu.vn"),
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
