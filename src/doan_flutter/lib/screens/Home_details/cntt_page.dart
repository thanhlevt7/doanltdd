import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class CnttPage extends StatelessWidget {
  const CnttPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NGÀNH CÔNG NGHỆ THÔNG TIN")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "CÔNG NGHỆ THÔNG TIN",
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
              ),
              const Center(
                child: Text(
                  "Mã: 6480201",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "Mục tiêu đào tạo:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              text(
                  "Sau khi làm việc từ 2-3 năm trong chuyên ngành phù hợp với chuyên môn đào tạo, Sinh viên đã tốt nghiệp từ ngành Công nghệ thông tin có khả năng:\n- Là thành viên chủ chốt trong nhóm: phân tích, thiết kế, triển khai và quản trị hệ thống mạng của các cơ quan, tổ chức và doanh nghiệp.\n- Là thành viên chủ chốt trong nhóm: thiết kế, xây dựng và triển khai các dự án phát triển phần mềm.\n- Là thành viên chính trong hoạt động tư vấn kỹ thuật, tư vấn giải pháp tin học hóa trong cơ quan, tổ chức và doanh nghiệp."),
              Image.network(
                  "http://caothang.edu.vn/uploads/images/Tuyen_Sinh/CNTT.JPG"),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Chuẩn đầu ra của sinh viên:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              text(
                  "Sau khi tốt nghiệp chương trình đào tạo ngành Công Nghệ Thông Tin sinh viên sẽ làm được:\n- Có động cơ nghề nghiệp đúng đắn, tuân thủ và tôn trọng chuẩn mực, đạo đức nghề nghiệp, chịu trách nhiệm với công việc của cá nhân.\n- Chọn lựa, áp dụng các kiến thức đại cương và kiến thức cơ sở của ngành đào tạo để giải quyết các vấn đề thực tiễn trong công nghệ thông tin.\n- Có ý thức học tập và tự rèn luyện để nâng cao trình độ chuyên môn sẵn sàng đáp ứng mọi yêu cầu của công việc. Dễ dàng tiếp cận công nghệ mới đáp ứng nhu cầu phát triển của xã hội và tiếp tục học tập ở trình độ cao hơn.\n-  Áp dụng một cách hiệu quả các kỹ năng mềm trong công việc như: kỹ năng giao tiếp, làm việc nhóm, trình bày vấn đề kỹ thuật, viết báo cáo, tổ chức nơi làm việc, kỹ năng giải quyết vấn đề.\n- Đọc và hiểu tốt các tài liệu hướng dẫn bằng tiếng Anh liên quan đến chuyên ngành công nghệ thông tin.\n- Sử dụng thành thạo ít nhất  hai ngôn ngữ lập trình (C++/ C#/ PHP/ Java/ Python), ít nhất một hệ quản trị cơ sở dữ liệu phổ biến (SQL Server, MySQL).\n- Lắp ráp, cài đặt các phần mềm và xử lý các sự cố thường gặp của máy tính."),
              const Text(
                "Chuyên ngành Công nghệ lập trình ứng dụng web:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              text(
                  "- Phân tích các yêu cầu dự án về xây dựng, triển khai các hệ thống Website.\n- Áp dụng thành thạo các ngôn ngữ, công nghệ để phát triển các ứng dụng Website, dịch vụ Website.\n- Thiết kế, xây dựng và triển khai các ứng dụng trên nền tảng web cho các cơ quan, trường học và doanh nghiệp."),
            ],
          ),
        ),
      ),
    );
  }
}
