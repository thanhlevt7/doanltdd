import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_flutter/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
   User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }
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
          Text(
            "${loggedInUser.fullname}",
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
