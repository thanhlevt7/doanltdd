import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class CokhiPage extends StatelessWidget {
  const CokhiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CÔNG NGHỆ KỸ THUẬT CƠ KHÍ")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "CÔNG NGHỆ KỸ THUẬT CƠ KHÍ",
                  style: TextStyle(fontSize: 28, color: Colors.red),
                ),
              ),
              const Center(
                child: Text(
                  " Mã: 6510201",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "Mục tiêu đào tạo:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              text(
                  "Sinh viên sau khi tốt nghiệp ra trường làm việc từ 2 đến 3 năm có khả năng:\n- Thiết kế, chế tạo, cải tiến các sản phẩm cơ khí.\n- Tiếp nhận và ứng dụng công nghệ mới.\n- Đảm trách các hoạt động dịch vụ cơ khí.\n- Làm việc chuyên nghiệp, có trách nhiệm, có đạo đức nghề nghiệp."),
              Image.network(
                  "https://caothang.edu.vn/uploads/images/Tuyen_Sinh/Caothang-Emco.jpg"),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Chuẩn đầu ra của sinh viên:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              text(
                  "Ngay khi tốt nghiệp sinh viên có khả năng:\n- Vận dụng kiến thức cơ sở ngành, toán học, tin học, kỹ năng kỹ thuật và các trang thiết bị/máy công cụ hiện đại để thực hiện các hoạt động gia công cơ khí.\n- Thiết kế giải pháp cho các vấn đề gia công cơ khí và hỗ trợ thiết kế các hệ thống, thành phần hoặc thiết kế quy trình thuộc lĩnh vực cơ khí.\n- Vận dụng các tiêu chuẩn đo lường/kiểm tra để thực hiện, phân tích, đánh giá các thí nghiệm.\n- Vận dụng kỹ năng truyền đạt (nói, viết, vẽ bản vẽ, lập bảng biểu) trong kỹ thuật và phi kỹ thuật; xác định và sử dụng tài liệu thích hợp.\n- Làm việc nhóm hiệu quả."),
            ],
          ),
        ),
      ),
    );
  }
}
