class NewsModel {
  final String author;
  final String title;
  final String description;
  final String url;
  final String image;
  final String publishedAt;

  NewsModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.image,
    required this.publishedAt,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      image: json['urlToImage'],
      publishedAt: json['publishedAt'],
    );
  }
//
// Map<String, dynamic> toJson() {
//   return {
//     'id': id,
//     'name': name,
//     'poet': poet,
//     'versesNumber': versesNumber,
//   };
// }
}
