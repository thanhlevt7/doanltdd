import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( foregroundColor: Colors.black,title: const Text("Cài đặt")),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            InkWell(
              
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, "/ChangePassword"),
                child: ListTile(
                  leading:
                      const Text("Đổi mật khẩu", style: TextStyle(fontSize: 25)),
                  trailing: Image.asset("assets/images/icons/nutnav.png"),
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, "/MyActivities"),
              child: ListTile(
                leading: const Text("Hoạt động của tôi",
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
