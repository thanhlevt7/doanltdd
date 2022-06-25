import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_flutter/model/user_model.dart';
import 'package:doan_flutter/widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ArticleDetails3 extends StatefulWidget {
  const ArticleDetails3({Key? key}) : super(key: key);

  @override
  State<ArticleDetails3> createState() => _ArticleDetails3State();
}

class _ArticleDetails3State extends State<ArticleDetails3> {
  final Stream<QuerySnapshot> comment =
      FirebaseFirestore.instance.collection('comments_3').snapshots();
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
                "assets/images/icons/HCM_1.png",
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "Hồ Chí Minh Vị Anh Hùng Dân Tộc Từng Học Ở Ngôi Trường Này",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text("Ngày tạo: 09/10/2011 | Lượt xem: 9710",
                    style: TextStyle(
                        fontSize: 14, color: Colors.black.withOpacity(0.5))),
              ),
              const SizedBox(
                height: 10,
              ),
              text(
                  "     Sài Gòn mới mở một trường dạy nghề ba năm chuyên đào tạo công nhân hàng hải và công nhân cơ khí cho xưởng Ba Son. Trường chật hẹp, trên đầu các thợ học việc chằng chịt những dây cua-roa. Anh Nguyễn Tất Thành xin vào học ở trường này. Anh muốn  trở thành một công nhân đứng máy. Người thanh niên ấy mang đến Sài Gòn bầu nhiệt huyết và cái mới trong cách nghĩ và cách sống… \n    Tiếng gọi của lý tưởng không cho anh Thành học hết ba năm ở trường dạy nghề. Mới học ba tháng, anh mới học 3 tháng, ...."),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("Trích “Thời niên thiếu của Bác Hồ - 1976”   "),
                ],
              ),
              text(
                  "     Nhưng sang pháp đâu phải chuyện cứ muốn là được. Trước tiên phải vào Sài Gòn đã. Anh vào Sài Gòn, xin vào Trường Bá Nghệ cũng gọi là Trường Máy ở giữa chợ Mới và chợ Cũ, gần chùa Chà. Trường này đào tạo nhân viên hàng hải và công nhân chuyên nghiệp cho xưởng Ba Son. Học ở đây vừa khỏi bị nghi ngờ, vừa có cơm ăn, lại vừa biết ít nhiều về máy móc… Lệ thường là phải học ba năm mới thành nghề. Nhưng Anh Thành không định học cho đến lúc thành nghề. Chừng ba tháng sau, tìm được một chân phụ bếp trên chiếc tàu đô đốc Latouche Tréville của hãng Vận tải hợp nhất; thế là anh lẳng lặng ra đi."),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("Trích “Quê hương và Thời niên thiếu - 2001”   "),
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
                          Navigator.pushNamed(context, "/ArticleDetails3");
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
        FirebaseFirestore.instance.collection("comments_3").doc();
    final map = {
      'cid': docComment.id,
      'content': content,
      'uid': '${loggedInUser.fullname}'
    };
    await docComment.set(map);
  }
}
