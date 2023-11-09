class FavouriteModel {
  final int id;
  final int poemId;
  final String poemName;
  final String poet;

  FavouriteModel({
    required this.id,
    required this.poemId,
    required this.poemName,
    required this.poet,
  });
  factory FavouriteModel.fromJson(Map<String, dynamic> json) {
    return FavouriteModel(
      id: json['id'],
      poemName: json['poem']['name'],
      poemId: json['poem']['id'],
      poet: json['poem']['poet'],
    );
  }
}
