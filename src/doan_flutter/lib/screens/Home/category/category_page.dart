import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<String> category = [
    'Trang chủ',
    'Giới thiệu',
    'Phòng công tác hs-sv',
    'Phòng đào tạo',
    'Đoàn thanh niên',
    'Trung Tâm',
    'Khoa',
    'Phòng ban'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(child: Text("Danh mục")),
        ),
        body: ListView.builder(
            itemCount: category.length,
            itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text(category[index]),
                    onTap: () {
                      print(category[index]);
                      if (index == 0) {
                        Navigator.pushNamed(context, "/Nav");
                      }
                      if (index == 1) {
                        Navigator.pushNamed(context, "/Introduce");
                      }
                      if (index == 2) {
                        Navigator.pushNamed(context, "/StudentButtonRoom");
                      }
                      if (index == 3) {
                        Navigator.pushNamed(context, "/TrainingRoom");
                      }
                      if (index == 5) {
                        Navigator.pushNamed(context, "/Center");
                      }
                      if (index == 4) {
                        Navigator.pushNamed(context, "/YoungGroup");
                      }
                      if (index == 6) {
                        Navigator.pushNamed(context, "/Khoa");
                      }
                      if (index == 7) {
                        Navigator.pushNamed(context, "/Department");
                      }
                    },
                  ),
                )));
  }
}
