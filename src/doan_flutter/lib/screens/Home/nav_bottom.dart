
import 'package:doan_flutter/screens/Home/User/user_page.dart';
import 'package:doan_flutter/screens/Home/category/category_page.dart';
import 'package:doan_flutter/screens/Home/home_page.dart';
import 'package:doan_flutter/screens/Home/notification_page.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int index = 0;
  final _screens = [
    const HomePage(),
    const CategoryPage(),
    const NotificationPage(),
    const UserPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[index],
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
