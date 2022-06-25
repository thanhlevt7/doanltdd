import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_flutter/model/user_model.dart';
import 'package:doan_flutter/widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ArticleDetails4 extends StatefulWidget {
  const ArticleDetails4({Key? key}) : super(key: key);

  @override
  State<ArticleDetails4> createState() => _ArticleDetails4State();
}

class _ArticleDetails4State extends State<ArticleDetails4> {
  final Stream<QuerySnapshot> comment =
      FirebaseFirestore.instance.collection('comments_4').snapshots();
  UserModel users = UserModel();
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  final data = FirebaseFirestore.instance;
  @override
  void initState() {
    super.initState();
    data.collection("users").doc(user!.uid).get().then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  final textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void dispore() {
    super.dispose();
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/icons/TDT.png",
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Tôn Đức Thắng, Từ Trường nghề đến đường Cách mạng",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text("Ngày: 02-07-2011 | Lượt xem: 10394",
                    style: TextStyle(
                        fontSize: 14, color: Colors.black.withOpacity(0.5))),
              ),
              const SizedBox(
                height: 10,
              ),
              text(
                  "     Quê Bác Tôn ở xã Mỹ Hòa Hưng, tỉnh Long Xuyên (nay thuộc tỉnh An Giang). Lúc Bác ra đời, thực dân Pháp đã đặt ách thống trị lên toàn cõi Việt Nam, những nhà yêu nước như Trương Định, Nguyễn Trung Trực, Thủ Khoa Huân…đã lãnh đạo nhân dân Nam bộ khởi nghĩa chống thực dân Pháp."),
              text(
                  "       Vì nhà nghèo, người thanh niên Tôn Đức Thắng phải sớm rời gia đình tìm kế sinh sống ở Sài Gòn, vừa làm thuê, vừa đi học. Tuy chỉ là người thợ học việc. Bác Tôn đã tham gia vận động học sinh lính thủy bỏ học (1909), công nhân Sở Kiến trúc Cầu đường và nhà ở Sài Gòn, chống bọn chủ cái cúp phạt, đánh đập vô lý và đòi tăng lương (1910). Sau đó anh vào họctrường Cơ khí Á Châu (Ecole des Mécaniciens asiatiques de Saigon), trường còn được gọi là trường Bá Nghệ có 3 ngành: nguội, mộc, đúc nhỏ, đào tạo công nhân kỹ thuật người bản xứ cho Hải quân Pháp. Sau khi tốt nghiệp, Bác Tôn vào làm việc tại xưởng Arsenal de Saigon (Xưởng Ba Son). Bác Tôn tham gia lãnh đạo cuộc bãi công của công nhân Ba Son và vận động học sinh trường Cơ khí Á Châu bãi khóa chống chế độ làm việc khắc nghiệt: 10 giờ một ngày, không được trợ cấp bồi dưỡng, làm hỏng sản phẩm thì phải bồi thường… nhằm tạo ra nhiều sản phẩm chuẩn bị cho chiến tranh."),
              text(
                  "      Thực dân Pháp tìm mọi biện pháp dập tắt phong trào và bắt người lãnh đạo đấu tranh, trong đó có người thanh niên yêu nước Tôn Đức Thắng. Anh buộc phải cải trang và đổi tên họ, trốn tránh trên chiếc tàu La Cóoc từ Sài Gòn đến nước Pháp. Ở Pháp. Bác Tôn vào làm thợ máy tại xưởng Arsenal de Toulon-quân cảng miền Nam nước Pháp khi thế chiến tranh thế giới lần thứ nhất (1914-1918) bùng nổ. Là người thợ máy giỏi, ngày 9/10/1916 Bác Tôn nhận lệnh xuống phục vụ tại chiến hạm France và là người Việt Nam duy nhất trên chiến hạm đó. Đến ngày 16/4/1919, mặc dù chiến tranh thế giới đã kết thúc, chính phủ Pháp điều động một hạm đội gồm 5 chiến hạm tiến vào Hắc Hải bắn phá cảng Xêvattôpôn chống lại nước Nga Xô Viết trẻ tuổi. Ngày 20/4/1919, người thợ máy Tôn Đức Thắng đã cùng các binh lính Pháp quyết định phản chiến, kéo cờ đỏ trên chiến hạm France và chiến hạm Jean Bart."),
              text(
                  "      Sau sự kiện 1919, Bác Tôn làm thợ máy cho hảng xe hơi Renault, gia nhập Tổng Công hội Pháp và tiếp tục đứng trong hàng ngũ công nhân, tích cực tham gia xây dựng phong trào yêu nước của Việt kiều tại Pháp. Năm 1920, Bác Tôn về Sài Gòn cùng vài người bạn công nhân mở xưởng sửa chữa ô tô để giúp công việc làm ăn cho những người thợ chưa có việc làm, tạo cơ hội gầy dựng nhiều cơ sở Công hội bí mật tại Sài Gòn - Chợ Lớn. Đáng chú ý là cuộc bãi công  của công nhân Ba Son  tháng 8/1925, nhằm làm chậm trễ việc sửa chữa chiến hạm Michelet mà đế quốc Pháp định đưa sang đàn áp phong trào cách mạng của nhân dân Trung quốc. Năm 1925, người thợ máy Tôn Đức thắng là một trong những người đầu tiên gia nhập 'Việt Nam Thanh niên Cách mạng Đồng chí Hội' do lãnh tụ Hồ Chí Minh tổ chức."),
              text(
                  "         Cuối năm 1929, Bác Tôn bị thực dân Pháp bắt giam và bị kết án 20 năm tù khổ sai và bị đày ra Côn Đảo. Bác Tôn bị ghi trong hồ sơ:'Phần tử nguy hiểm', với số tù 5289.20 T.F (Lao dịch khổ sai) bị giam ở khám 9, banh I. Bác Tôn đã phải chịu đủ các cực hình nhưng Bác Tôn vẫn kiên trì đấu tranh, giữ vững khí tiết, 'biến nhà tù thành trường học cách mạng'."),
              text(
                  "       Cách mạnhg tháng Tám thành công, chính quyền cách mạng đưa tàu ra đón Bác về với với đồng chí, đồng bào.Năm 1946, Bác Tôn cùng với các đồng chí khác lãnh đạo cuộc kháng chiến ở Nam bộ. Giữa năm 1946, Bác Tôn được Trung ương Đảng và Chính phủ điều ra miền Bắc. từ đó Bác luôn luôn làm việc cạnh Bác Hồ, đảm nhận nhiều nhiệm vụ quan trọng."),
              text(
                  "           Năm 1951, Bác Tôn là Ủy viên Ban chấp hành Trung ương Đảng Lao động Việt Nam. Năm 1958, nhân dịp Bác Tôn 70 tuổi, Bác Hồ thay mặt Chính phủ và nhân dân ta trao tặng Bác Tôn Huân chương Sao Vàng, huân chương cao quí nhất của nước ta. Sau khi Chủ tịch Hồ Chí Minh qua đời (tháng 9/1969), tại kỳ họp thứ 5, Quốc hội khóa II, họp tại Hà Nội ngày 23/9/1969, Bác Tôn được  bầu làm Chủ tịch nước Việt Nam Dân Chủ Cộng Hoà."),
              text("      Chủ tịch Tôn Đức Thắng mất ngày 30/03/1980."),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("Hoàng Nguyễn    "),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("(Theo 'Chủ tịch Tôn Đức Thắng-một nhân cách lớn') "),
                ],
              ),
              Container(
                height: 2,
                color: const Color(0xffc4c4c4),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Bình luận :",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 100,
                child: StreamBuilder<QuerySnapshot>(
                  stream: comment,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return const Text("Something went wrong");
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Text("Loading ...");
                    }
                    final data = snapshot.requireData;
                    return ListView.builder(
                        itemCount: data.size,
                        itemBuilder: (context, index) {
                          return Padding(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${data.docs[index]['uid']}",
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "${data.docs[index]['content']}",
                                        style: const TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
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
                        child: TextFormField(
                          controller: textController,
                          decoration: const InputDecoration(
                              labelText: "Viết bình luận",
                              labelStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red)),
                          validator: (value) {
                            if (textController.text.length < 5) {
                              return "Tối thiểu 5 ký tự";
                            }
                            return null;
                          },
                        )),
                    InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          createComment(content: textController.text);
                          Fluttertoast.showToast(msg: "successful");
                          Navigator.pushNamed(context, "/ArticleDetails4");
                        }
                      },
                      child: Image.asset(
                        "assets/images/icons/send.png",
                        height: 30,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future createComment({required String content}) async {
    final docComment =
        FirebaseFirestore.instance.collection("comments_4").doc();
    final map = {
      'cid': docComment.id,
      'content': content,
      'uid': '${loggedInUser.fullname}'
    };
    await docComment.set(map);
  }
}
