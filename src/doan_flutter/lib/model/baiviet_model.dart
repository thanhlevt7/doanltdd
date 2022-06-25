class BaivietModel {
  String? bid;
  String? title;
  String? image;
  String? dataview;
  String? content;

  BaivietModel({
    this.bid,
    this.title,
    this.image,
    this.dataview,
    this.content,
  });

  factory BaivietModel.fromMap(map) {
    return BaivietModel(
      bid: map['bid'],
      title: map['title'],
      image: map['image'],
      dataview: map['dataview'],
      content: map['content'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'bid': bid,
      'title': title,
      'image': image,
      'dataview': dataview,
      'content': content,
    };
  }
}
