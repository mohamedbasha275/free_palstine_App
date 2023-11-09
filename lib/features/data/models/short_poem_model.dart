class ShortPoemModel {
  final int id;
  final String name;
  final String poetName;
  final int poetId;
  final int inFavourite;

  ShortPoemModel({
    required this.id,
    required this.name,
    required this.poetName,
    required this.poetId,
    required this.inFavourite,
  });
  factory ShortPoemModel.fromJson(Map<String, dynamic> json) {
    return ShortPoemModel(
      id: json['id'],
      name: json['name'],
      poetName: json['poet']['name'],
      poetId: json['poet']['id'],
      inFavourite: json['poem_favorit'],
    );
  }
}
