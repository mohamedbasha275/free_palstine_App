class PoetModel {
  final int id;
  final String name;

  PoetModel({
    required this.id,
    required this.name,
  });

  factory PoetModel.fromJson(Map<String, dynamic> json) {
    return PoetModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
