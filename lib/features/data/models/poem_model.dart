class PoemModel {
  final int id;
  final String name;
  final String poet;
  final int versesNumber;
  final List<String> lines;
  final List<String> readLines;
  final bool bayed;
  final int poemMark;
  final List<int> savedLines;
  final List<String> wordsList;
  final List<String> wordsMean;

  PoemModel({
    required this.id,
    required this.name,
    required this.poet,
    required this.versesNumber,
    required this.lines,
    required this.bayed,
    required this.readLines,
    required this.poemMark,
    required this.savedLines,
    required this.wordsList,
    required this.wordsMean,
  });

  factory PoemModel.fromJson(Map<String, dynamic> json,List<int> savedLines,
      List<String> wordsList,List<String> wordsMean) {
    return PoemModel(
      id: json['id'],
      name: json['name'],
      poet: json['poet']['name'],
      versesNumber: json['poem_count'],
      bayed: false,
      poemMark: (json['poem_break'] != null)? json['poem_break']['line']: 0,
      lines: (json['poem_without_punctuations'] as List<dynamic>).map((item) => item.toString()).toList(),
      readLines: (json['poem'] as List<dynamic>).map((item) => item.toString()).toList(),
      //savedLines: (json['poem_saved'] as List<dynamic>).map((item) => int.parse(item)).toList(),
      savedLines: savedLines,
      wordsList: wordsList,
      wordsMean: wordsMean,
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
