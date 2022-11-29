class CommentData {
  String avatar;
  String name;
  String time;
  String content;
  int type; // 0 data ,  1 loading
  CommentData(
      {required this.avatar,
      required this.name,
      required this.time,
      required this.content,
      required this.type});
}
