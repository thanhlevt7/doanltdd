import 'package:flutter/material.dart';

class ArticleDetails extends StatefulWidget {
  const ArticleDetails({Key? key}) : super(key: key);

  @override
  State<ArticleDetails> createState() => _ArticleDetailsState();
}

class _ArticleDetailsState extends State<ArticleDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/icons/quatrinh.png",
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Quá trình xây dựng trường",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text("Ngày 27-05-2022|Lượt xem :359",
                  style: TextStyle(
                      fontSize: 14, color: Colors.black.withOpacity(0.5))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: const [
                  Text(
                      "NĂM 1907:  Lúc đầu nhà trường chưa được trang bị đầy đủ nên phần thực hành phải nhờ đến cơ xưởng của trường Thực Nghiệp, tại đường Hồng Thập Tự bây giờ."),
                  Text(
                      "NĂM 1908: Giảng đường phía đại lộ De lattre de Tassigry được xây cất thêm: ở trên làm ký túc xá, ở dưới làm lớp học và kho vật liệu, máy móc. Chương trình học gồm có nhiều môn trong kỹ nghệ, nên dân chúng gọi trường Cơ Khí Á Châu là trường Bá Nghệ."),
                  Text(
                      "NĂM 1909: Một xưởng cơ khí sườn sắt lợp thiếc được xây cất, hiện nay hãy còn nguyên vẹn và dùng làm xưởng nguội, tiện, máy dụng cụ, cùng kho vật liệu tại góc đường De lattre de Tassigry và đại lộ Hàm Nghi."),
                  Text(
                      "NĂM 1913: Nhà trường xây cất thêm tầng dưới dãy nhà bên trái cổng vào để làm văn phòng hiệu trưởng và văn phòng thư ký.")
                ],
              ),
            ),
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
                      children: const[
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
                      height: 40,
                      width: 300,
                      child: const TextField(
                        decoration: InputDecoration(
                            label: Text("Viết bình luận"),
                            labelStyle: TextStyle(
                                fontSize: 20,
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
