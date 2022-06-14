import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: const Center(
            child: Text("Cá nhân"),
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset(
              "assets/images/icons/avatar.png",
              height: 100,
            ),
          ),
          const Text(
            "Thành Lễ",
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, "/Personal_Information"),
            child: ListTile(
              leading: const Text(
                "Thông tin cá nhân",
                style: TextStyle(fontSize: 25),
              ),
              trailing: Image.asset("assets/images/icons/nutnav.png"),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, "/Setting"),
            child: ListTile(
              leading: const Text("Cài đặt", style: TextStyle(fontSize: 25)),
              trailing: Image.asset("assets/images/icons/nutnav.png"),
            ),
          ),
          InkWell(
            onTap: () => logout(context),
            child: ListTile(
              leading: const Text("Đăng xuất", style: TextStyle(fontSize: 25)),
              trailing: Image.asset("assets/images/icons/nutnav.png"),
            ),
          ),
        ],
      ),
    );
  }

    Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushNamed(context, "/");
  }
}
