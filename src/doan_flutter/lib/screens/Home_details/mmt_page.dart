import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class MmtPage extends StatelessWidget {
  const MmtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QUẢN TRỊ MẠNG MÁY TÍNH")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "QUẢN TRỊ MẠNG MÁY TÍNH",
                  style: TextStyle(fontSize: 28, color: Colors.red),
                ),
              ),
              const Center(
                child: Text(
                  "Mã: 6480209",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "Mục tiêu đào tạo:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              text(
                  "Sau khi làm việc từ 2-3 năm trong chuyên ngành phù hợp với chuyên môn đào tạo, Sinh viên tốt nghiệp Quản Trị Mạng Máy Tính có khả năng:\n- Là nhân viên lành nghề trong công việc: quản trị hệ thống mạng của các cơ quan, tổ chức và doanh nghiệp.\n- Là nhân viên lành nghề trong nhóm: phân tích, thiết kế và triển khai các giải pháp hạ tầng hệ thống mạng.\n- Là nhân viên lành nghề trong hoạt động tư vấn kỹ thuật, tư vấn giải pháp tin học hóa trong cơ quan, tổ chức và doanh nghiệp."),
              Image.network(
                  "https://caothang.edu.vn/uploads/images/gioi_thieu/mang_may_tinh.jpg"),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Chuẩn đầu ra của sinh viên:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              text(
                  "Sau khi tốt nghiệp chương trình đào tạo Quản Trị Mạng Máy Tính sinh viên sẽ làm được:\n- Có động cơ nghề nghiệp đúng đắn, tuân thủ và tôn trọng chuẩn mực, đạo đức nghề nghiệp, chịu trách nhiệm với công việc của cá nhân.\n- Có ý thức học tập và tự rèn luyện để nâng cao trình độ chuyên môn.\n-  Áp dụng một cách hiệu quả các kỹ năng mềm trong công việc như: kỹ năng giao tiếp, làm việc nhóm, trình bày vấn đề kỹ thuật, viết báo cáo.\n- Đọc và hiểu tốt các tài liệu hướng dẫn bằng tiếng Anh liên quan đến chuyên ngành công nghệ thông tin.\n- Lắp ráp, cài đặt các phần mềm và xử lý các sự cố thường gặp của máy tính."),
            ],
          ),
        ),
      ),
    );
  }
}
