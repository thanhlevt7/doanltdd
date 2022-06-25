class CommentModel {
  String? cid;
  String? uid;
  String? content;

  CommentModel({
    this.cid,
    this.uid,
    this.content,
  });

  factory CommentModel.fromMap(map) {
    return CommentModel(
      cid: map['cid'],
      uid: map['uid'],
      content: map['content'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'cid': cid,
      'uid':uid,
      'content': content,
    };
  }
}
