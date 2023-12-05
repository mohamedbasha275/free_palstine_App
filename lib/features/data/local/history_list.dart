class HistoryModel {
  final String title;
  final String body;
  bool expanded;

  HistoryModel({
    required this.title,
    required this.body,
    this.expanded= false
  });

  factory HistoryModel.fromJson(Map<String, dynamic> json) {
    return HistoryModel(
      title: json['title'],
      body: json['body'],
    );
  }
}

List<HistoryModel> historyList = [
  HistoryModel(title: 'title1', body: 'body1'),
  HistoryModel(title: 'title2', body: 'body2'),
  HistoryModel(title: 'title3', body: 'body3'),
];
