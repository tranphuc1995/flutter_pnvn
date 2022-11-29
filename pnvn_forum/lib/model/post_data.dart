class PostData {
  String id;
  String categoryName;
  String userName;
  String time;
  String title;
  String shortDescription;
  String description;
  String image;
  String view;
  String comment;
  String avatarUser;
  PostData(
      {required this.categoryName,
      required this.id,
      required this.userName,
      required this.time,
      required this.title,
      required this.description,
      required this.shortDescription,
      required this.image,
      required this.view,
      required this.comment,
      required this.avatarUser});
}
