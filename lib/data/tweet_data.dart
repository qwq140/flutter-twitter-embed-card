class TweetData {
  final String profileUrl;
  final String nickname;
  final String username;
  final String contentText;
  final String contentImage;
  final String time;
  final String date;
  final int likeCount;
  final int replyCount;

  TweetData({
    required this.profileUrl,
    required this.nickname,
    required this.username,
    required this.contentText,
    required this.contentImage,
    required this.time,
    required this.date,
    required this.likeCount,
    required this.replyCount,
  });
}
