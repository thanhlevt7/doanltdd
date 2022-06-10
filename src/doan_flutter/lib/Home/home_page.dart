import 'package:doan_flutter/Home/user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final screens = [
    const HomePage(),
    const Text("Danh mục"),
    const Text("thông báo"),
    const UserPage(),
  ];
  @override
  Widget build(BuildContext context) {
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
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
        child: NavigationBar(
          height: 60,
          backgroundColor: const Color(0xFFf1f5fb),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          destinations: [
            NavigationDestination(
                icon: Image.asset(
                  "assets/images/icons/home.png",
                  height: 30,
                ),
                label: "Trang chủ"),
            NavigationDestination(
                icon:
                    Image.asset("assets/images/icons/danhmuc.png", height: 30),
                label: "Danh mục"),
            NavigationDestination(
                icon: Image.asset("assets/images/icons/notification.png",
                    height: 30),
                label: "Thông báo"),
            NavigationDestination(
                icon: Image.asset("assets/images/icons/user.png", height: 30),
                label: "Cá nhân")
          ],
        ),
      ),
    );
  }
}
