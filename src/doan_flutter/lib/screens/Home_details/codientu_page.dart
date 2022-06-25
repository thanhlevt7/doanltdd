import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class CodientuPage extends StatelessWidget {
  const CodientuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CÔNG NGHỆ CƠ ĐIỆN TỬ")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "CÔNG NGHỆ CƠ ĐIỆN TỬ ",
                  style: TextStyle(fontSize: 28, color: Colors.red),
                ),
              ),
              const Center(
                child: Text(
                  " Mã: 6510304",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                "Mục tiêu đào tạo:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              text(
                  "- Làm trưởng nhóm bảo trì, lắp đặt, vận hành về cơ điện tử tại các doanh nghiệp.\n- Tổ chức và quản lý nhóm làm việc hiệu quả; tuân thủ tốt tác phong công nghiệp và kỷ luật lao động.\n- Nhận thức được tầm quan trọng của việc học tập suốt đời; sẵn sàng học tiếp các chương trình nhằm nâng cao trình độ chuyên môn."),
              Image.network(
                  "http://caothang.edu.vn/uploads/images/Tuyen_Sinh/CODIENTU(1).JPG"),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Chuẩn đầu ra của sinh viên:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              text(
                  "- Sử dụng thành thạo các thiết bị đo và dụng cụ đồ nghề điện, điện tử, cơ khí.\n- Đọc, hiểu được các bản vẽ, catalogue chuyên ngành cơ điện tử bằng tiếng Anh. \n- Áp dụng được các kiến thức đại cương và kiến thức cơ sở ngành vào các hoạt động kỹ thuật công nghệ điện, điện tử trong phạm vi ứng dụng phù hợp với yêu cầu công việc. \n- Lắp đặt, vận hành tốt các thiết bị cơ điện tử.\n- Chuẩn đoán, sửa chữa, bảo dưỡng hệ thống cơ điện tử.\n- Khai thác ứng dụng dùng: vi điều khiển 8 bit, PLC (S7-200, S7-300).\n- Sử dụng hiệu quả các phần mềm tin học văn phòng, các phần mềm chuyên dùng ngành cơ điện tử. \n- Lập kế hoạch, tổ chức, triển khai công việc. \n- Áp dụng đúng các biện pháp an toàn trong khi làm việc. "),
            ],
          ),
        ),
      ),
    );
  }
}
