import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_flutter/widget.dart';
import 'package:flutter/material.dart';

class NewsWatched extends StatefulWidget {
  const NewsWatched({Key? key}) : super(key: key);

  @override
  State<NewsWatched> createState() => _NewsWatchedState();
}

class _NewsWatchedState extends State<NewsWatched> {
  final Stream<QuerySnapshot> comment =
      FirebaseFirestore.instance.collection('baiviet').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.black, title: const Text("Tin tức đã xem")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Tin đã xem",
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
        ],
      ),
    );
  }
}
