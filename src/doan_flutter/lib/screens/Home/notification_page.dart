import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final Stream<QuerySnapshot> comment =
      FirebaseFirestore.instance.collection('baiviet').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text("Thông báo")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Tin tức :",
                style: TextStyle(fontSize: 25, color: Colors.red)),
          ),
          SizedBox(
              height: 500,
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
                          return buildListTile(
                            press: () {
                              if (index == 0) {
                                Navigator.pushNamed(
                                    context, "/ArticleDetails2");
                              }
                              if (index == 1) {
                                Navigator.pushNamed(context, "/ArticleDetails");
                              }
                               if (index == 3) {
                                Navigator.pushNamed(context, "/ArticleDetails3");
                              }
                               if (index == 2) {
                                Navigator.pushNamed(context, "/ArticleDetails4");
                              }
                            },
                            img: "${data.docs[index]['image']}",
                            titles: "${data.docs[index]['title']}",
                            datevaview: "${data.docs[index]['dataview']}",
                            sup: "${data.docs[index]['content']}",
                          );
                        });
                  })),
                  
        ],
      ),
    );
  }
  
}
