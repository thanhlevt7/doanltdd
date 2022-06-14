import 'package:flutter/material.dart';

class MyActivitiesPage extends StatefulWidget {
  const MyActivitiesPage({ Key? key }) : super(key: key);

  @override
  State<MyActivitiesPage> createState() => _MyActivitiesPageState();
}

class _MyActivitiesPageState extends State<MyActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( foregroundColor: Colors.black,  title: const Text("Hoạt động của tôi")),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, "/NewsWatched"),
              child: ListTile(
                leading:
                    const Text("Tin tức đã xem", style: TextStyle(fontSize: 25)),
                trailing: Image.asset("assets/images/icons/nutnav.png"),
              ),
            ),
            InkWell(
               onTap: () => Navigator.pushNamed(context, "/NewsCommented"),
              child: ListTile(
                leading: const Text("Tin tức đã bình luận",
                    style: TextStyle(fontSize: 25)),
                trailing: Image.asset("assets/images/icons/nutnav.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}