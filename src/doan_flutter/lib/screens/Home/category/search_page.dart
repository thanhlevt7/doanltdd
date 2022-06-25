import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> list = [
    'Quá trình xây dụng trường',
    'Ngôi trường mang tên vị anh hùng dân tộc',
    'Hồ Chí Minh vị anh hùng dân tộc từng học trường này ',
    'Tôn Đức Thắng, Từ Trường nghề đến cách mạng',
    'Ngành Công Nghệ Thông Tin',
    'Ngành Kỹ Thuật Cơ Khí',
    'Ngành Kỹ Thuật Ô Tô',
    'Ngành Kỹ Thuật Cơ Điện tử',
    'Ngành Quản Trị Mạng Máy Tính',
  ];

  List<String> ima = [
    'quatrinh.png',
    'anhhung.png',
    'HCM_1.png',
    'TDT.png',
    'ct.png',
    'ct.png',
    'ct.png',
    'ct.png',
    'ct.png'
  ];
  List<String>? listSearch;
  final FocusNode _textFocusNode = FocusNode();
  final TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue.shade300,
            title: Container(
              decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: _textEditingController,
                focusNode: _textFocusNode,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Search here',
                    contentPadding: EdgeInsets.all(8)),
                onChanged: (value) {
                  setState(() {
                    listSearch = list
                        .where((element) => element.contains(value))
                        .toList();
                    if (_textEditingController!.text.isNotEmpty &&
                        listSearch!.isEmpty) {
                      print('listSearch length ${listSearch!.length}');
                    }
                  });
                },
              ),
            )),
        body: _textEditingController!.text.isNotEmpty && listSearch!.isEmpty
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search_off,
                          size: 160,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Không tìm thấy kết quả,\nVui lòng thử lại với từ khóa khác',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : ListView.builder(
                itemCount: _textEditingController!.text.isNotEmpty
                    ? listSearch!.length
                    : list.length,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        print(listSearch![index]);
                        if (listSearch![index] == "Quá trình xây dụng trường") {
                          Navigator.pushNamed(context, "/ArticleDetails");
                        }
                        if (listSearch![index] ==
                            "Ngôi trường mang tên vị anh hùng dân tộc") {
                          Navigator.pushNamed(context, "/ArticleDetails2");
                        }

                        if (listSearch![index].contains("Tôn Đức Thắng")) {
                          Navigator.pushNamed(context, "/ArticleDetails4");
                        }
                        if (listSearch![index].contains("Hồ Chí Minh") &&
                            index == 0) {
                          Navigator.pushNamed(context, "/ArticleDetails3");
                        }
                        if (listSearch![index].contains("Thông Tin")) {
                          Navigator.pushNamed(context, "/CnttPage");
                        }
                        if (listSearch![index].contains("Cơ Khí")) {
                          Navigator.pushNamed(context, "/CokhiPage");
                        }
                        if (listSearch![index].contains("Ô Tô")) {
                          Navigator.pushNamed(context, "/OtoPage");
                        }
                        if (listSearch![index].contains("Cơ Điện tử")) {
                          Navigator.pushNamed(context, "/CodientuPag");
                        }
                        if (listSearch![index].contains("Mạng Máy Tính")) {
                          Navigator.pushNamed(context, "/MmtPage");
                        }
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/icons/${ima[index]}",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            _textEditingController!.text.isNotEmpty
                                ? listSearch![index]
                                : list[index],
                          ),
                        ],
                      ),
                    ),
                  );
                }));
  }
}
