import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class OtoPage extends StatelessWidget {
  const OtoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CÔNG NGHỆ KỸ THUẬT Ô TÔ")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "CÔNG NGHỆ KỸ THUẬT Ô TÔ",
                  style: TextStyle(fontSize: 28, color: Colors.red),
                ),
              ),
              const Center(
                child: Text(
                  "Mã: 6510202",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "Mục tiêu đào tạo:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              text(
                  "Sau 2 đến 3 năm, người tốt nghiệp có khả năng:\n- Trưởng nhóm trong lĩnh vực bảo dưỡng – chẩn đoán và sửa chữa ô tô.\n- Thành viên chính trong các hoạt động dịch vụ và kinh doanh về lĩnh vực ô tô.\n- Thành viên chính trong các nhóm thiết kế và cải tiến kỹ thuật của lĩnh vực ô tô."),
              Image.network(
                  "http://caothang.edu.vn/uploads/images/Tuyen_Sinh/OTO(1).JPG"),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Chuẩn đầu ra của sinh viên:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              text(
                  "- Vận dụng kiến thức toán học, khoa học, và kỹ thuật để nhận dạng, giải thích nguyên lý làm việc các hệ thống trên ô tô\n- Có khả năng bảo dưỡng, chẩn đoán, sửa chữa ô tô\n- Có khả năng hỗ trợ tính toán và thiết kế các hệ thống, cụm chi tiết trong lĩnh vực Ô tô\n- Có khả năng giao tiếp (viết, nói và bản vẽ, lập bản biểu) trong các môi trường kỹ thuật và phi kỹ thuật; và có khả năng xác định và sử dụng tài liệu phù hợp\n- Có khả năng tiến hành kiểm tra, đo lường, thí nghiệm và phân tích, giải thích kết quả\n- Làm việc nhóm hiệu quả\n- Vận dụng tiếng anh trong các tình huống khác nhau"),
            ],
          ),
        ),
      ),
    );
  }
}
