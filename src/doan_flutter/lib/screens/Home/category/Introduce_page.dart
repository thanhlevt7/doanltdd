import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class IntroductPage extends StatelessWidget {
  const IntroductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> comment =
        FirebaseFirestore.instance.collection('baiviet').snapshots();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              "assets/images/icons/logoTruong.png",
              width: 50.0,
              height: 50.0,
            ),
            const Text(
              "Trường Cao đẳng Kỹ thuật CAO THẮNG",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color(0xFF1FB841),
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, "/CategoryPage"),
                        child: Image.asset(
                          "assets/images/icons/danhmuc.png",
                          height: 50,
                        ),
                      ),
                    ),
                    const Text(
                      "GIỚI THIỆU",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/Search");
                        },
                        child: const Icon(Icons.search)),
                  ],
                ),
              ),
              SizedBox(
                  height: 450,
                  child: StreamBuilder<QuerySnapshot>(
                      stream: comment,
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return const Text("Something went wrong");
                        }
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Text("Loading ...");
                        }
                        final data = snapshot.requireData;
                        return ListView.builder(
                            itemCount: data.size,
                            itemBuilder: (context, index) {
                              return buildListTile(
                                press: () {
                                  if (index == 0) {
                                    Navigator.pushNamed(
                                        context, "/ArticleDetails2");
                                  }
                                  if (index == 1) {
                                    Navigator.pushNamed(
                                        context, "/ArticleDetails");
                                  }
                                  if (index == 3) {
                                    Navigator.pushNamed(
                                        context, "/ArticleDetails3");
                                  }
                                  if (index == 2) {
                                    Navigator.pushNamed(
                                        context, "/ArticleDetails4");
                                  }
                                },
                                img: "${data.docs[index]['image']}",
                                titles: "${data.docs[index]['title']}",
                                datevaview: "${data.docs[index]['dataview']}",
                                sup: "${data.docs[index]['content']}",
                              );
                            });
                      })),
            ]),
      ),
    );
  }
}
