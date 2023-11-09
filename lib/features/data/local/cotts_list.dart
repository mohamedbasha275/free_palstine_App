class CottModel {
  final String name;

  CottModel({
    required this.name,
  });

  factory CottModel.fromJson(Map<String, dynamic> json) {
    return CottModel(
      name: json['name'],
    );
  }
}

List<CottModel> cottsList = [
  CottModel(name: 'فانتا'),
  CottModel(name: 'بيبسي'),
  CottModel(name: 'اكوافينا'),
  CottModel(name: 'سيبرايت'),
  CottModel(name: 'كنتاكي'),
  CottModel(name: 'ماك'),
  CottModel(name: 'ابل'),
  CottModel(name: 'nesta'),
  CottModel(name: 'mac'),
  CottModel(name: 'apple'),
  CottModel(name: 'moka'),
];
