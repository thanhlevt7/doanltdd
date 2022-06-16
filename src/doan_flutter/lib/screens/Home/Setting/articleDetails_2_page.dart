import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class ArticleDetails2 extends StatelessWidget {
  const ArticleDetails2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/icons/anhhung.png",
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Ngôi trường mang tên vị anh hùng dân tộc",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text("Ngày: 29-10-2011 | Lượt xem: 14426",
                  style: TextStyle(
                      fontSize: 14, color: Colors.black.withOpacity(0.5))),
            ),
            const SizedBox(
              height: 10,
            ),
            text(
                "   Năm 1885, hưởng ứng chiếu Cần Vương của vua Hàm Nghi, Cao Thắng chiêu mộ lực lượng cùng em ruột là Cao Đạt đem 60 người đến hợp tác với Phan Đình Phùng đánh Pháp và được phong chức Quản cơ. Năm 1887, khi Phan Đình Phùng ra Bắc liên lạc với các lực lượng kháng Pháp, Cao Thắng được giao quyền chỉ huy nghĩa quân."),
            text(
                "   Khi mới 10 tuổi, Cao Thắng đã đi theo Đội Lựu (Trần Quang Cán) làm liên lạc cho nghĩa quân mà triều đình Huế gọi là giặc Cờ Vàng. Năm 1885, hưởng ứng chiếu Cần Vương của vua Hàm Nghi, Cao Thắng chiêu mộ lực lượng cùng em ruột là Cao Đạt đem 60 người đến hợp tác với Phan Đình Phùng đánh Pháp và được phong chức Quản cơ. Năm 1887, khi Phan Đình Phùng ra Bắc liên lạc với các lực lượng kháng Pháp, Cao Thắng được giao quyền chỉ huy nghĩa quân."),
            text(
                "   Nhà sử học Phạm Văn Sơn kể lại: Khó khăn nhất đối với nghĩa quân lúc bấy giờ là vấn đề vũ khí. Kinh nghiệm cho thấy gươm giáo, gậy guộc không chống nổi súng đồng, cho nên Cao Thắng liền nghĩ cách chế tạo súng đạn...Trong một trận giáp chiến ở Hương Sơn - Nghệ An, Cao Thắng đoạt được 17 khẩu súng bắn mau của quân Pháp, ông liền cho thợ rèn ở hai làng Vân Chàng và Trung Lương (Hà Tĩnh) lấy súng làm mẫu...Sau mấy tháng ròng đúc được 350 khẩu như hệt kiểu súng năm 1874 của Pháp."),
            text(
                "    Ngoài chế tạo vũ khí, ông còn xây dựng được một đội quân có tính chiến đấu cao, kỷ luật nghiêm, làm giặc Pháp khiếp đảm. Tháng 9 năm 1889, Phan Đình Phùng trở về căn cứ, cử Cao Thắng làm tổng chỉ huy nghĩa quân và thu được nhiều thắng lợi trong những năm 1890 - 1891. Năm 1893, trong trận đánh Đồn Nu (Thanh Xuân - Thanh Chương - Nghệ An), ông bị trúng đạn và hy sinh lúc mới 29 tuổi."),
            text(
                "   Phan Bội Châu viết trong “Việt Nam vong quốc sử”: Ở hạt Hà Tĩnh, trong khoảng 11 năm, (nhiều người) đã liều mạng đánh nhau với Pháp, vất vả trăm trận đánh trở thành danh tướng một thời, trong số ấy nổi bật có Chưởng doanh nghĩa binh Cao Thắng... Thắng quả cảm, thiện chiến, thấy một cái súng tây mà có thể y theo kiểu chế tạo ra tinh xảo không kém gì của Pháp. Đánh nhau với Pháp, ông đã chém được đầu những quan một, quan hai của Pháp, quân Pháp đã phải khuyên nhau hễ gặp Thắng là phải tránh đi. Giá mà trong nước có được mấy trăm ông Thắng thì người Pháp chả phải rút về Tây ư?... Thắng chết, người Pháp đốt chỗ làng (ông) quật mộ ông lên... Tiếc thay! (Nguyễn) Chanh, Thắng chết rồi, Hà Tĩnh không có danh tướng nữa."),
            Column(
              children: [
                Image.network(
                  "http://caothang.edu.vn/uploads/images/gioi_thieu/sungcaothang1.jpg",
                  width: 300,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    "Kiểu súng năm 1874 của Pháp",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Image.network(
                  "http://caothang.edu.vn/uploads/images/gioi_thieu/sungcaothang.jpg",
                  width: 300,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    "Súng do ông Cao Thắng chế tạo",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
            text(
                "  Cái chết của Cao Thắng đã gây xúc động lớn trong nghĩa quân. Chính tay cụ Phan Đình Phùng viết hai câu đối và đọc bài văn tế thống thiết:"),
            text(
                "- Thôi! Thôi!Cửa tía lầu vàng đành kẻ khuất, đem thân bách chiến, để tiếng thơm cho tỏ mặt anh hùng.Súng đồng gươm bạc mặc người còn, truyền lệnh ba quân, thét hơi mạnh để xây nền thịnh trị.Thương ôi là thương!Kể sao xiết kể!"),
            Container(
              height: 2,
              color: const Color(0xffc4c4c4),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icons/avatar.png",
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Thành lễ"),
                        Text("Comment_1"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icons/avatar.png",
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Thành lễ"),
                        Text("Comment_2"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icons/avatar.png",
                    height: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      color: const Color(0xffD9D9D9),
                      height: 50,
                      width: 300,
                      child: const TextField(
                        decoration: InputDecoration(
                            label: Text("Viết bình luận"),
                            labelStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.red)),
                      )),
                  Image.asset(
                    "assets/images/icons/send.png",
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
