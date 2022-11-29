class VideoData {
  String videoID;
  String authorName;
  String title;
  String imageUrl;
  String idLikeUnlike;

  VideoData({
    required this.videoID,
    required this.authorName,
    required this.title,
    required this.idLikeUnlike,
    this.imageUrl = '',
  });
}
