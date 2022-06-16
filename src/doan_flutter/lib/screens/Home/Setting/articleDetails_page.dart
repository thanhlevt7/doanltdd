import 'package:doan_flutter/widget.dart';
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
            Column(
              children: [
                text(
                    "\n  Năm 1906: Trường Cơ Khí Á Châu được khởi đầu xây cất với một gian nhà lợp thiếc tại góc đường De lattre de Tassigry và đại lộ Hàm Nghi hiện nay. Trong căn nhà lợp thiếc, chỉ có vẻn vẹn một xưởng cơ khí nhỏ, phía Đông nhà trường là kho xưởng hoả xa chạy đường Sài Gòn-Chợ Lớn. Lúc bấy giờ, chợ mới Sài gòn còn là một vũng sình lầy, đại lộ Nguyễn Huệ còn là một con kênh và xóm đường Huỳnh Thúc Kháng hãy còn là một khu rừng sập"
                    "\n  Năm 1907:  Lúc đầu nhà trường chưa được trang bị đầy đủ nên phần thực hành phải nhờ đến cơ xưởng của trường Thực Nghiệp, tại đường Hồng Thập Tự bây giờ.\n  Năm 1908: Giảng đường phía đại lộ De lattre de Tassigry được xây cất thêm: ở trên làm ký túc xá, ở dưới làm lớp học và kho vật liệu, máy móc. Chương trình học gồm có nhiều môn trong kỹ nghệ, nên dân chúng gọi trường Cơ Khí Á Châu là trường Bá Nghệ"
                    "\n  Năm 1909: Một xưởng cơ khí sườn sắt lợp thiếc được xây cất, hiện nay hãy còn nguyên vẹn và dùng làm xưởng nguội, tiện, máy dụng cụ, cùng kho vật liệu tại góc đường De lattre de Tassigry và đại lộ Hàm Nghi.\n  Năm 1913: Nhà trường xây cất thêm tầng dưới dãy nhà bên trái cổng vào để làm văn phòng hiệu trưởng và văn phòng thư ký.\n  Năm 1914: Đại chiến thế giới thứ nhất bùng nổ. Công việc xây cất và trang bị càng tiếp tục không ngừng. Suốt trong thời kỳ chiến tranh ấy, trường Cơ Khí Á Châu sản xuất rất nhiều tạc đạn 75 ly cho quân đội, cùng tuyển mộ và đào tạo một số đông thợ chuyên môn để sang Pháp tùng chinh.\n  Năm 1916: Xây thêm tầng trên dãy nhà từ bồn kiểng đến phòng đọc sách học sinh để làm ký túc xá.Giảng đường của trường .\n  Năm 1917: Dãy nhà trên được nối thêm cho đến xưởng máy. Tầng trên làm phòng ngủ, tầng dưới làm phòng ăn cho học sinh nội trú.\n  Năm 1918: Phía trên văn phòng Hiệu trưởng được cất thêm lầu để làm phòng ngủ và phòng y tế cho học sinh.\n  Năm 1919: Một biệt thự đội được xây dựng tại góc đường Pasteur và Huỳnh Thúc Kháng để làm nhà ở cho ông tổng giám thị và trưởng xưởng công xa.\n  Năm 1922: khu xưởng Hoả xa được dời đi nơi khác. Trường Cơ Khí Á Châu nới rộng vị trí phía Đông đến đường Pasteur hiện giờ.\n  Năm 1924: Nhà trường xây cất thêm dãy lầu có đồng hồ để làm nhà ở cho các giáo chức trên lâu, và nhà để công xa tầng trệt.\n  Năm 1925: Một dãy cơ xưởng được dựng lên tiếp theo, để làm chỗ sửa công xa, xưởng máy, xưởng điện, xưởng gò và rèn. Như thế một dãy 5 xưởng hình thành như ta thấy ngày nay"
                    "\n  Năm 1927: Một dãy nhà 16 căn được xây dựng tại đường Pasteur để làm cư xá cho nhân viên nhà trường.\n  Năm 1931: Một giảng đường lớn được dựng lên, nối liền văn phòng hiện giờ với dãy nhà đã có từ năm 1916.\n  Năm 1936: Một nhà lầu ở phía giữa, tức là ngay liền sau giảng đường nối liền với văn phòng được xây cất với mục đích làm ký túc xá và lớp học cho học sinh Pháp hay lai Phấp.\n  Năm 1939: Thế giới đại chiến thứ 2 nổ bùng.Nhà trường tiếp tục hoạt động, nhưng không xây cất thêm.Ngày 24 thang 10 \n  Năm 1939 ,Ông Rosel, Hiệu trưởng sáng lập trường Cơ Khí Á Châu từ trần lúc tại chức và được ông Albert Simon thay thế, ông Albert Simon là một Đại uý Cơ Khí Hải quân. Để tri Ân người quá cố đã có công tạo lập ra trường Cơ Khí Á Châu, trường này được chính phủ cho mang thêm danh hiệu, “trường Rosel” (Ecole des mecaniciens-Ecole Rosel)\n  Năm 1940: Do đề nghị của ông Hiệu trưởng Albert Simon, trường Rosel đổi lại thành “Trường Kỹ Thuật Chuyên Môn” (Ecole Technique Spéciale).\n  Năm 1941: Ngày 26-12-1941,Trường Kỹ Thuật Chuyên Môn bị quân đội Nhật chiếm đóng cấp tốc và phải tạm dời về Hải quân Công xưởng gọi là Sở Ba Son. Nhà trường chiếm một khu nhà lợp lá gần vàm sông Thị Nghè và bắt đầu hoạt động lại từ 20 –01-1942.Cũng trong năm ấy, ông Albert Simon bị động viên đi Hải Phòng và được ông Yves Germain thay thế. Ông Yves Germain cũng là một Dại uý cơ khí Hải quân.\n  Năm 1944: Dưới sự oanh tạc ráo riết của phi cơ Mỹ, nhà trường phải dọn vào tu viện. Séminaire tại đường Cường Để ngày 10-06-1944 đến 07-02-1945, trong các gian nhà của tu viện.\n  Năm 1945: Ngày 07-02-1945, quân đội Nhật đến chiếm đóng luôn tu viện, nhà trường bị giải tán cho đến ngay đại biến và tổng tản cư.\n  Năm 1946: Sau khi quân Nhật đầu hàng đồng minh và rút lui khỏi Đông Dương, quân Pháp trở lại chiếm cứ Việt Nam và thành lập chính phủ Nam Kỳ. Trường Kỹ Thuật Chuyên Môn lại trở về vị trí cũ, đường Huỳnh Thúc Kháng. ông Yves Germain trở lại làm Hiệu trưởng, lo tu bổ lại các lớp học và cơ xưởng.\n  Năm 1947: Nhà trường bắt đầu hoạt động lại như trước. ông Yves Germain về Pháp và ông Gérard Tabouillot, kỹ sư công nghệ đến thay. Nhà trường đổi tên mới là trường Trung Học Đệ Nhất Cấp")
              ],
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
