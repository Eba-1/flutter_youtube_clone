class VideoData {

  final String id;
  final String title;
  final String thumbnailUrl;
  final String channelTitle;

  VideoData({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.channelTitle,
  });

  factory VideoData.fromMap(Map<String, dynamic> snippet) {
    return VideoData(
      id: snippet['resourceId']['videoId'],
      title: snippet['title'],
      thumbnailUrl: snippet['thumbnails']['high']['url'],
      channelTitle: snippet['channelTitle'],
    );
  }
}